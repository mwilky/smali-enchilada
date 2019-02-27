.class public Landroid/view/accessibility/AccessibilityCache;
.super Ljava/lang/Object;
.source "AccessibilityCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;
    }
.end annotation


# static fields
.field public static final CACHE_CRITICAL_EVENTS_MASK:I = 0x41b83d

.field private static final CHECK_INTEGRITY:Z

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityCache"


# instance fields
.field private mAccessibilityFocus:J

.field private final mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

.field private mInputFocus:J

.field private mIsAllWindowsCached:Z

.field private final mLock:Ljava/lang/Object;

.field private final mNodeCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTempWindowArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    return-void
.end method

.method public constructor <init>(Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v0, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    iput-object p1, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    return-void
.end method

.method private clearNodesForWindowLocked(I)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->removeAt(I)V

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private clearSubTreeLocked(IJ)V
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    :cond_0
    return-void
.end method

.method private clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/LongSparseArray<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;J)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/util/LongSparseArray;->remove(J)V

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeRecursiveLocked(Landroid/util/LongSparseArray;J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    return-void
.end method

.method private clearWindowCache()V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    return-void
.end method

.method private refreshCachedNodeLocked(IJ)V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/LongSparseArray;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityNodeRefresher:Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/view/accessibility/AccessibilityCache$AccessibilityNodeRefresher;->refreshNode(Landroid/view/accessibility/AccessibilityNodeInfo;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    return-void
.end method


# virtual methods
.method public add(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getWindowId()I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    if-nez v2, :cond_0

    new-instance v3, Landroid/util/LongSparseArray;

    invoke-direct {v3}, Landroid/util/LongSparseArray;-><init>()V

    move-object v2, v3

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v6

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_4

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-direct {p0, v1}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v9

    if-eqz v6, :cond_2

    invoke-virtual {v6, v9, v10}, Landroid/util/LongArray;->indexOf(J)I

    move-result v11

    if-gez v11, :cond_3

    :cond_2
    invoke-direct {p0, v1, v9, v10}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v10

    cmp-long v10, v10, v8

    if-eqz v10, :cond_5

    invoke-direct {p0, v1, v8, v9}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_1

    :cond_5
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    :cond_6
    :goto_1
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v7

    if-eqz v7, :cond_7

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    :cond_7
    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_8

    iput-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    :cond_8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V
    .locals 5

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    :cond_0
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkIntegrity()V
    .locals 26

    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move-object v6, v3

    move-object v3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_5

    iget-object v7, v1, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v6, :cond_1

    const-string v8, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate active window:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object v6, v7

    :cond_2
    :goto_1
    invoke-virtual {v7}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v3, :cond_3

    const-string v8, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicate focused window:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v3, v7

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    const/4 v7, 0x0

    iget-object v8, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    move-object v9, v7

    move-object v7, v0

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_13

    iget-object v10, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v10, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/LongSparseArray;

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v11

    if-gtz v11, :cond_6

    nop

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v23, v8

    goto/16 :goto_c

    :cond_6
    new-instance v11, Landroid/util/ArraySet;

    invoke-direct {v11}, Landroid/util/ArraySet;-><init>()V

    iget-object v12, v1, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v10}, Landroid/util/LongSparseArray;->size()I

    move-result v13

    move-object v14, v9

    move-object v9, v7

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v13, :cond_12

    invoke-virtual {v10, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v11, v15}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_7

    const-string v5, "AccessibilityCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string v3, "Duplicate node: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " in window:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v23, v8

    goto/16 :goto_b

    :cond_7
    move-object/from16 v17, v3

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v9, :cond_8

    const-string v1, "AccessibilityCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate accessibility focus:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in window:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    move-object v9, v15

    :cond_9
    :goto_5
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v14, :cond_a

    const-string v1, "AccessibilityCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicate input focus: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in window:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_a
    move-object v14, v15

    :cond_b
    :goto_6
    move/from16 v18, v4

    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v1, :cond_e

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v4, :cond_d

    move/from16 v19, v3

    move/from16 v20, v4

    invoke-virtual {v1, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v3

    invoke-virtual {v10, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-ne v3, v15, :cond_c

    const/4 v4, 0x1

    goto :goto_8

    :cond_c
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_7

    :cond_d
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v4, v19

    :goto_8
    if-nez v4, :cond_e

    const-string v3, "AccessibilityCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v21, v4

    const-string v4, "Invalid parent-child relation between parent: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " and child: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v15}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_9
    if-ge v4, v3, :cond_11

    move-object/from16 v22, v6

    invoke-virtual {v15, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v5

    invoke-virtual {v10, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_10

    move/from16 v23, v8

    move-object/from16 v24, v9

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v8

    invoke-virtual {v10, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eq v6, v15, :cond_f

    const-string v8, "AccessibilityCache"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v3

    const-string v3, "Invalid child-parent relation between child: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and parent: "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_f
    move/from16 v25, v3

    goto :goto_a

    :cond_10
    move/from16 v25, v3

    move/from16 v23, v8

    move-object/from16 v24, v9

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v9, v24

    move/from16 v3, v25

    goto :goto_9

    :cond_11
    move-object/from16 v22, v6

    move/from16 v23, v8

    move-object/from16 v24, v9

    :goto_b
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v1, p0

    goto/16 :goto_4

    :cond_12
    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v22, v6

    move/from16 v23, v8

    move-object v7, v9

    move-object v9, v14

    :goto_c
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v17

    move/from16 v4, v18

    move-object/from16 v6, v22

    move/from16 v8, v23

    move-object/from16 v1, p0

    goto/16 :goto_3

    :cond_13
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->clearNodesForWindowLocked(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x7fffffff

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getNode(IJ)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 4

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mNodeCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongSparseArray;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v2, :cond_1

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    move-object v2, v3

    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindow(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .locals 3

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWindows()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mTempWindowArray:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    iget-object v4, p0, Landroid/view/accessibility/AccessibilityCache;->mWindowCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v5

    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v5, v3, -0x1

    :goto_1
    if-ltz v5, :cond_2

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->removeAt(I)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-object v4

    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 8

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const-wide/32 v2, 0x7fffffff

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v4

    iget-wide v5, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v4, v5, v6}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    goto/16 :goto_1

    :sswitch_1
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mAccessibilityFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_1

    :sswitch_3
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v6

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_1

    invoke-direct {p0, v3, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->clearSubTreeLocked(IJ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v4, v5}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    :goto_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3

    :sswitch_4
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->clear()V

    goto :goto_1

    :sswitch_5
    iget-wide v4, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    iget-wide v3, p0, Landroid/view/accessibility/AccessibilityCache;->mInputFocus:J

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Landroid/view/accessibility/AccessibilityCache;->refreshCachedNodeLocked(IJ)V

    nop

    :cond_3
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-boolean v0, Landroid/view/accessibility/AccessibilityCache;->CHECK_INTEGRITY:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityCache;->checkIntegrity()V

    :cond_4
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x4 -> :sswitch_6
        0x8 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_4
        0x800 -> :sswitch_3
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_6
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
        0x400000 -> :sswitch_4
    .end sparse-switch
.end method

.method public setWindows(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityCache;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityCache;->clearWindowCache()V

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityCache;->addWindow(Landroid/view/accessibility/AccessibilityWindowInfo;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityCache;->mIsAllWindowsCached:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
