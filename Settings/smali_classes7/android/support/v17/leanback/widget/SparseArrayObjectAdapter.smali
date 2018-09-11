.class public Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
.super Landroid/support/v17/leanback/widget/ObjectAdapter;
.source "SparseArrayObjectAdapter.java"


# instance fields
.field private mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>()V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/Presenter;)V
    .locals 1
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/Presenter;

    .line 24
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/Presenter;)V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V
    .locals 1
    .param p1, "presenterSelector"    # Landroid/support/v17/leanback/widget/PresenterSelector;

    .line 17
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/ObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    .line 11
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    .line 18
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 112
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 113
    .local v0, "itemCount":I
    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 117
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    .line 118
    return-void
.end method

.method public clear(I)V
    .locals 2
    .param p1, "key"    # I

    .line 101
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 102
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeRemoved(II)V

    .line 106
    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .line 41
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(I)I
    .locals 1
    .param p1, "key"    # I

    .line 61
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isImmediateNotifySupported()Z
    .locals 1

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method public lookup(I)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # I

    .line 124
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyArrayItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeChanged(II)V

    .line 73
    return-void
.end method

.method public set(ILjava/lang/Object;)V
    .locals 3
    .param p1, "key"    # I
    .param p2, "item"    # Ljava/lang/Object;

    .line 82
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 83
    .local v0, "index":I
    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 84
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p2, :cond_1

    .line 85
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 86
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeChanged(II)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 90
    iget-object v2, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 91
    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->notifyItemRangeInserted(II)V

    .line 93
    :cond_1
    :goto_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 36
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method
