.class abstract Landroid/support/v17/leanback/app/BaseRowFragment;
.super Landroid/app/Fragment;
.source "BaseRowFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CURRENT_SELECTED_POSITION:Ljava/lang/String; = "currentSelectedPosition"


# instance fields
.field private mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field final mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

.field private mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

.field private mPendingTransitionPrepare:Z

.field private mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

.field private final mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

.field mSelectedPosition:I

.field mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 49
    new-instance v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;-><init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    .line 53
    new-instance v0, Landroid/support/v17/leanback/app/BaseRowFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/BaseRowFragment$1;-><init>(Landroid/support/v17/leanback/app/BaseRowFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 98
    return-void
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/BaseRowFragment;)Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/BaseRowFragment;

    .line 41
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    return-object v0
.end method


# virtual methods
.method findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 82
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public final getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 199
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public final getBridgeAdapter()Landroid/support/v17/leanback/widget/ItemBridgeAdapter;
    .locals 1

    .line 207
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    return-object v0
.end method

.method getItem(Landroid/support/v17/leanback/widget/Row;I)Ljava/lang/Object;
    .locals 1
    .param p1, "row"    # Landroid/support/v17/leanback/widget/Row;
    .param p2, "position"    # I

    .line 259
    instance-of v0, p1, Landroid/support/v17/leanback/widget/ListRow;

    if-eqz v0, :cond_0

    .line 260
    move-object v0, p1

    check-cast v0, Landroid/support/v17/leanback/widget/ListRow;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ListRow;->getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 262
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method abstract getLayoutResourceId()I
.end method

.method public final getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;
    .locals 1

    .line 180
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    return-object v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 222
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    return v0
.end method

.method public final getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 246
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 72
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->getLayoutResourceId()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BaseRowFragment;->findGridViewFromRoot(Landroid/view/View;)Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 74
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    if-eqz v2, :cond_0

    .line 75
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    .line 76
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->onTransitionPrepare()Z

    .line 78
    :cond_0
    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 156
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->clear()V

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 158
    return-void
.end method

.method onRowSelected(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$ViewHolder;II)V
    .locals 0
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "view"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p3, "position"    # I
    .param p4, "subposition"    # I

    .line 67
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 162
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 163
    const-string v0, "currentSelectedPosition"

    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 164
    return-void
.end method

.method public onTransitionEnd()V
    .locals 3

    .line 286
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    .line 288
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 289
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 290
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    .line 291
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method public onTransitionPrepare()Z
    .locals 3

    .line 267
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 269
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setScrollEnabled(Z)V

    .line 270
    return v1

    .line 272
    :cond_0
    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPendingTransitionPrepare:Z

    .line 273
    return v2
.end method

.method public onTransitionStart()V
    .locals 2

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPruneChild(Z)V

    .line 279
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setLayoutFrozen(Z)V

    .line 280
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setFocusSearchDisabled(Z)V

    .line 282
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

    .line 87
    if-eqz p2, :cond_0

    .line 88
    const-string v0, "currentSelectedPosition"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 90
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAdapterAndSelection()V

    .line 91
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mRowSelectedListener:Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 92
    return-void
.end method

.method public final setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "rowsAdapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 188
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eq v0, p1, :cond_0

    .line 189
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 190
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    .line 192
    :cond_0
    return-void
.end method

.method setAdapterAndSelection()V
    .locals 3

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    if-eq v0, v1, :cond_1

    .line 142
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 145
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ltz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 146
    .local v0, "lateSelection":Z
    :goto_0
    if-eqz v0, :cond_3

    .line 147
    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->startLateSelection()V

    goto :goto_1

    .line 148
    :cond_3
    iget v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ltz v1, :cond_4

    .line 149
    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    iget v2, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 151
    :cond_4
    :goto_1
    return-void
.end method

.method public setAlignment(I)V
    .locals 3
    .param p1, "windowAlignOffsetTop"    # I

    .line 296
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 299
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 306
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 308
    :cond_0
    return-void
.end method

.method public final setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eq v0, p1, :cond_0

    .line 171
    iput-object p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 172
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->updateAdapter()V

    .line 174
    :cond_0
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 214
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setSelectedPosition(IZ)V

    .line 215
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 229
    iget v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    if-ne v0, p1, :cond_0

    .line 230
    return-void

    .line 232
    :cond_0
    iput p1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mSelectedPosition:I

    .line 233
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mLateSelectionObserver:Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;

    iget-boolean v0, v0, Landroid/support/v17/leanback/app/BaseRowFragment$LateSelectionObserver;->mIsLateSelection:Z

    if-eqz v0, :cond_1

    .line 235
    return-void

    .line 237
    :cond_1
    if-eqz p2, :cond_2

    .line 238
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPositionSmooth(I)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 243
    :cond_3
    :goto_0
    return-void
.end method

.method updateAdapter()V
    .locals 2

    .line 250
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 251
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mBridgeAdapter:Landroid/support/v17/leanback/widget/ItemBridgeAdapter;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mPresenterSelector:Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter;->setPresenter(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 253
    iget-object v0, p0, Landroid/support/v17/leanback/app/BaseRowFragment;->mVerticalGridView:Landroid/support/v17/leanback/widget/VerticalGridView;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BaseRowFragment;->setAdapterAndSelection()V

    .line 256
    :cond_0
    return-void
.end method
