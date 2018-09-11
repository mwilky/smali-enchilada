.class public Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "DetailsOverviewLogoPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method public isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    .param p2, "row"    # Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 125
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 137
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/DetailsOverviewRow;

    .line 138
    .local v0, "row":Landroid/support/v17/leanback/widget/DetailsOverviewRow;
    iget-object v1, p1, Landroid/support/v17/leanback/widget/Presenter$ViewHolder;->view:Landroid/view/View;

    check-cast v1, Landroid/widget/ImageView;

    .line 139
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 140
    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-virtual {p0, v2, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->isBoundToImage(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/DetailsOverviewRow;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 141
    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    .line 142
    .local v2, "vh":Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->isSizeFromDrawableIntrinsic()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 144
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 145
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/DetailsOverviewRow;->getImageDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 146
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v4

    if-lez v4, :cond_3

    .line 147
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 148
    .local v4, "maxScaleWidth":F
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v5

    if-lez v5, :cond_1

    .line 149
    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 150
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    div-float v4, v5, v6

    .line 153
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 154
    .local v5, "maxScaleHeight":F
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v6

    if-lez v6, :cond_2

    .line 155
    iget v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 156
    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    div-float v5, v6, v7

    .line 159
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 160
    .local v6, "scale":F
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    iget v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v7, v7

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 163
    .end local v4    # "maxScaleWidth":F
    .end local v5    # "maxScaleHeight":F
    .end local v6    # "scale":F
    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v3, v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    iget-object v4, v2, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;->notifyOnBindLogo(Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;)V

    .line 167
    .end local v2    # "vh":Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    :cond_5
    return-void
.end method

.method public onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 88
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_fullwidth_details_overview_logo:I

    .line 89
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 95
    .local v0, "view":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    .local v1, "vh":Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 97
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->setSizeFromDrawableIntrinsic(Z)V

    .line 99
    return-object v1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 171
    return-void
.end method

.method public setContext(Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;
    .param p2, "parentViewHolder"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;
    .param p3, "parentPresenter"    # Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    .line 112
    iput-object p2, p1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentViewHolder:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter$ViewHolder;

    .line 113
    iput-object p3, p1, Landroid/support/v17/leanback/widget/DetailsOverviewLogoPresenter$ViewHolder;->mParentPresenter:Landroid/support/v17/leanback/widget/FullWidthDetailsOverviewRowPresenter;

    .line 114
    return-void
.end method
