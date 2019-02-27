.class Landroid/widget/AbsListView$ListItemAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListItemAccessibilityDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .line 2466
    iput-object p1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2469
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2471
    iget-object v0, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2472
    .local v0, "position":I
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0, p2}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2473
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2477
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2478
    return v1

    .line 2481
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 2482
    .local v0, "position":I
    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_e

    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 2487
    :cond_1
    iget-object v4, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    if-lt v0, v4, :cond_2

    .line 2494
    return v3

    .line 2498
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 2499
    .local v4, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v5, v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v5, :cond_3

    .line 2500
    move-object v5, v4

    check-cast v5, Landroid/widget/AbsListView$LayoutParams;

    iget-boolean v5, v5, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .local v5, "isItemEnabled":Z
    goto :goto_0

    .line 2502
    .end local v5    # "isItemEnabled":Z
    :cond_3
    move v5, v3

    .line 2505
    .restart local v5    # "isItemEnabled":Z
    :goto_0
    iget-object v6, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    if-nez v5, :cond_4

    goto :goto_1

    .line 2510
    :cond_4
    const/4 v6, 0x4

    if-eq p2, v6, :cond_b

    const/16 v6, 0x8

    if-eq p2, v6, :cond_9

    const/16 v1, 0x10

    if-eq p2, v1, :cond_7

    const/16 v1, 0x20

    if-eq p2, v1, :cond_5

    .line 2537
    return v3

    .line 2530
    :cond_5
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2531
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 2532
    .local v1, "id":J
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/widget/AbsListView;->performLongPress(Landroid/view/View;IJ)Z

    move-result v3

    return v3

    .line 2534
    .end local v1    # "id":J
    :cond_6
    return v3

    .line 2524
    :cond_7
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-static {v1, p1}, Landroid/widget/AbsListView;->access$300(Landroid/widget/AbsListView;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2525
    iget-object v1, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v0}, Landroid/widget/AbsListView;->getItemIdAtPosition(I)J

    move-result-wide v1

    .line 2526
    .restart local v1    # "id":J
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, p1, v0, v1, v2}, Landroid/widget/AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v3

    return v3

    .line 2528
    .end local v1    # "id":J
    :cond_8
    return v3

    .line 2512
    :cond_9
    iget-object v6, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v6}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v6

    if-ne v6, v0, :cond_a

    .line 2513
    iget-object v3, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2514
    return v1

    .line 2516
    :cond_a
    return v3

    .line 2518
    :cond_b
    iget-object v2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v2

    if-eq v2, v0, :cond_c

    .line 2519
    iget-object v2, p0, Landroid/widget/AbsListView$ListItemAccessibilityDelegate;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2, v0}, Landroid/widget/AbsListView;->setSelection(I)V

    .line 2520
    return v1

    .line 2522
    :cond_c
    return v3

    .line 2507
    :cond_d
    :goto_1
    return v3

    .line 2484
    .end local v4    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "isItemEnabled":Z
    :cond_e
    :goto_2
    return v3
.end method
