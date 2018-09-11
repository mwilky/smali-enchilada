.class public Landroid/support/v17/leanback/app/BrandedSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "BrandedSupportFragment.java"


# static fields
.field private static final TITLE_SHOW:Ljava/lang/String; = "titleShow"


# instance fields
.field private mBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

.field private mSearchAffordanceColorSet:Z

.field private mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

.field private mShowingTitle:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

.field private mTitleView:Landroid/view/View;

.field private mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    return-void
.end method


# virtual methods
.method public getBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 215
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSearchAffordanceColor()I
    .locals 1

    .line 299
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    iget v0, v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;->color:I

    return v0
.end method

.method public getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;
    .locals 2

    .line 276
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->getSearchAffordanceColors()Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    move-result-object v0

    return-object v0

    .line 280
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment views not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 235
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method getTitleHelper()Landroid/support/v17/leanback/widget/TitleHelper;
    .locals 1

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    return-object v0
.end method

.method public getTitleView()Landroid/view/View;
    .locals 1

    .line 124
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;
    .locals 1

    .line 132
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    return-object v0
.end method

.method public installTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 85
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 86
    .local v0, "titleLayoutRoot":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    sget v1, Landroid/support/v17/leanback/R$id;->browse_title_group:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setTitleView(Landroid/view/View;)V

    goto :goto_0

    .line 90
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setTitleView(Landroid/view/View;)V

    .line 92
    :goto_0
    return-void
.end method

.method public final isShowingTitle()Z
    .locals 1

    .line 333
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    return v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    .line 164
    return-void
.end method

.method public onInflateTitleView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 68
    .local v0, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$attr;->browseTitleViewLayout:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 70
    .local v1, "found":Z
    if-eqz v1, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/v17/leanback/R$layout;->lb_browse_title:I

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onPause()V
    .locals 2

    .line 313
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 316
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 317
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 321
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 322
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    const-string v0, "titleShow"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 146
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 304
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 305
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 306
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    .line 307
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setAnimationEnabled(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 150
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 151
    if-eqz p2, :cond_0

    .line 152
    const-string v0, "titleShow"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    .line 154
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Landroid/support/v17/leanback/widget/TitleHelper;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    .line 158
    :cond_1
    return-void
.end method

.method public setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 203
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 204
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :cond_0
    return-void
.end method

.method public setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .line 251
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    .line 252
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 255
    :cond_0
    return-void
.end method

.method public setSearchAffordanceColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 292
    new-instance v0, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-direct {v0, p1}, Landroid/support/v17/leanback/widget/SearchOrbView$Colors;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 293
    return-void
.end method

.method public setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V
    .locals 2
    .param p1, "colors"    # Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 264
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    .line 265
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    .line 266
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 269
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 224
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    .line 225
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 228
    :cond_0
    return-void
.end method

.method public setTitleView(Landroid/view/View;)V
    .locals 3
    .param p1, "titleView"    # Landroid/view/View;

    .line 99
    iput-object p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 102
    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    goto :goto_0

    .line 104
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    check-cast v0, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/TitleViewAdapter$Provider;->getTitleViewAdapter()Landroid/support/v17/leanback/widget/TitleViewAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setTitle(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setBadgeDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColorSet:Z

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mSearchAffordanceColors:Landroid/support/v17/leanback/widget/SearchOrbView$Colors;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->setSearchAffordanceColors(Landroid/support/v17/leanback/widget/SearchOrbView$Colors;)V

    .line 110
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 111
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mExternalOnSearchClickedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->setOnSearchClickedListener(Landroid/view/View$OnClickListener;)V

    .line 113
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 114
    new-instance v0, Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleView:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Landroid/support/v17/leanback/widget/TitleHelper;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    .line 117
    :cond_3
    :goto_0
    return-void
.end method

.method public showTitle(I)V
    .locals 1
    .param p1, "flags"    # I

    .line 190
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleViewAdapter:Landroid/support/v17/leanback/widget/TitleViewAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleViewAdapter;->updateComponentsVisibility(I)V

    .line 193
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BrandedSupportFragment;->showTitle(Z)V

    .line 194
    return-void
.end method

.method public showTitle(Z)V
    .locals 1
    .param p1, "show"    # Z

    .line 172
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    if-ne p1, v0, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mShowingTitle:Z

    .line 176
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    if-eqz v0, :cond_1

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/app/BrandedSupportFragment;->mTitleHelper:Landroid/support/v17/leanback/widget/TitleHelper;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/TitleHelper;->showTitle(Z)V

    .line 179
    :cond_1
    return-void
.end method
