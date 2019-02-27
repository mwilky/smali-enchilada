.class Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;
.super Ljava/lang/Object;
.source "AccessibilityInteractionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/AccessibilityInteractionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccessibilityNodePrefetcher"
.end annotation


# static fields
.field private static final MAX_ACCESSIBILITY_NODE_INFO_BATCH_SIZE:I = 0x32


# instance fields
.field private final mTempViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/view/AccessibilityInteractionController;


# direct methods
.method private constructor <init>(Landroid/view/AccessibilityInteractionController;)V
    .locals 0

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/AccessibilityInteractionController;Landroid/view/AccessibilityInteractionController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;-><init>(Landroid/view/AccessibilityInteractionController;)V

    return-void
.end method

.method private enforceNodeTreeConsistent(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/LongSparseArray;

    invoke-direct {v1}, Landroid/util/LongSparseArray;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    move-object/from16 v5, p1

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    move-object v6, v4

    :goto_1
    if-eqz v4, :cond_1

    move-object v6, v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    move-object v4, v7

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    new-instance v10, Ljava/util/LinkedList;

    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v10, v6}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_2
    invoke-interface {v10}, Ljava/util/Queue;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-interface {v10}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->isAccessibilityFocused()Z

    move-result v12

    if-eqz v12, :cond_3

    if-nez v7, :cond_2

    move-object v7, v11

    goto :goto_3

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate accessibility focus:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in window:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v13}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v13, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_3
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v12

    if-eqz v12, :cond_5

    if-nez v8, :cond_4

    move-object v8, v11

    goto :goto_4

    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate input focus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in window:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v13}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v13, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    :goto_4
    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v12

    move v13, v3

    :goto_5
    if-ge v13, v12, :cond_7

    invoke-virtual {v11, v13}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v3, :cond_6

    invoke-interface {v10, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    nop

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_8
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Duplicate node: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " in window:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v13}, Landroid/view/AccessibilityInteractionController;->access$200(Landroid/view/AccessibilityInteractionController;)Landroid/view/ViewRootImpl;

    move-result-object v13

    iget-object v13, v13, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v13, v13, Landroid/view/View$AttachInfo;->mAccessibilityWindowId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_9
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_6
    if-ltz v3, :cond_b

    invoke-virtual {v1, v3}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v9, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_a
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Disconnected node: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_b
    return-void
.end method

.method private prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x32

    if-ge v3, v2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v5, v4, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v5, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v5, v4}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto :goto_1

    :cond_3
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    nop

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v4, :cond_7

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v5, :cond_6

    invoke-direct {p0, v4, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_3

    :cond_6
    nop

    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v6

    invoke-direct {p0, v5, v6, p2}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    :goto_3
    goto :goto_2

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    throw v2
.end method

.method private prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v4, 0x32

    if-ge v3, v1, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-lt v5, v4, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v4

    nop

    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {p3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v0

    nop

    :goto_1
    if-ge v2, v3, :cond_3

    add-int v4, v0, v2

    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-direct {p0, v4, p2, p3}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    :goto_0
    const v4, 0x7fffffff

    if-eq v3, v4, :cond_5

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x32

    if-lt v4, v5, :cond_0

    return-void

    :cond_0
    nop

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    if-ne v3, v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    return-void

    :cond_2
    :goto_1
    invoke-virtual {p3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    :goto_2
    if-lt v7, v0, :cond_3

    invoke-interface {p4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    nop

    goto :goto_0

    :cond_5
    return-void
.end method

.method private prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->mTempViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v6, 0x32

    if-lt v5, v6, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v7

    if-eq v6, v7, :cond_2

    iget-object v6, p0, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->this$0:Landroid/view/AccessibilityInteractionController;

    invoke-static {v6, v5}, Landroid/view/AccessibilityInteractionController;->access$300(Landroid/view/AccessibilityInteractionController;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    nop

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v6, v8

    goto :goto_1

    :cond_1
    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    move-object v6, v8

    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {p2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    throw v3

    :cond_4
    :goto_2
    return-void
.end method

.method private prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityNodeProvider;",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getParentNodeId()J

    move-result-wide v0

    nop

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v2

    nop

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {p2}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v4

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    goto :goto_2

    :cond_1
    :goto_0
    nop

    invoke-virtual {p3, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildCount()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v7

    const/16 v8, 0x32

    if-lt v7, v8, :cond_2

    return-void

    :cond_2
    invoke-virtual {v4, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildId(I)J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-eqz v9, :cond_3

    nop

    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v9

    invoke-virtual {p3, v9}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-interface {p4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    nop

    :goto_2
    return-void
.end method


# virtual methods
.method public prefetchAccessibilityNodeInfos(Landroid/view/View;IILjava/util/List;Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "II",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "android.view.accessibility.AccessibilityNodeInfo.extra_data_requested"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_1

    invoke-virtual {p1, v2, v1, p5}, Landroid/view/View;->addExtraDataToAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    :cond_2
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    :cond_3
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_4

    invoke-direct {p0, p1, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfRealNode(Landroid/view/View;Ljava/util/List;)V

    :cond_4
    goto :goto_1

    :cond_5
    nop

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_6

    invoke-virtual {v0, p2, v2, v1, p5}, Landroid/view/accessibility/AccessibilityNodeProvider;->addExtraDataToAccessibilityNodeInfo(ILandroid/view/accessibility/AccessibilityNodeInfo;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    invoke-interface {p4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_7

    invoke-direct {p0, v2, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchPredecessorsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    :cond_7
    and-int/lit8 v3, p3, 0x2

    if-eqz v3, :cond_8

    invoke-direct {p0, v2, p1, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchSiblingsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    :cond_8
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_9

    invoke-direct {p0, v2, v0, p4}, Landroid/view/AccessibilityInteractionController$AccessibilityNodePrefetcher;->prefetchDescendantsOfVirtualNode(Landroid/view/accessibility/AccessibilityNodeInfo;Landroid/view/accessibility/AccessibilityNodeProvider;Ljava/util/List;)V

    :cond_9
    :goto_1
    return-void
.end method
