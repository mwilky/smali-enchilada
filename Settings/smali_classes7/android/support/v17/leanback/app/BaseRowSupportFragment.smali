.class abstract Landroid/support/v17/leanback/app/BaseRowSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseRowSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;
    }
.end annotation


# static fields
.field private static final CURRENT_SELECTED_POSITION:Ljava/lang/String; = "currentSelectedPosition"


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field private mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

.field private mPendingTransitionPrepare:Z

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private final mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

.field mSelectedPosition:I

.field mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 41
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    .line 44
    new-instance v0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;-><init>(Landroid/support/v17/leanback/app/BaseRowSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    .line 48
    new-instance v0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseRowSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 93
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/BaseRowSupportFragment;)Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/BaseRowSupportFragment;

    .line 36
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    return-object v0
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 77
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public final getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .locals 1

    .line 202
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    return-object v0
.end method

.method getItem(Landroid/support/v17/leanback/widget/Row;I)Ljava/lang/Object;
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/Row;
    .param p2, "position"    # I

    .line 254
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ListRow;

    if-eqz v0, :cond_0

    .line 255
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRow;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 257
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getLayoutResourceId()I
.end method

.method public final getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 175
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 217
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    return v0
.end method

.method public final getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->getLayoutResourceId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 68
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 69
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPendingTransitionPrepare:Z

    if-eqz v2, :cond_0

    .line 70
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPendingTransitionPrepare:Z

    .line 71
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->onTransitionPrepare()Z

    .line 73
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 150
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 151
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->clear()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 153
    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 0
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 62
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 157
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 158
    const-string v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    return-void
.end method

.method public onTransitionEnd()V
    .locals 3

    .line 281
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    .line 283
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 284
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 285
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 3

    .line 262
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 264
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    .line 265
    return v1

    .line 267
    :cond_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPendingTransitionPrepare:Z

    .line 268
    return v2
.end method

.method public onTransitionStart()V
    .locals 2

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 274
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    .line 275
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    .line 277
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 82
    if-eqz p2, :cond_0

    .line 83
    const-string v0, "currentSelectedPosition"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setAdapterAndSelection()V

    .line 86
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 87
    return-void
.end method

.method public final setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "rowsAdapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 183
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, p1, :cond_0

    .line 184
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 185
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    .line 187
    :cond_0
    return-void
.end method

.method setAdapterAndSelection()V
    .locals 3

    .line 130
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    if-eq v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 140
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 141
    .local v0, "lateSelection":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 142
    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->startLateSelection()V

    goto :goto_1

    .line 143
    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    if-ltz v1, :cond_4

    .line 144
    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget v2, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 146
    :cond_4
    :goto_1
    return-void
.end method

.method public setAlignment(I)V
    .locals 3
    .param p1, "windowAlignOffsetTop"    # I

    .line 291
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 294
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 299
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 301
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 303
    :cond_0
    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 165
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eq v0, p1, :cond_0

    .line 166
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 167
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->updateAdapter()V

    .line 169
    :cond_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 209
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setSelectedPosition(IZ)V

    .line 210
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 224
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    if-ne v0, p1, :cond_0

    .line 225
    return-void

    .line 227
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mSelectedPosition:I

    .line 228
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_3

    .line 229
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BaseRowSupportFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz v0, :cond_1

    .line 230
    return-void

    .line 232
    :cond_1
    if-eqz p2, :cond_2

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 238
    :cond_3
    :goto_0
    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 245
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 246
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 248
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowSupportFragment;->setAdapterAndSelection()V

    .line 251
    :cond_0
    return-void
.end method
