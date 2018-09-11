.class public Landroid/support/v17/leanback/app/HeadersFragment;
.super Landroid/support/v17/leanback/app/BaseRowFragment;
.source "HeadersFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/HeadersFragment$NoOverlappingFrameLayout;,
        Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;,
        Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

.field static sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field private mBackgroundColor:I

.field private mBackgroundColorSet:Z

.field private mHeadersEnabled:Z

.field private mHeadersGone:Z

.field mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

.field private mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

.field final mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 98
    new-instance v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    const-class v1, Landroid/support/v17/leanback/widget/DividerRow;

    new-instance v2, Landroid/support/v17/leanback/widget/DividerPresenter;

    invoke-direct {v2}, Landroid/support/v17/leanback/widget/DividerPresenter;-><init>()V

    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    const-class v1, Landroid/support/v17/leanback/widget/SectionRow;

    new-instance v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_section_header:I

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(IZ)V

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    const-class v1, Landroid/support/v17/leanback/widget/Row;

    new-instance v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter;

    sget v3, Landroid/support/v17/leanback/R$layout;->lb_header:I

    invoke-direct {v2, v3}, Landroid/support/v17/leanback/widget/RowHeaderPresenter;-><init>(I)V

    .line 102
    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 160
    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$2;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/HeadersFragment$2;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;-><init>()V

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    .line 136
    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/HeadersFragment$1;-><init>(Landroid/support/v17/leanback/app/HeadersFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 234
    new-instance v0, Landroid/support/v17/leanback/app/HeadersFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/HeadersFragment$3;-><init>(Landroid/support/v17/leanback/app/HeadersFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    .line 105
    sget-object v0, Landroid/support/v17/leanback/app/HeadersFragment;->sHeaderPresenter:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 106
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v17/leanback/widget/FocusHighlightHelper;->setupHeaderItemFocusHighlight(Landroid/support/v17/leanback/widget/ItemBridgeAdapter;)V

    .line 107
    return-void
.end method

.method private updateFadingEdgeToBrandColor(I)V
    .locals 5
    .param p1, "backgroundColor"    # I

    .line 264
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->fade_out_edge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 265
    .local v0, "fadingView":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 266
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v2, :cond_0

    .line 267
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 268
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 271
    :cond_0
    return-void
.end method

.method private updateListViewVisibility()V
    .locals 4

    .line 194
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 195
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getView()Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 197
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    if-nez v1, :cond_2

    .line 198
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {v0, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    goto :goto_1

    .line 201
    :cond_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setChildrenVisibility(I)V

    .line 205
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 119
    sget v0, Landroid/support/v17/leanback/R$id;->browse_headers:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method getLayoutResourceId()I
    .locals 1

    .line 171
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_headers_fragment:I

    return v0
.end method

.method public bridge synthetic getSelectedPosition()I
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->getSelectedPosition()I

    move-result v0

    return v0
.end method

.method public isScrolling()Z
    .locals 1

    .line 307
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getScrollState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/support/v17/leanback/app/BaseRowFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic onDestroyView()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onDestroyView()V

    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 125
    iget-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    if-eqz v0, :cond_1

    .line 126
    if-eqz p2, :cond_0

    if-ltz p3, :cond_0

    .line 127
    move-object v0, p2

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 128
    .local v0, "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    .line 129
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v17/leanback/widget/Row;

    .line 128
    invoke-interface {v1, v2, v3}, Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    .line 130
    .end local v0    # "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;->onHeaderSelected(Landroid/support/v17/leanback/widget/RowHeaderPresenter$ViewHolder;Landroid/support/v17/leanback/widget/Row;)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onTransitionEnd()V
    .locals 2

    .line 294
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 296
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 297
    const/high16 v1, 0x40000

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setDescendantFocusability(I)V

    .line 298
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 303
    .end local v0    # "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    :cond_0
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionEnd()V

    .line 304
    return-void
.end method

.method public bridge synthetic onTransitionPrepare()Z
    .locals 1

    .line 58
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    move-result v0

    return v0
.end method

.method public onTransitionStart()V
    .locals 2

    .line 275
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionStart()V

    .line 276
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    if-nez v0, :cond_0

    .line 282
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 283
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-eqz v0, :cond_0

    .line 284
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setDescendantFocusability(I)V

    .line 285
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->requestFocus()Z

    .line 290
    .end local v0    # "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
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

    .line 176
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 178
    .local v0, "listView":Landroid/support/v17/leanback/widget/VerticalGridView;
    if-nez v0, :cond_0

    .line 179
    return-void

    .line 181
    :cond_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColorSet:Z

    if-eqz v1, :cond_1

    .line 182
    iget v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setBackgroundColor(I)V

    .line 183
    iget v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/HeadersFragment;->updateFadingEdgeToBrandColor(I)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 186
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    instance-of v2, v1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 187
    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/HeadersFragment;->updateFadingEdgeToBrandColor(I)V

    .line 190
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateListViewVisibility()V

    .line 191
    return-void
.end method

.method public bridge synthetic setAlignment(I)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAlignment(I)V

    return-void
.end method

.method setBackgroundColor(I)V
    .locals 2
    .param p1, "color"    # I

    .line 254
    iput p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColorSet:Z

    .line 257
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setBackgroundColor(I)V

    .line 259
    iget v0, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mBackgroundColor:I

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateFadingEdgeToBrandColor(I)V

    .line 261
    :cond_0
    return-void
.end method

.method setHeadersEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 208
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersEnabled:Z

    .line 209
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateListViewVisibility()V

    .line 210
    return-void
.end method

.method setHeadersGone(Z)V
    .locals 0
    .param p1, "gone"    # Z

    .line 213
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mHeadersGone:Z

    .line 214
    invoke-direct {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->updateListViewVisibility()V

    .line 215
    return-void
.end method

.method public setOnHeaderClickedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    .line 110
    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderClickedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderClickedListener;

    .line 111
    return-void
.end method

.method public setOnHeaderViewSelectedListener(Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    .line 114
    iput-object p1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mOnHeaderViewSelectedListener:Landroid/support/v17/leanback/app/HeadersFragment$OnHeaderViewSelectedListener;

    .line 115
    return-void
.end method

.method public bridge synthetic setSelectedPosition(I)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(I)V

    return-void
.end method

.method public bridge synthetic setSelectedPosition(IZ)V
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 247
    invoke-super {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    .line 248
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/HeadersFragment;->getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    move-result-object v0

    .line 249
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 250
    iget-object v1, p0, Landroid/support/v17/leanback/app/HeadersFragment;->mWrapper:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setWrapper(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$Wrapper;)V

    .line 251
    return-void
.end method
