.class public Landroid/support/v17/leanback/widget/TitleView;
.super Landroid/widget/FrameLayout;
.source "TitleView.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;


# instance fields
.field private flags:I

.field private mBadgeView:Landroid/widget/ImageView;

.field private mHasSearchListener:Z

.field private mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

.field private mTextView:Landroid/widget/TextView;

.field private final mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v17/leanback/R$attr;->browseTitleViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/TitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x6

    iput v0, p0, Landroid/support/v17/leanback/widget/TitleView;->flags:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mHasSearchListener:Z

    new-instance v1, Landroid/support/v17/leanback/widget/TitleView$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/TitleView$1;-><init>(Landroid/support/v17/leanback/widget/TitleView;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/TitleView;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$layout;->lb_title_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->title_badge:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    sget v3, Landroid/support/v17/leanback/R$id;->title_text:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    sget v3, Landroid/support/v17/leanback/R$id;->title_orb:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/SearchOrbView;

    iput-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/TitleView;->setClipToPadding(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/TitleView;->setClipChildren(Z)V

    return-void
.end method

.method private updateBadgeVisibility()V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSearchOrbViewVisiblity()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mHasSearchListener:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/TitleView;->flags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    nop

    :cond_0
    move v0, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public enableAnimation(Z)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/SearchOrbView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/SearchOrbView;->enableOrbColorAnimation(Z)V

    return-void
.end method

.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/SearchOrbView;->getOrbColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0
.end method

.method public getSearchAffordanceView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->updateBadgeVisibility()V

    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mHasSearchListener:Z

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOnOrbClickedListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->updateSearchOrbViewVisiblity()V

    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mSearchOrbView:Landroid/support/v17/leanback/widget/SearchOrbView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView;->setOrbColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->updateBadgeVisibility()V

    return-void
.end method

.method public updateComponentsVisibility(I)V
    .locals 2

    iput p1, p0, Landroid/support/v17/leanback/widget/TitleView;->flags:I

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->updateBadgeVisibility()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mBadgeView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/TitleView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/TitleView;->updateSearchOrbViewVisiblity()V

    return-void
.end method
