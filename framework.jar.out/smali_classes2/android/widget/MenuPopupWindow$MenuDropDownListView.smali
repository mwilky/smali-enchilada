.class public Landroid/widget/MenuPopupWindow$MenuDropDownListView;
.super Landroid/widget/DropDownListView;
.source "MenuPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MenuPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MenuDropDownListView"
.end annotation


# instance fields
.field final mAdvanceKey:I

.field private mHoverListener:Landroid/widget/MenuItemHoverListener;

.field private mHoveredMenuItem:Landroid/view/MenuItem;

.field final mRetreatKey:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/widget/DropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/16 v3, 0x16

    const/16 v4, 0x15

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    iput v3, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    goto :goto_0

    :cond_0
    iput v3, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    iput v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    :goto_0
    return-void
.end method


# virtual methods
.method public clearSelection()V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/view/menu/MenuAdapter;

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->pointToPosition(II)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    sub-int v5, v4, v2

    if-ltz v5, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuAdapter;->getCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-virtual {v1, v5}, Lcom/android/internal/view/menu/MenuAdapter;->getItem(I)Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v3

    :cond_1
    iget-object v4, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eq v4, v3, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v5

    if-eqz v4, :cond_2

    iget-object v6, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v6, v5, v4}, Landroid/widget/MenuItemHoverListener;->onItemHoverExit(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_2
    iput-object v3, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoveredMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_3

    iget-object v6, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    invoke-interface {v6, v5, v3}, Landroid/widget/MenuItemHoverListener;->onItemHoverEnter(Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/widget/DropDownListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mAdvanceKey:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuItemView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ListMenuItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v2

    if-eqz v2, :cond_0

    nop

    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getSelectedItemId()J

    move-result-wide v3

    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    iget v2, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mRetreatKey:I

    if-ne p1, v2, :cond_2

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v2}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuAdapter;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuAdapter;->getAdapterMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    return v1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public setHoverListener(Landroid/widget/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/MenuPopupWindow$MenuDropDownListView;->mHoverListener:Landroid/widget/MenuItemHoverListener;

    return-void
.end method
