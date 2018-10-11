.class public abstract Lcom/oneplus/lib/menu/BaseMenuPresenter;
.super Ljava/lang/Object;
.source "BaseMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field protected mContext:Landroid/content/Context;

.field private mId:I

.field protected mInflater:Landroid/view/LayoutInflater;

.field private mItemLayoutRes:I

.field protected mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mMenuLayoutRes:I

.field protected mMenuView:Lcom/oneplus/lib/menu/MenuView;

.field protected mSystemContext:Landroid/content/Context;

.field protected mSystemInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iput p2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    iput p3, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mItemLayoutRes:I

    return-void
.end method


# virtual methods
.method protected addItemView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public abstract bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
.end method

.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public createItemView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView$ItemView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mItemLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuView$ItemView;

    return-object v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCallback()Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mId:I

    return v0
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    instance-of v0, p2, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/oneplus/lib/menu/MenuView$ItemView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->createItemView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView$ItemView;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    return-object v1
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mSystemInflater:Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuLayoutRes:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    iget-object v1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/MenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->updateMenuView(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    iput-object p2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mId:I

    return-void
.end method

.method public shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->flagActionItems()V

    iget-object v2, p0, Lcom/oneplus/lib/menu/BaseMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_5

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p0, v5, v6}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v8, :cond_1

    move-object v8, v7

    check-cast v8, Lcom/oneplus/lib/menu/MenuView$ItemView;

    invoke-interface {v8}, Lcom/oneplus/lib/menu/MenuView$ItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v8

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    invoke-virtual {p0, v6, v7, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    if-eq v6, v8, :cond_2

    invoke-virtual {v9, v4}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v9}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v9, v7, :cond_3

    invoke-virtual {p0, v9, v5}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->addItemView(Landroid/view/View;I)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v5

    :cond_6
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v2

    if-nez v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
