.class public Lcom/oneplus/lib/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemLayoutRes:I

    iput p2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mThemeRes:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;-><init>(II)V

    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/oneplus/lib/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/ExpandedMenuView;

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;-><init>(Lcom/oneplus/lib/menu/ListMenuPresenter;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Lcom/oneplus/lib/menu/MenuPresenter;I)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/menu/MenuDialogHelper;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mId:I

    return-void
.end method

.method public setItemIndexOffset(I)V
    .locals 1

    iput p1, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mItemIndexOffset:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/ExpandedMenuView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->updateMenuView(Z)V

    :cond_0
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ListMenuPresenter;->mAdapter:Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
