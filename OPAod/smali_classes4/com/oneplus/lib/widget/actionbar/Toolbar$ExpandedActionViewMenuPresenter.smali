.class Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/actionbar/Toolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpandedActionViewMenuPresenter"
.end annotation


# instance fields
.field mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

.field mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field final synthetic this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    .line 2388
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Lcom/oneplus/lib/widget/actionbar/Toolbar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/actionbar/Toolbar$1;

    .line 2388
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 2479
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_0

    .line 2480
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v0, Landroid/view/CollapsibleActionView;

    invoke-interface {v0}, Landroid/view/CollapsibleActionView;->onActionViewCollapsed()V

    .line 2483
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 2484
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$300(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeView(Landroid/view/View;)V

    .line 2485
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2487
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addChildrenForExpandedActionView()V

    .line 2488
    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 2489
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 2490
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2492
    const/4 v0, 0x1

    return v0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 3
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 2450
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$200(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    .line 2451
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$300(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eq v0, v1, :cond_0

    .line 2452
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$300(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;)V

    .line 2454
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    .line 2455
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 2456
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eq v0, v1, :cond_1

    .line 2457
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    .line 2458
    .local v0, "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    const v1, 0x800003

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-static {v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->access$400(Lcom/oneplus/lib/widget/actionbar/Toolbar;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->gravity:I

    .line 2459
    const/4 v1, 0x2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    .line 2460
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2461
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v2, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addView(Landroid/view/View;)V

    .line 2464
    .end local v0    # "lp":Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->removeChildrenForExpandedActionView()V

    .line 2465
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->requestLayout()V

    .line 2466
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setActionViewExpanded(Z)V

    .line 2468
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/CollapsibleActionView;

    if-eqz v1, :cond_2

    .line 2469
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->this$0:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    check-cast v1, Landroid/view/CollapsibleActionView;

    invoke-interface {v1}, Landroid/view/CollapsibleActionView;->onActionViewExpanded()V

    .line 2472
    :cond_2
    return v0
.end method

.method public flagActionItems()Z
    .locals 1

    .line 2445
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .line 2497
    const/4 v0, 0x0

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 1
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 2403
    const/4 v0, 0x0

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 2395
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 2396
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    .line 2398
    :cond_0
    iput-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 2399
    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 2441
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 2507
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .line 2502
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 1
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 2436
    const/4 v0, 0x0

    return v0
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0
    .param p1, "cb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 2432
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 5
    .param p1, "cleared"    # Z

    .line 2409
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_2

    .line 2410
    const/4 v0, 0x0

    .line 2412
    .local v0, "found":Z
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 2413
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    .line 2414
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2415
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2416
    .local v3, "item":Landroid/view/MenuItem;
    iget-object v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-ne v3, v4, :cond_0

    .line 2417
    const/4 v0, 0x1

    .line 2418
    goto :goto_1

    .line 2414
    .end local v3    # "item":Landroid/view/MenuItem;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2423
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_2

    .line 2425
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    .line 2428
    .end local v0    # "found":Z
    :cond_2
    return-void
.end method
