.class public Lcom/oneplus/lib/menu/CascadingMenuPopup;
.super Lcom/oneplus/lib/menu/MenuPopup;
.source "CascadingMenuPopup.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;,
        Lcom/oneplus/lib/menu/CascadingMenuPopup$HorizPosition;
    }
.end annotation


# static fields
.field static final HORIZ_POSITION_LEFT:I = 0x0

.field static final HORIZ_POSITION_RIGHT:I = 0x1

.field static final SUBMENU_TIMEOUT_MS:I = 0xc8


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasXOffset:Z

.field private mHasYOffset:Z

.field private mLastPosition:I

.field private final mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

.field private final mMenuMaxWidth:I

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private final mPendingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/MenuBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mRawDropDownGravity:I

.field mShouldCloseImmediately:Z

.field private mShowTitle:Z

.field final mShowingMenus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;",
            ">;"
        }
    .end annotation
.end field

.field mShownAnchorView:Landroid/view/View;

.field final mSubMenuHoverHandler:Landroid/os/Handler;

.field private mTreeObserver:Landroid/view/ViewTreeObserver;

.field private mXOffset:I

.field private mYOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;IIZ)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopup;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$1;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$2;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    new-instance v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$3;-><init>(Lcom/oneplus/lib/menu/CascadingMenuPopup;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput p3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iput p4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    iput-boolean p5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v1, v1, 0x2

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->op_abc_config_prefDialogWidth:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mSubMenuHoverHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/lib/menu/CascadingMenuPopup;Landroid/view/ViewTreeObserver;)Landroid/view/ViewTreeObserver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/menu/CascadingMenuPopup;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method private createPopupWindow()Lcom/oneplus/lib/menu/MenuPopupWindow;
    .locals 5

    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupWindow;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleAttr:I

    iget v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPopupStyleRes:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuItemHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    iget v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setDropDownGravity(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setModal(Z)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setInputMethodMode(I)V

    return-object v0
.end method

.method private findIndexOfAddedMenu(Lcom/oneplus/lib/menu/MenuBuilder;)I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private findMenuItemForSubmenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/MenuItem;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->hasSubMenu()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    if-ne p2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findParentViewForSubmenu(Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/View;
    .locals 10

    iget-object v0, p1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findMenuItemForSubmenu(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v4, v3, Landroid/widget/HeaderViewListAdapter;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v5

    invoke-virtual {v4}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/oneplus/lib/menu/MenuAdapter;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move-object v4, v3

    check-cast v4, Lcom/oneplus/lib/menu/MenuAdapter;

    :goto_0
    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuAdapter;->getCount()I

    move-result v8

    :goto_1
    if-ge v7, v8, :cond_3

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/menu/MenuAdapter;->getItem(I)Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v9

    if-ne v0, v9, :cond_2

    move v6, v7

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_4

    return-object v1

    :cond_4
    add-int/2addr v6, v5

    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v6, v7

    if-ltz v7, :cond_6

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v8

    if-lt v7, v8, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v2, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_6
    :goto_3
    return-object v1
.end method

.method private getInitialMenuPosition()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1
.end method

.method private getNextMenuPosition(I)I
    .locals 7

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getLocationOnScreen([I)V

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    const/4 v5, 0x0

    if-ne v4, v2, :cond_1

    aget v4, v1, v5

    invoke-virtual {v0}, Landroid/widget/ListView;->getWidth()I

    move-result v6

    add-int/2addr v4, v6

    add-int/2addr v4, p1

    iget v6, v3, Landroid/graphics/Rect;->right:I

    if-le v4, v6, :cond_0

    return v5

    :cond_0
    return v2

    :cond_1
    aget v4, v1, v5

    sub-int/2addr v4, p1

    if-gez v4, :cond_2

    return v2

    :cond_2
    return v5
.end method

.method private showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    new-instance v3, Lcom/oneplus/lib/menu/MenuAdapter;

    iget-boolean v4, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOverflowOnly:Z

    invoke-direct {v3, v1, v2, v4}, Lcom/oneplus/lib/menu/MenuAdapter;-><init>(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/LayoutInflater;Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    iget-boolean v4, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/oneplus/lib/menu/MenuPopup;->shouldPreserveIconSpacing(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/menu/MenuAdapter;->setForceShowIcon(Z)V

    :cond_1
    :goto_0
    iget-object v4, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    iget v6, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mMenuMaxWidth:I

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v6}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->measureIndividualMenuWidth(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;I)I

    move-result v4

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->createPopupWindow()Lcom/oneplus/lib/menu/MenuPopupWindow;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v6, v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setContentWidth(I)V

    iget v8, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    invoke-virtual {v6, v8}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setDropDownGravity(I)V

    iget-object v8, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2

    iget-object v8, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v9, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-direct {v0, v8, v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findParentViewForSubmenu(Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;Lcom/oneplus/lib/menu/MenuBuilder;)Landroid/view/View;

    move-result-object v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    move-object v9, v7

    :goto_1
    const/4 v10, 0x0

    if-eqz v9, :cond_8

    invoke-virtual {v6, v10}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setTouchModal(Z)V

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEnterTransition(Ljava/lang/Object;)V

    invoke-direct {v0, v4}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getNextMenuPosition(I)I

    move-result v11

    if-ne v11, v5, :cond_3

    move v12, v5

    goto :goto_2

    :cond_3
    move v12, v10

    :goto_2
    iput v11, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastO()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v6, v9}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnchorView(Landroid/view/View;)V

    const/4 v13, 0x0

    const/4 v14, 0x0

    goto :goto_3

    :cond_4
    const/4 v13, 0x2

    new-array v14, v13, [I

    iget-object v15, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v15, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    new-array v13, v13, [I

    invoke-virtual {v9, v13}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v15, v13, v10

    aget v16, v14, v10

    sub-int v15, v15, v16

    aget v16, v13, v5

    aget v17, v14, v5

    sub-int v14, v16, v17

    move v13, v15

    :goto_3
    iget v15, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    const/4 v7, 0x5

    and-int/2addr v15, v7

    if-ne v15, v7, :cond_6

    if-eqz v12, :cond_5

    add-int v7, v13, v4

    :goto_4
    goto :goto_5

    :cond_5
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v7

    sub-int v7, v13, v7

    goto :goto_4

    :cond_6
    if-eqz v12, :cond_7

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v13

    goto :goto_4

    :cond_7
    sub-int v7, v13, v4

    :goto_5
    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHorizontalOffset(I)V

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setOverlapAnchor(Z)V

    invoke-virtual {v6, v14}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setVerticalOffset(I)V

    goto :goto_6

    :cond_8
    iget-boolean v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    if-eqz v5, :cond_9

    iget v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setHorizontalOffset(I)V

    :cond_9
    iget-boolean v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    if-eqz v5, :cond_a

    iget v5, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setVerticalOffset(I)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :goto_6
    new-instance v5, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v7, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    invoke-direct {v5, v6, v1, v7}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;-><init>(Lcom/oneplus/lib/menu/MenuPopupWindow;Lcom/oneplus/lib/menu/MenuBuilder;I)V

    iget-object v7, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    if-nez v8, :cond_b

    iget-boolean v11, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    if-eqz v11, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v11

    if-eqz v11, :cond_b

    sget v11, Lcom/oneplus/commonctrl/R$layout;->op_abc_popup_menu_header_item_layout:I

    invoke-virtual {v2, v11, v7, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    const v12, 0x1020016

    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/lib/menu/MenuBuilder;->getHeaderTitle()Ljava/lang/CharSequence;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v13, 0x0

    invoke-virtual {v7, v11, v13, v10}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    invoke-virtual {v6}, Lcom/oneplus/lib/menu/MenuPopupWindow;->show()V

    :cond_b
    return-void
.end method


# virtual methods
.method public addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected closeMenuOnSubMenuOpened()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public dismiss()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    new-array v2, v0, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    aget-object v3, v1, v2

    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->dismiss()V

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public bridge synthetic expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    move-result p1

    return p1
.end method

.method public flagActionItems()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getEpicenterBounds()Landroid/graphics/Rect;
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getEpicenterBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getId()I
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/menu/MenuPopup;->getId()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object p1

    return-object p1
.end method

.method public getVerticalOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/lib/menu/MenuBuilder;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopup;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public isShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v0, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->findIndexOfAddedMenu(Lcom/oneplus/lib/menu/MenuBuilder;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    iget-boolean v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShouldCloseImmediately:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setExitTransition(Ljava/lang/Object;)V

    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuPopupWindow;->setAnimationStyle(I)V

    :cond_2
    iget-object v4, v2, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->dismiss()V

    iget-object v4, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    add-int/lit8 v7, v4, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget v6, v6, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    iput v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->getInitialMenuPosition()I

    move-result v6

    iput v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mLastPosition:I

    :goto_0
    if-nez v4, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    const/4 v6, 0x1

    invoke-interface {v3, p1, v6}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    :cond_4
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v3}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v6, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v3, v6}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_5
    iput-object v5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v3, v5}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v3}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    goto :goto_1

    :cond_7
    if-eqz p2, :cond_8

    iget-object v5, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v6, v5, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v6, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onDismiss()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v4, v3, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Lcom/oneplus/lib/menu/MenuPopupWindow;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/MenuPopupWindow;->isShowing()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/oneplus/lib/menu/MenuPopup;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x52

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->dismiss()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    iget-object v3, v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v3, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    return v2

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/menu/MenuPresenter$Callback;->onOpenSubMenu(Lcom/oneplus/lib/menu/MenuBuilder;)Z

    :cond_2
    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iget v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    return-void
.end method

.method public bridge synthetic setEpicenterBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mForceShowIcon:Z

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mRawDropDownGravity:I

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    invoke-static {p1, v0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mDropDownGravity:I

    :cond_0
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasXOffset:Z

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mXOffset:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setShowTitle(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowTitle:Z

    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mHasYOffset:Z

    iput p1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mYOffset:I

    return-void
.end method

.method public show()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {p0, v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->showMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mPendingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAnchorView:Landroid/view/View;

    iput-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShownAnchorView:Landroid/view/View;

    iget-object v2, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_4
    return-void
.end method

.method public updateMenuView(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/menu/CascadingMenuPopup;->mShowingMenus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/CascadingMenuPopup$CascadingMenuInfo;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/lib/menu/CascadingMenuPopup;->toMenuAdapter(Landroid/widget/ListAdapter;)Lcom/oneplus/lib/menu/MenuAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method
