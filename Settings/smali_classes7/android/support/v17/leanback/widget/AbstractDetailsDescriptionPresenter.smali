.class public abstract Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;
.super Landroid/support/v17/leanback/widget/Presenter;
.source "AbstractDetailsDescriptionPresenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Presenter;-><init>()V

    .line 40
    return-void
.end method

.method private setTopMargin(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "topMargin"    # I

    .line 238
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 239
    .local v0, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 240
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    return-void
.end method


# virtual methods
.method protected abstract onBindDescription(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V
.end method

.method public final onBindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;)V
    .locals 8
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .param p2, "item"    # Ljava/lang/Object;

    .line 161
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    .line 162
    .local v0, "vh":Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    invoke-virtual {p0, v0, p2}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->onBindDescription(Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;Ljava/lang/Object;)V

    .line 164
    const/4 v1, 0x1

    .line 165
    .local v1, "hasTitle":Z
    iget-object v2, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    const/4 v1, 0x0

    goto :goto_0

    .line 169
    :cond_0
    iget-object v2, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v2, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleLineSpacing:I

    iget-object v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 171
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    .line 170
    invoke-virtual {v2, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 172
    iget-object v2, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMaxLines:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 174
    :goto_0
    iget-object v2, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleMargin:I

    invoke-direct {p0, v2, v5}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    .line 176
    const/4 v2, 0x1

    .line 177
    .local v2, "hasSubtitle":Z
    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 178
    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    const/4 v2, 0x0

    goto :goto_1

    .line 181
    :cond_1
    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    if-eqz v1, :cond_2

    .line 183
    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    iget v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    iget-object v7, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v6, v7

    iget-object v7, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v6, v7

    invoke-direct {p0, v5, v6}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_1

    .line 186
    :cond_2
    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    invoke-direct {p0, v5, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    .line 190
    :goto_1
    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 191
    iget-object v4, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 193
    :cond_3
    iget-object v3, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    iget-object v3, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyLineSpacing:I

    iget-object v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    .line 195
    invoke-virtual {v6}, Landroid/widget/TextView;->getLineSpacingExtra()F

    move-result v6

    add-float/2addr v5, v6

    iget-object v6, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLineSpacingMultiplier()F

    move-result v6

    .line 194
    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 197
    if-eqz v2, :cond_4

    .line 198
    iget-object v3, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget v4, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderSubtitleBaselineMargin:I

    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mSubtitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 200
    :cond_4
    if-eqz v1, :cond_5

    .line 201
    iget-object v3, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    iget v4, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mUnderTitleBaselineMargin:I

    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBodyFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    add-int/2addr v4, v5

    iget-object v5, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mTitleFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    goto :goto_2

    .line 204
    :cond_5
    iget-object v3, v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->mBody:Landroid/widget/TextView;

    invoke-direct {p0, v3, v4}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->setTopMargin(Landroid/widget/TextView;I)V

    .line 207
    :goto_2
    return-void
.end method

.method public final onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_details_description:I

    .line 155
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, "v":Landroid/view/View;
    new-instance v1, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    invoke-direct {v1, v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/Presenter$ViewHolder;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter;->onCreateViewHolder(Landroid/view/ViewGroup;)Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onUnbindViewHolder(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 0
    .param p1, "viewHolder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 219
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 225
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    .line 226
    .local v0, "vh":Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->addPreDrawListener()V

    .line 227
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 228
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    .line 232
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;

    .line 233
    .local v0, "vh":Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/AbstractDetailsDescriptionPresenter$ViewHolder;->removePreDrawListener()V

    .line 234
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Presenter;->onViewDetachedFromWindow(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;)V

    .line 235
    return-void
.end method
