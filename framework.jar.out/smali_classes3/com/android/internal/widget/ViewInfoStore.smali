.class Lcom/android/internal/widget/ViewInfoStore;
.super Ljava/lang/Object;
.source "ViewInfoStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ViewInfoStore$InfoRecord;,
        Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field final mLayoutHolderMap:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            "Lcom/android/internal/widget/ViewInfoStore$InfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mOldChangedHolders:Landroid/util/LongSparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    return-void
.end method

.method private popFromLayoutStep(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-eqz v2, :cond_4

    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v3, p2

    if-eqz v3, :cond_4

    iget v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    not-int v3, p2

    and-int/2addr v1, v3

    iput v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    iget-object v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    :goto_0
    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    if-ne p2, v1, :cond_3

    iget-object v1, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    goto :goto_0

    :goto_1
    nop

    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    invoke-static {v2}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V

    :cond_2
    return-object v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must provide flag PRE or POST"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    return-object v1
.end method


# virtual methods
.method addToAppearedInPreLayoutHolders(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    iput-object p2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    return-void
.end method

.method addToDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToOldChangeHolders(JLcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method addToPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method addToPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->obtain()Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object p2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    return-void
.end method

.method getFromOldChangeHolders(J)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method isDisappearing(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isInPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method onDetach()V
    .locals 0

    invoke-static {}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->drainCache()V

    return-void
.end method

.method public onViewDetached(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ViewInfoStore;->removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    return-void
.end method

.method popFromPostLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewInfoStore;->popFromLayoutStep(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method popFromPreLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ViewInfoStore;->popFromLayoutStep(Lcom/android/internal/widget/RecyclerView$ViewHolder;I)Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v0

    return-object v0
.end method

.method process(Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_7

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/RecyclerView$ViewHolder;

    iget-object v2, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/4 v4, 0x3

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->unused(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_0
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    if-nez v3, :cond_1

    invoke-interface {p1, v1}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->unused(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_1
    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_2
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xe

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_3
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    const/16 v4, 0xc

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_4

    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processPersistent(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_4
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processDisappeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_5
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->preInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    iget-object v4, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->postInfo:Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    invoke-interface {p1, v1, v3, v4}, Lcom/android/internal/widget/ViewInfoStore$ProcessCallback;->processAppeared(Lcom/android/internal/widget/RecyclerView$ViewHolder;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Lcom/android/internal/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_1

    :cond_6
    iget v3, v2, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    :goto_1
    invoke-static {v2}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method removeFromDisappearedInLayout(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    and-int/lit8 v1, v1, -0x2

    iput v1, v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->flags:I

    return-void
.end method

.method removeViewHolder(Lcom/android/internal/widget/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ViewInfoStore;->mOldChangedHolders:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->removeAt(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/internal/widget/ViewInfoStore;->mLayoutHolderMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/widget/ViewInfoStore$InfoRecord;->recycle(Lcom/android/internal/widget/ViewInfoStore$InfoRecord;)V

    :cond_2
    return-void
.end method
