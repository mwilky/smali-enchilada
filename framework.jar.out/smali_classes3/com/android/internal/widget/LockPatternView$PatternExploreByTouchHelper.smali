.class final Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;
.super Lcom/android/internal/widget/ExploreByTouchHelper;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PatternExploreByTouchHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    }
.end annotation


# instance fields
.field private final mItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/android/internal/widget/LockPatternView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternView;Landroid/view/View;)V
    .locals 3
    .param p2, "forView"    # Landroid/view/View;

    .line 1406
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    .line 1407
    invoke-direct {p0, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 1396
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1397
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    .line 1408
    const/4 p1, 0x1

    .local p1, "i":I
    :goto_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 1409
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;-><init>(Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1408
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1411
    .end local p1    # "i":I
    :cond_0
    return-void
.end method

.method private getBoundsForVirtualView(I)Landroid/graphics/Rect;
    .locals 11
    .param p1, "virtualViewId"    # I

    .line 1526
    add-int/lit8 v0, p1, -0x1

    .line 1527
    .local v0, "ordinal":I
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mTempRect:Landroid/graphics/Rect;

    .line 1528
    .local v1, "bounds":Landroid/graphics/Rect;
    div-int/lit8 v2, v0, 0x3

    .line 1529
    .local v2, "row":I
    rem-int/lit8 v3, v0, 0x3

    .line 1530
    .local v3, "col":I
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternView;->access$800(Lcom/android/internal/widget/LockPatternView;)[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v4

    aget-object v4, v4, v2

    aget-object v4, v4, v3

    .line 1531
    .local v4, "cell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v5, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView;->access$900(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v5

    .line 1532
    .local v5, "centerX":F
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v6, v2}, Lcom/android/internal/widget/LockPatternView;->access$1000(Lcom/android/internal/widget/LockPatternView;I)F

    move-result v6

    .line 1533
    .local v6, "centerY":F
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternView;->access$1100(Lcom/android/internal/widget/LockPatternView;)F

    move-result v7

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v8}, Lcom/android/internal/widget/LockPatternView;->access$1200(Lcom/android/internal/widget/LockPatternView;)F

    move-result v8

    mul-float/2addr v7, v8

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float/2addr v7, v8

    .line 1534
    .local v7, "cellheight":F
    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v9}, Lcom/android/internal/widget/LockPatternView;->access$1300(Lcom/android/internal/widget/LockPatternView;)F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v10}, Lcom/android/internal/widget/LockPatternView;->access$1200(Lcom/android/internal/widget/LockPatternView;)F

    move-result v10

    mul-float/2addr v9, v10

    mul-float/2addr v9, v8

    .line 1535
    .local v9, "cellwidth":F
    sub-float v8, v5, v9

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 1536
    add-float v8, v5, v9

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->right:I

    .line 1537
    sub-float v8, v6, v7

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 1538
    add-float v8, v6, v7

    float-to-int v8, v8

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 1539
    return-object v1
.end method

.method private getTextForVirtualView(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "virtualViewId"    # I

    .line 1543
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1544
    .local v0, "res":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1545
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1544
    const v2, 0x1040328

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVirtualViewIdForHit(FF)I
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1557
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0, p2}, Lcom/android/internal/widget/LockPatternView;->access$1400(Lcom/android/internal/widget/LockPatternView;F)I

    move-result v0

    .line 1558
    .local v0, "rowHit":I
    const/high16 v1, -0x80000000

    if-gez v0, :cond_0

    .line 1559
    return v1

    .line 1561
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2, p1}, Lcom/android/internal/widget/LockPatternView;->access$1500(Lcom/android/internal/widget/LockPatternView;F)I

    move-result v2

    .line 1562
    .local v2, "columnHit":I
    if-gez v2, :cond_1

    .line 1563
    return v1

    .line 1565
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v3

    aget-object v3, v3, v0

    aget-boolean v3, v3, v2

    .line 1566
    .local v3, "dotAvailable":Z
    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    .line 1567
    .local v4, "dotId":I
    if-eqz v3, :cond_2

    move v1, v4

    nop

    .line 1570
    .local v1, "view":I
    :cond_2
    return v1
.end method

.method private isClickable(I)Z
    .locals 3
    .param p1, "virtualViewId"    # I

    .line 1481
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 1482
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x3

    .line 1483
    .local v0, "row":I
    add-int/lit8 v1, p1, -0x1

    rem-int/lit8 v1, v1, 0x3

    .line 1484
    .local v1, "col":I
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternView;->access$700(Lcom/android/internal/widget/LockPatternView;)[[Z

    move-result-object v2

    aget-object v2, v2, v0

    aget-boolean v2, v2, v1

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 1486
    .end local v0    # "row":I
    .end local v1    # "col":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected getVirtualViewAt(FF)I
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 1417
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getVirtualViewIdForHit(FF)I

    move-result v0

    .line 1418
    .local v0, "id":I
    return v0
.end method

.method protected getVisibleVirtualViews(Landroid/util/IntArray;)V
    .locals 2
    .param p1, "virtualViewIds"    # Landroid/util/IntArray;

    .line 1424
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->access$600(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1425
    return-void

    .line 1427
    :cond_0
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1430
    invoke-virtual {p1, v0}, Landroid/util/IntArray;->add(I)V

    .line 1427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1432
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method onItemClicked(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 1515
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->invalidateVirtualView(I)V

    .line 1520
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 1522
    return v0
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 1494
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    .line 1505
    const/4 v0, 0x0

    return v0

    .line 1499
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->onItemClicked(I)Z

    move-result v0

    return v0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1446
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ExploreByTouchHelper;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1447
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->access$600(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1448
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040326

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1450
    .local v0, "contentDescription":Ljava/lang/CharSequence;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1452
    .end local v0    # "contentDescription":Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 1438
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->mItems:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;

    .line 1439
    .local v0, "container":Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;
    if-eqz v0, :cond_0

    .line 1440
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper$VirtualViewContainer;->description:Ljava/lang/CharSequence;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    :cond_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1460
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 1461
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getTextForVirtualView(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1463
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->this$0:Lcom/android/internal/widget/LockPatternView;

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternView;->access$600(Lcom/android/internal/widget/LockPatternView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setFocusable(Z)V

    .line 1466
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1468
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1469
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->isClickable(I)Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 1474
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView$PatternExploreByTouchHelper;->getBoundsForVirtualView(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 1476
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 1477
    return-void
.end method
