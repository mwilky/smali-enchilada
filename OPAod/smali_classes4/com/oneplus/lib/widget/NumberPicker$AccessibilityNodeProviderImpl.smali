.class Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/oneplus/lib/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/NumberPicker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/lib/widget/NumberPicker;

    .line 2363
    iput-object p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2374
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2376
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2741
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2742
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2743
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2744
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2746
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2747
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2749
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2750
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 2751
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2754
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2755
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2756
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2758
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2760
    .local v1, "applicationScale":F
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2761
    .local v3, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v3, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2762
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/util/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    .line 2763
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2765
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v5, v3}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v5

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2767
    move-object v5, v3

    .line 2768
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2769
    .local v6, "locationOnScreen":[I
    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2770
    const/4 v7, 0x0

    aget v7, v6, v7

    aget v2, v6, v2

    invoke-virtual {v5, v7, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2771
    invoke-static {v5, v4}, Lcom/oneplus/lib/widget/util/ViewUtils;->scaleRect(Landroid/graphics/Rect;F)V

    .line 2772
    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2774
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 2775
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2777
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, v4, :cond_3

    .line 2778
    const/16 v2, 0x80

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2780
    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2781
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 2782
    :cond_4
    const/16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2784
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v2, v4, :cond_7

    .line 2785
    :cond_6
    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2789
    :cond_7
    return-object v0
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .line 2707
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2708
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2709
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2710
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2711
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2712
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2713
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2714
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2715
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2716
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2717
    .local v2, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v2, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2718
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v3, v2}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2719
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2720
    move-object v3, v2

    .line 2721
    .local v3, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2722
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2723
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v1, v4, v1

    invoke-virtual {v3, v5, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2724
    invoke-virtual {v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2726
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_0

    .line 2727
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2729
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, p1, :cond_1

    .line 2730
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2732
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2733
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2736
    :cond_2
    return-object v0
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 2685
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2686
    .local v0, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2687
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, v2, :cond_0

    .line 2688
    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2690
    :cond_0
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v1, v2, :cond_1

    .line 2691
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2693
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2694
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2695
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2, v1}, Lcom/oneplus/lib/widget/util/ViewUtils;->isVisibleToUser(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2696
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2697
    move-object v2, v1

    .line 2698
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2699
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2700
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2701
    invoke-virtual {v0, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2702
    return-object v0
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .line 2648
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 2650
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2651
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2652
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2653
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2656
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    return-void

    .line 2658
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2659
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    .line 2660
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2661
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2662
    return-void

    .line 2664
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2665
    .local v1, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2666
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2667
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2668
    return-void

    .line 2671
    .end local v0    # "text":Ljava/lang/CharSequence;
    .end local v1    # "contentDesc":Ljava/lang/CharSequence;
    :cond_2
    goto :goto_0

    .line 2673
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2674
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2675
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2676
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2679
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    return-void

    .line 2681
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2801
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2802
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2803
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I

    move-result v0

    .line 2805
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2806
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2807
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 2806
    :goto_0
    return-object v1

    .line 2809
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .line 2813
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1800(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2814
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1900(Lcom/oneplus/lib/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2815
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2000(Lcom/oneplus/lib/widget/NumberPicker;I)I

    move-result v0

    .line 2817
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1000(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2818
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$2200(Lcom/oneplus/lib/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2819
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$800(Lcom/oneplus/lib/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$2100(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    .line 2818
    :goto_0
    return-object v1

    .line 2821
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .line 2793
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .line 2797
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 4
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .line 2634
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2635
    .local v0, "assm":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2636
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2637
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2638
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2639
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2640
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2641
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1, v2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2642
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/lib/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2644
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 4
    .param p1, "eventType"    # I

    .line 2622
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 2623
    .local v0, "assm":Landroid/view/accessibility/AccessibilityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2624
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 2625
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2626
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2627
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2628
    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2, v3, v1}, Lcom/oneplus/lib/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2630
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .line 2380
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 2400
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2385
    :pswitch_0
    const/4 v2, 0x3

    .line 2386
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v5

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2387
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2388
    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    add-int v7, v0, v1

    .line 2385
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2390
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2391
    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2392
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2393
    invoke-static {v3}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 2390
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2395
    :pswitch_2
    const/4 v2, 0x1

    .line 2396
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v4

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2397
    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1700(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    sub-int v5, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2398
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v6, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v6

    sub-int/2addr v1, v6

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v1

    iget-object v7, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v7

    sub-int/2addr v1, v7

    add-int v7, v0, v1

    .line 2395
    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2383
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollX()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getLeft()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getScrollY()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/NumberPicker;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2382
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .line 2406
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2407
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2409
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 2410
    .local v0, "searchedLowerCase":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2411
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    packed-switch p2, :pswitch_data_0

    .line 2429
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 2424
    :pswitch_0
    invoke-direct {p0, v0, p2, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2426
    return-object v1

    .line 2413
    :cond_1
    const/4 v2, 0x3

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2415
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2417
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2419
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .line 2434
    const/4 v0, -0x1

    const/high16 v1, -0x80000000

    const/16 v2, 0x80

    const/16 v3, 0x40

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_17

    const v0, 0x8000

    const/high16 v6, 0x10000

    const/16 v7, 0x10

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2560
    :pswitch_0
    if-eq p2, v7, :cond_4

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_0

    .line 2593
    return v5

    .line 2582
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_1

    .line 2583
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2584
    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2586
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2587
    return v4

    .line 2590
    :cond_1
    return v5

    .line 2572
    :cond_2
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_3

    .line 2573
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2574
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2576
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v2}, Lcom/oneplus/lib/widget/NumberPicker;->access$1500(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2577
    return v4

    .line 2580
    :cond_3
    return v5

    .line 2562
    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2563
    if-ne p1, v4, :cond_5

    move v5, v4

    nop

    :cond_5
    move v0, v5

    .line 2564
    .local v0, "increment":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2565
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2567
    return v4

    .line 2570
    .end local v0    # "increment":Z
    :cond_6
    return v5

    .line 2471
    :pswitch_1
    if-eq p2, v7, :cond_f

    const/16 v7, 0x20

    if-eq p2, v7, :cond_d

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_9

    packed-switch p2, :pswitch_data_1

    .line 2520
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2479
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2480
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 2481
    return v4

    .line 2483
    :cond_7
    return v5

    .line 2473
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2474
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    return v0

    .line 2524
    :cond_8
    return v5

    .line 2510
    :cond_9
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_a

    .line 2511
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2512
    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2514
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 2515
    return v4

    .line 2518
    :cond_a
    return v5

    .line 2500
    :cond_b
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_c

    .line 2501
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2502
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2504
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0}, Lcom/oneplus/lib/widget/NumberPicker;->access$100(Lcom/oneplus/lib/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->invalidate()V

    .line 2505
    return v4

    .line 2508
    :cond_c
    return v5

    .line 2493
    :cond_d
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2494
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->performLongClick()Z

    .line 2495
    return v4

    .line 2497
    :cond_e
    return v5

    .line 2486
    :cond_f
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2487
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->performClick()Z

    .line 2488
    return v4

    .line 2490
    :cond_10
    return v5

    .line 2526
    :pswitch_4
    if-eq p2, v7, :cond_15

    if-eq p2, v3, :cond_13

    if-eq p2, v2, :cond_11

    .line 2558
    return v5

    .line 2547
    :cond_11
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_12

    .line 2548
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2549
    invoke-virtual {p0, p1, v6}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2551
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2552
    return v4

    .line 2555
    :cond_12
    return v5

    .line 2537
    :cond_13
    iget v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v1, p1, :cond_14

    .line 2538
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2539
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2541
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v1}, Lcom/oneplus/lib/widget/NumberPicker;->access$1300(Lcom/oneplus/lib/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/NumberPicker;->getBottom()I

    move-result v3

    invoke-virtual {v0, v5, v1, v2, v3}, Lcom/oneplus/lib/widget/NumberPicker;->invalidate(IIII)V

    .line 2542
    return v4

    .line 2545
    :cond_14
    return v5

    .line 2528
    :cond_15
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2529
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2530
    invoke-virtual {p0, p1, v4}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2532
    return v4

    .line 2535
    :cond_16
    return v5

    .line 2436
    :cond_17
    if-eq p2, v3, :cond_20

    if-eq p2, v2, :cond_1e

    const/16 v0, 0x1000

    if-eq p2, v0, :cond_1b

    const/16 v0, 0x2000

    if-eq p2, v0, :cond_18

    .line 2469
    nop

    .line 2595
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    return v0

    .line 2460
    :cond_18
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2461
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1a

    .line 2462
    :cond_19
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v5}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2463
    return v4

    .line 2466
    :cond_1a
    return v5

    .line 2452
    :cond_1b
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    .line 2453
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 2454
    :cond_1c
    iget-object v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/oneplus/lib/widget/NumberPicker;

    invoke-static {v0, v4}, Lcom/oneplus/lib/widget/NumberPicker;->access$200(Lcom/oneplus/lib/widget/NumberPicker;Z)V

    .line 2455
    return v4

    .line 2458
    :cond_1d
    return v5

    .line 2445
    :cond_1e
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v0, p1, :cond_1f

    .line 2446
    iput v1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2447
    return v4

    .line 2449
    :cond_1f
    return v5

    .line 2438
    :cond_20
    iget v0, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v0, p1, :cond_21

    .line 2439
    iput p1, p0, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2440
    return v4

    .line 2443
    :cond_21
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .line 2599
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2601
    :pswitch_0
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2602
    nop

    .line 2603
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2602
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2608
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    .line 2610
    goto :goto_0

    .line 2612
    :pswitch_2
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2613
    nop

    .line 2614
    invoke-direct {p0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    .line 2613
    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    .line 2619
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
