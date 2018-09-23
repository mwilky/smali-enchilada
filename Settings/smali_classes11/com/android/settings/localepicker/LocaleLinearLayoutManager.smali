.class public Lcom/android/settings/localepicker/LocaleLinearLayoutManager;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "LocaleLinearLayoutManager.java"


# instance fields
.field private final mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

.field private final mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1200ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0024

    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1200b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0022

    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1200b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1200b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0021

    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    iget-object v1, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mContext:Landroid/content/Context;

    const v2, 0x7f1200bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0025

    invoke-direct {v0, v2, v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;-><init>(ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutManager;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;)V

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    move-object v2, p3

    check-cast v2, Lcom/android/settings/localepicker/LocaleDragCell;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/settings/localepicker/LocaleDragCell;->getCheckbox()Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/CheckBox;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p4, v3}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->isRemoveMode()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    if-lez v1, :cond_1

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveUp:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveTop:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_1
    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveDown:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionMoveBottom:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_2
    const/4 v4, 0x1

    if-le v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mActionRemove:Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;

    invoke-virtual {p4, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->addAction(Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityActionCompat;)V

    :cond_3
    return-void
.end method

.method public performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getItemCount()I

    move-result v0

    invoke-virtual {p0, p3}, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x0

    packed-switch p4, :pswitch_data_0

    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutManager;->performAccessibilityActionForItem(Landroid/support/v7/widget/RecyclerView$Recycler;Landroid/support/v7/widget/RecyclerView$State;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v3

    return v3

    :pswitch_0
    const/4 v3, 0x1

    if-le v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3, v1}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->removeItem(I)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_1
    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_3
    add-int/lit8 v3, v1, 0x1

    if-ge v3, v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 v2, 0x1

    goto :goto_0

    :pswitch_4
    add-int/lit8 v3, v0, -0x1

    if-eq v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->onItemMove(II)V

    const/4 v2, 0x1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/settings/localepicker/LocaleLinearLayoutManager;->mAdapter:Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v3}, Lcom/android/settings/localepicker/LocaleDragAndDropAdapter;->doTheUpdate()V

    :cond_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0021
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
