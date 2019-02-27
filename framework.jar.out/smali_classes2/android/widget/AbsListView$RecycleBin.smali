.class Landroid/widget/AbsListView$RecycleBin;
.super Ljava/lang/Object;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private mActiveViews:[Landroid/view/View;

.field private mCurrentScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstActivePosition:I

.field private mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

.field private mScrapViews:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mSkippedScrap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTransientStateViewsById:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mViewTypeCount:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    return-void
.end method

.method static synthetic access$4500(Landroid/widget/AbsListView$RecycleBin;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4502(Landroid/widget/AbsListView$RecycleBin;Landroid/widget/AbsListView$RecyclerListener;)Landroid/widget/AbsListView$RecyclerListener;
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    return-object p1
.end method

.method private clearScrap(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private clearScrapForRebind(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->clearAccessibilityFocus()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private getSkippedScrap()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    return-object v0
.end method

.method private pruneScrapViews()V
    .locals 9

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    iget v1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_1
    if-le v6, v0, :cond_0

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->hasTransientState()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0, v6, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v5, v5, -0x1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    iget-object v5, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v5, :cond_5

    move v6, v3

    :goto_3
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->removeAt(I)V

    add-int/lit8 v6, v6, -0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_5
    return-void
.end method

.method private removeDetachedView(Landroid/view/View;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0, p1, p2}, Landroid/widget/AbsListView;->access$4700(Landroid/widget/AbsListView;Landroid/view/View;Z)V

    return-void
.end method

.method private retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)",
            "Landroid/view/View;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    nop

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v4, v4, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    iget-wide v6, v3, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    return-object v6

    :cond_0
    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-ne v4, p2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    return-object v4

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-direct {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    return-object v1

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method addScrapView(Landroid/view/View;I)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p2, v0, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    iget v1, v0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {p0, v1}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, -0x2

    if-eq v1, v2, :cond_1

    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->notifyViewAccessibilityStateChangedIfNeeded(I)V

    invoke-virtual {p1}, Landroid/view/View;->hasTransientState()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v3, v3, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v3, :cond_3

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    :cond_3
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    iget-wide v4, v0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    invoke-virtual {v3, v4, v5, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v3, v3, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v3, :cond_6

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v3, :cond_5

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    :cond_5
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->getSkippedScrap()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$RecycleBin;->clearScrapForRebind(Landroid/view/View;)V

    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-ne v4, v3, :cond_8

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v3, p1}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_9
    :goto_1
    return-void
.end method

.method clear()V
    .locals 3

    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Landroid/widget/AbsListView$RecycleBin;->clearScrap(Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/AbsListView$RecycleBin;->clearTransientStateViews()V

    return-void
.end method

.method clearTransientStateViews()V
    .locals 6

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-direct {p0, v4, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    move v4, v1

    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-direct {p0, v5, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->clear()V

    :cond_3
    return-void
.end method

.method fillActiveViews(II)V
    .locals 6

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v0, v0

    if-ge v0, p1, :cond_0

    new-array v0, p1, [Landroid/view/View;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    :cond_0
    iput p2, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v3, :cond_1

    iget v4, v3, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1

    aput-object v2, v0, v1

    add-int v4, p2, v1

    iput v4, v3, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method fullyDetachScrapViews()V
    .locals 8

    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isTemporarilyDetached()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0, v6, v2}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method getActiveView(I)Landroid/view/View;
    .locals 4

    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    sub-int v0, p1, v0

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v3, v1, v0

    aput-object v2, v1, v0

    return-object v3

    :cond_0
    return-object v2
.end method

.method getScrapView(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    invoke-direct {p0, v1, p1}, Landroid/widget/AbsListView$RecycleBin;->retrieveFromScrap(Ljava/util/ArrayList;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_2
    return-object v1
.end method

.method getTransientStateView(I)Landroid/view/View;
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    return-object v2

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public markChildrenDirty()V
    .locals 7

    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_3

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    nop

    :goto_5
    if-ge v1, v0, :cond_5

    iget-object v2, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method reclaimScrapViews(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method removeSkippedScrap()V
    .locals 4

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3, v1}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mSkippedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method scrapActiveViews()V
    .locals 13

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    iget-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    if-le v4, v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iget-object v4, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    array-length v5, v0

    add-int/lit8 v6, v5, -0x1

    :goto_2
    if-ltz v6, :cond_a

    aget-object v7, v0, v6

    if-eqz v7, :cond_9

    nop

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/AbsListView$LayoutParams;

    iget v9, v8, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v10, 0x0

    aput-object v10, v0, v6

    invoke-virtual {v7}, Landroid/view/View;->hasTransientState()Z

    move-result v10

    const/4 v11, -0x2

    if-eqz v10, :cond_6

    invoke-virtual {v7}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mAdapterHasStableIds:Z

    if-eqz v10, :cond_3

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    if-nez v10, :cond_2

    new-instance v10, Landroid/util/LongSparseArray;

    invoke-direct {v10}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    :cond_2
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-object v10, v10, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-interface {v10, v11}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    iget-object v12, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViewsById:Landroid/util/LongSparseArray;

    invoke-virtual {v12, v10, v11, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->this$0:Landroid/widget/AbsListView;

    iget-boolean v10, v10, Landroid/widget/AbsListView;->mDataChanged:Z

    if-nez v10, :cond_5

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    if-nez v10, :cond_4

    new-instance v10, Landroid/util/SparseArray;

    invoke-direct {v10}, Landroid/util/SparseArray;-><init>()V

    iput-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    :cond_4
    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mTransientStateViews:Landroid/util/SparseArray;

    iget v11, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v11, v6

    invoke-virtual {v10, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    :cond_5
    if-eq v9, v11, :cond_9

    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v9}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-nez v10, :cond_7

    if-eq v9, v11, :cond_9

    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v4, v10, v9

    :cond_8
    iget v10, p0, Landroid/widget/AbsListView$RecycleBin;->mFirstActivePosition:I

    add-int/2addr v10, v6

    iput v10, v8, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    invoke-direct {p0, v7, v3}, Landroid/widget/AbsListView$RecycleBin;->removeDetachedView(Landroid/view/View;Z)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_9

    iget-object v10, p0, Landroid/widget/AbsListView$RecycleBin;->mRecyclerListener:Landroid/widget/AbsListView$RecyclerListener;

    invoke-interface {v10, v7}, Landroid/widget/AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    :cond_9
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_2

    :cond_a
    invoke-direct {p0}, Landroid/widget/AbsListView$RecycleBin;->pruneScrapViews()V

    return-void
.end method

.method setCacheColorHint(I)V
    .locals 7

    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_3

    :cond_1
    iget v0, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v3, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v1

    :goto_2
    if-ge v5, v4, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_3
    iget-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mActiveViews:[Landroid/view/View;

    array-length v2, v0

    nop

    :goto_4
    if-ge v1, v2, :cond_5

    aget-object v3, v0, v1

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    return-void
.end method

.method public setViewTypeCount(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    new-array v0, p1, [Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/AbsListView$RecycleBin;->mViewTypeCount:I

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/widget/AbsListView$RecycleBin;->mCurrentScrap:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/widget/AbsListView$RecycleBin;->mScrapViews:[Ljava/util/ArrayList;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t have a viewTypeCount < 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldRecycleViewType(I)Z
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
