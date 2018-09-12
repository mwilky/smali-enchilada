.class public Lcom/oneplus/lib/menu/ActionMenuPresenter;
.super Lcom/oneplus/lib/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_layout:I

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 65
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 75
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    .line 80
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 313
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 314
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 316
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 317
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 318
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 319
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/oneplus/lib/menu/MenuView$ItemView;

    .line 320
    invoke-interface {v5}, Lcom/oneplus/lib/menu/MenuView$ItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 321
    return-object v4

    .line 317
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 324
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
    .locals 3
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/oneplus/lib/menu/MenuView$ItemView;

    .line 202
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/oneplus/lib/menu/MenuView$ItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    .line 204
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 205
    .local v0, "menuView":Lcom/oneplus/lib/menu/ActionMenuView;
    move-object v1, p2

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuItemView;

    .line 206
    .local v1, "actionItemView":Lcom/oneplus/lib/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setItemInvoker(Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;)V

    .line 208
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 209
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setPopupCallback(Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;)V

    .line 212
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 373
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 374
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 375
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 270
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 271
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 26

    .line 413
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 414
    iget-object v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 415
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "itemsSize":I
    goto :goto_0

    .line 417
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v3    # "itemsSize":I
    :cond_0
    const/4 v1, 0x0

    .line 418
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    move v3, v2

    .line 421
    .restart local v3    # "itemsSize":I
    :goto_0
    iget v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 422
    .local v4, "maxActions":I
    iget v5, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 423
    .local v5, "widthLimit":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 424
    .local v6, "querySpec":I
    iget-object v7, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 426
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 427
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 428
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 429
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 430
    .local v11, "hasOverflow":Z
    move v12, v4

    move v4, v2

    .local v4, "i":I
    .local v12, "maxActions":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 431
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 432
    .local v13, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 433
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 434
    :cond_1
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 435
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 437
    :cond_2
    const/4 v11, 0x1

    .line 439
    :goto_2
    iget-boolean v14, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 442
    const/4 v12, 0x0

    .line 430
    .end local v13    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 447
    .end local v4    # "i":I
    :cond_4
    iget-boolean v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    if-nez v11, :cond_5

    add-int v4, v8, v9

    if-le v4, v12, :cond_6

    .line 449
    :cond_5
    add-int/lit8 v12, v12, -0x1

    .line 451
    :cond_6
    sub-int/2addr v12, v8

    .line 453
    iget-object v4, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 454
    .local v4, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 456
    const/4 v13, 0x0

    .line 457
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 458
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    .line 459
    iget v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v5, v15

    .line 460
    iget v15, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    rem-int v15, v5, v15

    .line 461
    .local v15, "cellSizeRemaining":I
    iget v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    div-int v16, v15, v14

    add-int v13, v2, v16

    .line 465
    .end local v15    # "cellSizeRemaining":I
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_20

    .line 466
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 468
    .local v15, "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 469
    move/from16 v17, v3

    iget-object v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .end local v3    # "itemsSize":I
    .local v17, "itemsSize":I
    invoke-virtual {v0, v15, v3, v7}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 470
    .local v3, "v":Landroid/view/View;
    move/from16 v18, v8

    iget-object v8, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .end local v8    # "requiredItems":I
    .local v18, "requiredItems":I
    if-nez v8, :cond_8

    .line 471
    iput-object v3, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 473
    :cond_8
    iget-boolean v8, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_9

    .line 474
    const/4 v8, 0x0

    invoke-static {v3, v13, v14, v6, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v16

    sub-int v14, v14, v16

    goto :goto_4

    .line 477
    :cond_9
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 479
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 480
    .local v8, "measuredWidth":I
    sub-int/2addr v5, v8

    .line 481
    if-nez v10, :cond_a

    .line 482
    move v10, v8

    .line 484
    :cond_a
    move-object/from16 v19, v3

    invoke-virtual {v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 485
    .local v3, "groupId":I
    .local v19, "v":Landroid/view/View;
    if-eqz v3, :cond_b

    .line 486
    move/from16 v20, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 488
    :cond_b
    move/from16 v20, v5

    const/4 v5, 0x1

    .end local v5    # "widthLimit":I
    .local v20, "widthLimit":I
    :goto_5
    invoke-virtual {v15, v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 489
    .end local v3    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v19    # "v":Landroid/view/View;
    nop

    .line 465
    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v21, v9

    move/from16 v5, v20

    .end local v6    # "querySpec":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "requestedItems":I
    .end local v15    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    .end local v20    # "widthLimit":I
    .restart local v5    # "widthLimit":I
    .local v21, "requestedItems":I
    .local v23, "parent":Landroid/view/ViewGroup;
    .local v24, "querySpec":I
    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_11

    .line 489
    .end local v17    # "itemsSize":I
    .end local v18    # "requiredItems":I
    .end local v21    # "requestedItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v3, "itemsSize":I
    .restart local v6    # "querySpec":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    .restart local v9    # "requestedItems":I
    .restart local v15    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_c
    move/from16 v17, v3

    move/from16 v18, v8

    .end local v3    # "itemsSize":I
    .end local v8    # "requiredItems":I
    .restart local v17    # "itemsSize":I
    .restart local v18    # "requiredItems":I
    invoke-virtual {v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 492
    invoke-virtual {v15}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 493
    .local v3, "groupId":I
    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 494
    .local v8, "inGroup":Z
    if-gtz v12, :cond_e

    if-eqz v8, :cond_d

    goto :goto_7

    :cond_d
    move/from16 v21, v9

    goto :goto_8

    :cond_e
    :goto_7
    if-lez v5, :cond_10

    move/from16 v21, v9

    iget-boolean v9, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .end local v9    # "requestedItems":I
    .restart local v21    # "requestedItems":I
    if-eqz v9, :cond_f

    if-lez v14, :cond_11

    :cond_f
    const/4 v9, 0x1

    goto :goto_9

    .end local v21    # "requestedItems":I
    .restart local v9    # "requestedItems":I
    :cond_10
    move/from16 v21, v9

    .end local v9    # "requestedItems":I
    .restart local v21    # "requestedItems":I
    :cond_11
    :goto_8
    const/4 v9, 0x0

    .line 497
    .local v9, "isAction":Z
    :goto_9
    if-eqz v9, :cond_19

    .line 498
    move/from16 v22, v9

    iget-object v9, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .end local v9    # "isAction":Z
    .local v22, "isAction":Z
    invoke-virtual {v0, v15, v9, v7}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 499
    .local v9, "v":Landroid/view/View;
    move-object/from16 v23, v7

    iget-object v7, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    if-nez v7, :cond_12

    .line 500
    iput-object v9, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 502
    :cond_12
    iget-boolean v7, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v7, :cond_14

    .line 503
    const/4 v7, 0x0

    invoke-static {v9, v13, v14, v6, v7}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v16

    .line 505
    .local v16, "cells":I
    sub-int v14, v14, v16

    .line 506
    if-nez v16, :cond_13

    .line 507
    const/4 v7, 0x0

    .end local v16    # "cells":I
    .end local v22    # "isAction":Z
    .local v7, "isAction":Z
    goto :goto_a

    .line 509
    .end local v7    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_13
    move/from16 v7, v22

    .end local v22    # "isAction":Z
    .restart local v7    # "isAction":Z
    :goto_a
    goto :goto_b

    .line 510
    .end local v7    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_14
    invoke-virtual {v9, v6, v6}, Landroid/view/View;->measure(II)V

    .line 512
    move/from16 v7, v22

    .end local v22    # "isAction":Z
    .restart local v7    # "isAction":Z
    :goto_b
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    .line 513
    .local v16, "measuredWidth":I
    sub-int v5, v5, v16

    .line 514
    if-nez v10, :cond_15

    .line 515
    move/from16 v10, v16

    .line 518
    :cond_15
    move/from16 v24, v6

    iget-boolean v6, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .end local v6    # "querySpec":I
    .restart local v24    # "querySpec":I
    if-eqz v6, :cond_17

    .line 519
    if-ltz v5, :cond_16

    const/4 v6, 0x1

    goto :goto_c

    :cond_16
    const/4 v6, 0x0

    :goto_c
    and-int/2addr v6, v7

    .end local v7    # "isAction":Z
    .local v6, "isAction":Z
    goto :goto_e

    .line 522
    .end local v6    # "isAction":Z
    .restart local v7    # "isAction":Z
    :cond_17
    add-int v6, v5, v10

    if-lez v6, :cond_18

    const/4 v6, 0x1

    goto :goto_d

    :cond_18
    const/4 v6, 0x0

    :goto_d
    and-int v9, v7, v6

    .line 526
    .end local v7    # "isAction":Z
    .end local v16    # "measuredWidth":I
    .local v9, "isAction":Z
    move v6, v9

    goto :goto_e

    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v6, "querySpec":I
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_19
    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v22, v9

    move/from16 v6, v22

    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "isAction":Z
    .local v6, "isAction":Z
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v24    # "querySpec":I
    :goto_e
    if-eqz v6, :cond_1a

    if-eqz v3, :cond_1a

    .line 527
    const/4 v7, 0x1

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_10

    .line 528
    :cond_1a
    if-eqz v8, :cond_1d

    .line 530
    const/4 v7, 0x0

    invoke-virtual {v4, v3, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 531
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_f
    if-ge v7, v2, :cond_1d

    .line 532
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 533
    .local v9, "areYouMyGroupie":Lcom/oneplus/lib/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    if-ne v0, v3, :cond_1c

    .line 535
    invoke-virtual {v9}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-eqz v0, :cond_1b

    add-int/lit8 v12, v12, 0x1

    .line 536
    :cond_1b
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 531
    .end local v9    # "areYouMyGroupie":Lcom/oneplus/lib/menu/MenuItemImpl;
    :cond_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_f

    .line 541
    .end local v7    # "j":I
    :cond_1d
    :goto_10
    if-eqz v6, :cond_1e

    add-int/lit8 v12, v12, -0x1

    .line 543
    :cond_1e
    invoke-virtual {v15, v6}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 544
    .end local v3    # "groupId":I
    .end local v6    # "isAction":Z
    .end local v8    # "inGroup":Z
    goto/16 :goto_6

    .line 546
    .end local v21    # "requestedItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v6, "querySpec":I
    .local v7, "parent":Landroid/view/ViewGroup;
    .local v9, "requestedItems":I
    :cond_1f
    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v21, v9

    .end local v6    # "querySpec":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v9    # "requestedItems":I
    .restart local v21    # "requestedItems":I
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v24    # "querySpec":I
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 465
    .end local v15    # "item":Lcom/oneplus/lib/menu/MenuItemImpl;
    :goto_11
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    move/from16 v8, v18

    move/from16 v9, v21

    move-object/from16 v7, v23

    move/from16 v6, v24

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 549
    .end local v2    # "i":I
    .end local v17    # "itemsSize":I
    .end local v18    # "requiredItems":I
    .end local v21    # "requestedItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v24    # "querySpec":I
    .local v3, "itemsSize":I
    .restart local v6    # "querySpec":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    .restart local v9    # "requestedItems":I
    :cond_20
    move/from16 v17, v3

    move/from16 v24, v6

    move-object/from16 v23, v7

    move/from16 v18, v8

    move/from16 v21, v9

    .end local v3    # "itemsSize":I
    .end local v6    # "querySpec":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "requiredItems":I
    .end local v9    # "requestedItems":I
    .restart local v17    # "itemsSize":I
    .restart local v18    # "requiredItems":I
    .restart local v21    # "requestedItems":I
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v24    # "querySpec":I
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 186
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 190
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 192
    move-object v1, p3

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 193
    .local v1, "menuParent":Lcom/oneplus/lib/menu/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 194
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 195
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 176
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    .line 177
    .local v0, "oldMenuView":Lcom/oneplus/lib/menu/MenuView;
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v1

    .line 178
    .local v1, "result":Lcom/oneplus/lib/menu/MenuView;
    if-eq v0, v1, :cond_0

    .line 179
    move-object v2, v1

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    .line 181
    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 171
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 357
    return v1

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    .line 361
    .local v0, "popup":Lcom/oneplus/lib/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 362
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->dismiss()V

    .line 363
    return v1

    .line 365
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 386
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 84
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object v1

    .line 89
    .local v1, "abp":Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    .line 90
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 93
    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    .line 94
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 98
    :cond_1
    iget-boolean v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    .line 99
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 102
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 103
    .local v2, "width":I
    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 104
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_4

    .line 105
    new-instance v3, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 106
    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 109
    iput-boolean v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 111
    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 112
    .local v3, "spec":I
    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v5, v3, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 114
    .end local v3    # "spec":I
    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 116
    :cond_5
    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 119
    :goto_0
    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 121
    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMinCellSize:I

    .line 124
    iput-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 125
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

.method public isOverflowMenuShowing()Z
    .locals 1

    .line 395
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 554
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 555
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    .line 556
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 128
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 134
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 567
    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    .line 568
    return-void

    .line 571
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    .line 572
    .local v0, "saved":Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    iget v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1

    .line 573
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 574
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 575
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 576
    .local v2, "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    .line 579
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 560
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;-><init>()V

    .line 561
    .local v0, "state":Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    iget v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 562
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/oneplus/lib/menu/SubMenuBuilder;

    .line 276
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 278
    :cond_0
    move-object v0, p1

    .line 279
    .local v0, "topSubMenu":Lcom/oneplus/lib/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 280
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/lib/menu/SubMenuBuilder;

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 283
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_2

    .line 288
    return v1

    .line 291
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->size()I

    move-result v4

    .line 295
    .local v4, "count":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 296
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 297
    .local v5, "childItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 298
    const/4 v3, 0x1

    .line 299
    goto :goto_2

    .line 295
    .end local v5    # "childItem":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 303
    .end local v1    # "i":I
    :cond_4
    :goto_2
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v5, p1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    .line 304
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 305
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    const v5, 0x800005

    invoke-virtual {v1, v5}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setGravity(I)V

    .line 306
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->showSubMenu()V

    .line 308
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    .line 309
    const/4 v1, 0x1

    return v1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 583
    if-eqz p1, :cond_0

    .line 585
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    .line 589
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .line 153
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 154
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .line 148
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItems:I

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 150
    return-void
.end method

.method public setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V
    .locals 1
    .param p1, "menuView"    # Lcom/oneplus/lib/menu/ActionMenuView;

    .line 592
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    .line 593
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    .line 594
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 157
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 160
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 161
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 163
    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .line 143
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    .line 144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 145
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 137
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimit:I

    .line 138
    iput-boolean p2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 140
    return-void
.end method

.method public shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 216
    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 332
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 333
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v5, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 335
    .local v0, "popup":Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    .line 337
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 341
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    .line 343
    const/4 v1, 0x1

    return v1

    .line 345
    .end local v0    # "popup":Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .line 221
    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 223
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 225
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 227
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 228
    .local v2, "count":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 229
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object v4

    .line 230
    .local v4, "provider":Lcom/oneplus/lib/widget/ActionProvider;
    if-eqz v4, :cond_0

    .line 231
    invoke-virtual {v4, p0}, Lcom/oneplus/lib/widget/ActionProvider;->setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V

    .line 228
    .end local v4    # "provider":Lcom/oneplus/lib/widget/ActionProvider;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 239
    .local v0, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 240
    .local v2, "hasOverflow":Z
    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 241
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 242
    .local v3, "count":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 243
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    xor-int/2addr v1, v4

    move v2, v1

    goto :goto_2

    .line 245
    :cond_3
    if-lez v3, :cond_4

    move v1, v4

    nop

    :cond_4
    move v2, v1

    .line 249
    .end local v3    # "count":I
    :cond_5
    :goto_2
    if-eqz v2, :cond_9

    .line 250
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v1, :cond_6

    .line 251
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    .line 253
    :cond_6
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 254
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eq v1, v3, :cond_8

    .line 255
    if-eqz v1, :cond_7

    .line 256
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_7
    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView;

    .line 259
    .local v3, "menuView":Lcom/oneplus/lib/menu/ActionMenuView;
    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "menuView":Lcom/oneplus/lib/menu/ActionMenuView;
    :cond_8
    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-ne v1, v3, :cond_a

    .line 262
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 265
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView;

    iget-boolean v3, p0, Lcom/oneplus/lib/menu/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowReserved(Z)V

    .line 266
    return-void
.end method
