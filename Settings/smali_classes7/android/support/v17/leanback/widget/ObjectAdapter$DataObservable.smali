.class final Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;
.super Landroid/database/Observable;
.source "ObjectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ObjectAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DataObservable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    .line 102
    return-void
.end method


# virtual methods
.method hasObserver()Z
    .locals 1

    .line 141
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyChanged()V
    .locals 2

    .line 105
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 106
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onChanged()V

    .line 105
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemMoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "toPosition"    # I

    .line 135
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 136
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemMoved(II)V

    .line 135
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 111
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 112
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeChanged(II)V

    .line 111
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 114
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeChanged(IILjava/lang/Object;)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 118
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 117
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeInserted(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 123
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 124
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeInserted(II)V

    .line 123
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public notifyItemRangeRemoved(II)V
    .locals 2
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 129
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 130
    iget-object v1, p0, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;

    invoke-virtual {v1, p1, p2}, Landroid/support/v17/leanback/widget/ObjectAdapter$DataObserver;->onItemRangeRemoved(II)V

    .line 129
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 132
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
