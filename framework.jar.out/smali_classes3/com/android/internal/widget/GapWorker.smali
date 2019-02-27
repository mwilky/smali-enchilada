.class final Lcom/android/internal/widget/GapWorker;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;,
        Lcom/android/internal/widget/GapWorker$Task;
    }
.end annotation


# static fields
.field static final sGapWorker:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/internal/widget/GapWorker;",
            ">;"
        }
    .end annotation
.end field

.field static sTaskComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mFrameIntervalNs:J

.field mPostTimeNs:J

.field mRecyclerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/widget/GapWorker$Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/android/internal/widget/GapWorker$1;

    invoke-direct {v0}, Lcom/android/internal/widget/GapWorker$1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    return-void
.end method

.method private buildTaskList()V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v4, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/widget/RecyclerView;

    iget-object v5, v4, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v5, v4, v2}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    iget-object v5, v4, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v5, v5, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    move v4, v1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v5, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/widget/RecyclerView;

    iget-object v6, v5, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    iget v7, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDx:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    iget v8, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchDy:I

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int/2addr v7, v8

    move v8, v4

    move v4, v2

    :goto_2
    iget v9, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v9, v9, 0x2

    if-ge v4, v9, :cond_3

    iget-object v9, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v8, v9, :cond_1

    new-instance v9, Lcom/android/internal/widget/GapWorker$Task;

    invoke-direct {v9}, Lcom/android/internal/widget/GapWorker$Task;-><init>()V

    iget-object v10, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_1
    iget-object v9, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/GapWorker$Task;

    :goto_3
    iget-object v10, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    add-int/lit8 v11, v4, 0x1

    aget v10, v10, v11

    if-gt v10, v7, :cond_2

    const/4 v11, 0x1

    goto :goto_4

    :cond_2
    move v11, v2

    :goto_4
    iput-boolean v11, v9, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    iput v7, v9, Lcom/android/internal/widget/GapWorker$Task;->viewVelocity:I

    iput v10, v9, Lcom/android/internal/widget/GapWorker$Task;->distanceToItem:I

    iput-object v5, v9, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    iget-object v11, v6, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v11, v11, v4

    iput v11, v9, Lcom/android/internal/widget/GapWorker$Task;->position:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move v4, v8

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    sget-object v2, Lcom/android/internal/widget/GapWorker;->sTaskComparator:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V
    .locals 4

    iget-boolean v0, p1, Lcom/android/internal/widget/GapWorker$Task;->immediate:Z

    if-eqz v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    move-wide v0, p2

    :goto_0
    iget-object v2, p1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    iget v3, p1, Lcom/android/internal/widget/GapWorker$Task;->position:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView;

    invoke-direct {p0, v3, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V

    :cond_1
    return-void
.end method

.method private flushTasksWithDeadline(J)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/GapWorker;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/GapWorker$Task;

    iget-object v2, v1, Lcom/android/internal/widget/GapWorker$Task;->view:Lcom/android/internal/widget/RecyclerView;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTaskWithDeadline(Lcom/android/internal/widget/GapWorker$Task;J)V

    invoke-virtual {v1}, Lcom/android/internal/widget/GapWorker$Task;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method static isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v4

    iget v5, v4, Lcom/android/internal/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ne v5, p1, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private prefetchInnerRecyclerViewWithDeadline(Lcom/android/internal/widget/RecyclerView;J)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/internal/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mChildHelper:Lcom/android/internal/widget/ChildHelper;

    invoke-virtual {v0}, Lcom/android/internal/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->removeAndRecycleViews()V

    :cond_1
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->collectPrefetchPositionsFromView(Lcom/android/internal/widget/RecyclerView;Z)V

    iget v1, v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    if-eqz v1, :cond_3

    :try_start_0
    const-string v1, "RV Nested Prefetch"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/widget/RecyclerView;->mState:Lcom/android/internal/widget/RecyclerView$State;

    iget-object v2, p1, Lcom/android/internal/widget/RecyclerView;->mAdapter:Lcom/android/internal/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RecyclerView$State;->prepareForNestedPrefetch(Lcom/android/internal/widget/RecyclerView$Adapter;)V

    const/4 v1, 0x0

    :goto_0
    iget v2, v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mCount:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->mPrefetchArray:[I

    aget v2, v2, v1

    invoke-direct {p0, p1, v2, p2, p3}, Lcom/android/internal/widget/GapWorker;->prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1

    :cond_3
    :goto_1
    return-void
.end method

.method private prefetchPositionWithDeadline(Lcom/android/internal/widget/RecyclerView;IJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;
    .locals 4

    invoke-static {p1, p2}, Lcom/android/internal/widget/GapWorker;->isPrefetchPositionAttached(Lcom/android/internal/widget/RecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mRecycler:Lcom/android/internal/widget/RecyclerView$Recycler;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3, p4}, Lcom/android/internal/widget/RecyclerView$Recycler;->tryGetViewHolderForPositionByDeadline(IZJ)Lcom/android/internal/widget/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, v2, Lcom/android/internal/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->recycleView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/RecyclerView$Recycler;->addViewHolderToRecycledViewPool(Lcom/android/internal/widget/RecyclerView$ViewHolder;Z)V

    :cond_2
    :goto_0
    return-object v2
.end method


# virtual methods
.method public add(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method postFromTraversal(Lcom/android/internal/widget/RecyclerView;II)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/widget/RecyclerView;->getNanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-virtual {p1, p0}, Lcom/android/internal/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p1, Lcom/android/internal/widget/RecyclerView;->mPrefetchRegistry:Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-virtual {v0, p2, p3}, Lcom/android/internal/widget/GapWorker$LayoutPrefetchRegistryImpl;->setPrefetchVector(II)V

    return-void
.end method

.method prefetch(J)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/GapWorker;->buildTaskList()V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/GapWorker;->flushTasksWithDeadline(J)V

    return-void
.end method

.method public remove(Lcom/android/internal/widget/RecyclerView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return-void
.end method

.method public run()V
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    const-string v2, "RV Prefetch"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    :try_start_1
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v3, p0, Lcom/android/internal/widget/GapWorker;->mRecyclerViews:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RecyclerView;

    invoke-virtual {v3}, Lcom/android/internal/widget/RecyclerView;->getDrawingTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_1
    :try_start_2
    iget-wide v4, p0, Lcom/android/internal/widget/GapWorker;->mFrameIntervalNs:J

    add-long/2addr v4, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/widget/GapWorker;->prefetch(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    nop

    return-void

    :catchall_0
    move-exception v2

    iput-wide v0, p0, Lcom/android/internal/widget/GapWorker;->mPostTimeNs:J

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method
