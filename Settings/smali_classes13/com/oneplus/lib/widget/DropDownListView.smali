.class public Lcom/oneplus/lib/widget/DropDownListView;
.super Lcom/oneplus/lib/widget/OPListViewCompat;
.source "DropDownListView.java"


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mListSelectionHidden:Z

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x101006d

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/widget/OPListViewCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DropDownListView;->setCacheColorHint(I)V

    return-void
.end method

.method private clearPressedItem()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DropDownListView;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->drawableStateChanged()V

    iget v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    :cond_1
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    invoke-virtual {p0, p3, p4}, Lcom/oneplus/lib/widget/DropDownListView;->drawableHotspotChanged(FF)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/DropDownListView;->setPressed(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->layoutChildren()V

    iget v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    iput p2, p0, Lcom/oneplus/lib/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v3, p4, v3

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v5, v2, :cond_3

    invoke-virtual {p1, v1, v3}, Landroid/view/View;->drawableHotspotChanged(FF)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    :cond_4
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/oneplus/lib/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/DropDownListView;->setSelectorEnabled(Z)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->refreshDrawableState()V

    return-void
.end method


# virtual methods
.method public hasFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public hasWindowFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isFocused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public isInTouchMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :pswitch_2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-gez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/widget/DropDownListView;->pointToPosition(II)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v7, v8

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    int-to-float v9, v5

    int-to-float v10, v6

    invoke-direct {p0, v8, v7, v9, v10}, Lcom/oneplus/lib/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    const/4 v0, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct {p0, v8, v7}, Lcom/oneplus/lib/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/widget/DropDownListView;->clearPressedItem()V

    :cond_4
    if-eqz v0, :cond_6

    iget-object v4, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v4, :cond_5

    new-instance v4, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v4, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v4, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    :cond_5
    iget-object v4, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    iget-object v3, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v3, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/lib/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    :cond_7
    :goto_1
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/DropDownListView;->mListSelectionHidden:Z

    return-void
.end method

.method protected touchModeDrawsInPressedStateCompat()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/DropDownListView;->mDrawsInPressedState:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPListViewCompat;->touchModeDrawsInPressedStateCompat()Z

    move-result v0

    if-eqz v0, :cond_0

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
