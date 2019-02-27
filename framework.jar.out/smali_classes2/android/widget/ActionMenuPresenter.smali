.class public Landroid/widget/ActionMenuPresenter;
.super Lcom/android/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;,
        Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;,
        Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final ACTIONBAR_ANIMATIONS_ENABLED:Z = false

.field private static final ITEM_ANIMATION_DURATION:I = 0x96


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

.field private mExpandedActionViewsExclusive:Z

.field private mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

.field private mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mPreLayoutItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mRunningItemAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 127
    const v0, 0x109001f

    const v1, 0x109001e

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 82
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 90
    new-instance v0, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    .line 100
    new-instance v0, Landroid/widget/ActionMenuPresenter$1;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$1;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 110
    new-instance v0, Landroid/widget/ActionMenuPresenter$2;

    invoke-direct {v0, p0}, Landroid/widget/ActionMenuPresenter$2;-><init>(Landroid/widget/ActionMenuPresenter;)V

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    .line 129
    return-void
.end method

.method static synthetic access$100(Landroid/widget/ActionMenuPresenter;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Z

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    return-void
.end method

.method static synthetic access$1000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)Landroid/widget/ActionMenuPresenter$OverflowPopup;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 61
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$1202(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 61
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$1300(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 61
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/ActionMenuPresenter;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    invoke-direct {p0}, Landroid/widget/ActionMenuPresenter;->runItemAnimations()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ActionMenuPresenter;)Landroid/view/ViewTreeObserver$OnPreDrawListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ActionMenuPresenter;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ActionMenuPresenter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ActionMenuPresenter;

    .line 61
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    return-object v0
.end method

.method private computeMenuItemAnimationInfo(Z)V
    .locals 7
    .param p1, "preLayout"    # Z

    .line 278
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 279
    .local v0, "menuView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 280
    .local v1, "count":I
    if-eqz p1, :cond_0

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 281
    .local v2, "items":Landroid/util/SparseArray;
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 282
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 283
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 284
    .local v5, "id":I
    if-lez v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eqz v6, :cond_1

    .line 285
    new-instance v6, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    invoke-direct {v6, v4, p1}, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;-><init>(Landroid/view/View;Z)V

    .line 286
    .local v6, "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    invoke-virtual {v2, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 281
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "id":I
    .end local v6    # "info":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 289
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 530
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 531
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 533
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 534
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 535
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 536
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Lcom/android/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 537
    invoke-interface {v5}, Lcom/android/internal/view/menu/MenuView$ItemView;->getItemData()Lcom/android/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    .line 538
    return-object v4

    .line 534
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 541
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private runItemAnimations()V
    .locals 17

    .line 300
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v2, v3, :cond_b

    .line 301
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 302
    .local v3, "id":I
    iget-object v8, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 303
    .local v8, "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    iget-object v9, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    .line 304
    .local v9, "postLayoutIndex":I
    const/4 v10, 0x0

    if-ltz v9, :cond_8

    .line 306
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 307
    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 308
    .local v11, "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v12, 0x0

    .line 309
    .local v12, "pvhX":Landroid/animation/PropertyValuesHolder;
    const/4 v13, 0x0

    .line 310
    .local v13, "pvhY":Landroid/animation/PropertyValuesHolder;
    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    if-eq v14, v15, :cond_0

    .line 311
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v15, v6, [F

    iget v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    iget v5, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    aput v4, v15, v1

    aput v10, v15, v7

    invoke-static {v14, v15}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    .line 314
    :cond_0
    iget v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v5, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    if-eq v4, v5, :cond_1

    .line 315
    sget-object v4, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v5, v6, [F

    iget v14, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    iget v15, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->top:I

    sub-int/2addr v14, v15

    int-to-float v14, v14

    aput v14, v5, v1

    aput v10, v5, v7

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    .line 318
    :cond_1
    if-nez v12, :cond_2

    if-eqz v13, :cond_7

    .line 319
    :cond_2
    move v4, v1

    .local v4, "j":I
    :goto_1
    iget-object v5, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 320
    iget-object v5, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 321
    .local v5, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v10, v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v10, v3, :cond_3

    iget v10, v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-nez v10, :cond_3

    .line 322
    iget-object v10, v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v10}, Landroid/animation/Animator;->cancel()V

    .line 319
    .end local v5    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 326
    .end local v4    # "j":I
    :cond_4
    if-eqz v12, :cond_6

    .line 327
    if-eqz v13, :cond_5

    .line 328
    iget-object v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v5, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v5, v1

    aput-object v13, v5, v7

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    goto :goto_3

    .line 331
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    :cond_5
    iget-object v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v5, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v12, v5, v1

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    goto :goto_2

    .line 334
    :cond_6
    iget-object v4, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    new-array v5, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v13, v5, v1

    invoke-static {v4, v5}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 336
    .restart local v4    # "anim":Landroid/animation/ObjectAnimator;
    :goto_3
    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 337
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 338
    new-instance v5, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v5, v3, v11, v4, v1}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 340
    .local v5, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v6, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    new-instance v6, Landroid/widget/ActionMenuPresenter$3;

    invoke-direct {v6, v0}, Landroid/widget/ActionMenuPresenter$3;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v4, v6}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 353
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_7
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 354
    .end local v11    # "menuItemLayoutInfoPost":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v12    # "pvhX":Landroid/animation/PropertyValuesHolder;
    .end local v13    # "pvhY":Landroid/animation/PropertyValuesHolder;
    goto :goto_5

    .line 356
    :cond_8
    const/high16 v4, 0x3f800000    # 1.0f

    .line 357
    .local v4, "oldAlpha":F
    move v5, v4

    move v4, v1

    .local v4, "j":I
    .local v5, "oldAlpha":F
    :goto_4
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_a

    .line 358
    iget-object v11, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 359
    .local v11, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v12, v3, :cond_9

    iget v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v12, v7, :cond_9

    .line 360
    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v12, v12, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getAlpha()F

    move-result v5

    .line 361
    iget-object v12, v11, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v12}, Landroid/animation/Animator;->cancel()V

    .line 357
    .end local v11    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 364
    .end local v4    # "j":I
    :cond_a
    iget-object v4, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v11, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v12, v6, [F

    aput v5, v12, v1

    aput v10, v12, v7

    invoke-static {v4, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 367
    .local v4, "anim":Landroid/animation/ObjectAnimator;
    iget-object v7, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    iget-object v10, v8, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 368
    const-wide/16 v10, 0x96

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 369
    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    .line 370
    new-instance v7, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v7, v3, v8, v4, v6}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    move-object v6, v7

    .line 371
    .local v6, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v7, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v7, Landroid/widget/ActionMenuPresenter$4;

    invoke-direct {v7, v0, v8}, Landroid/widget/ActionMenuPresenter$4;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;)V

    invoke-virtual {v4, v7}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    .end local v3    # "id":I
    .end local v4    # "anim":Landroid/animation/ObjectAnimator;
    .end local v5    # "oldAlpha":F
    .end local v6    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    .end local v8    # "menuItemLayoutInfoPre":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v9    # "postLayoutIndex":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 386
    .end local v2    # "i":I
    :cond_b
    move v2, v1

    .restart local v2    # "i":I
    :goto_6
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 387
    iget-object v3, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 388
    .restart local v3    # "id":I
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 389
    .local v4, "postLayoutIndex":I
    if-ltz v4, :cond_e

    .line 391
    iget-object v5, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    .line 392
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    .line 393
    .local v5, "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    const/4 v8, 0x0

    .line 394
    .local v8, "oldAlpha":F
    move v9, v8

    move v8, v1

    .local v8, "j":I
    .local v9, "oldAlpha":F
    :goto_7
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v8, v10, :cond_d

    .line 395
    iget-object v10, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    .line 396
    .local v10, "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->id:I

    if-ne v11, v3, :cond_c

    iget v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animType:I

    if-ne v11, v6, :cond_c

    .line 397
    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->menuItemLayoutInfo:Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;

    iget-object v11, v11, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getAlpha()F

    move-result v9

    .line 398
    iget-object v11, v10, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;->animator:Landroid/animation/Animator;

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    .line 394
    .end local v10    # "oldInfo":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    :cond_c
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 401
    .end local v8    # "j":I
    :cond_d
    iget-object v8, v5, Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;->view:Landroid/view/View;

    sget-object v10, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v11, v6, [F

    aput v9, v11, v1

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v7

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 403
    .local v8, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->start()V

    .line 404
    const-wide/16 v10, 0x96

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    new-instance v12, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;

    invoke-direct {v12, v3, v5, v8, v7}, Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;-><init>(ILandroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;Landroid/animation/Animator;I)V

    .line 406
    .local v12, "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    iget-object v13, v0, Landroid/widget/ActionMenuPresenter;->mRunningItemAnimations:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    new-instance v13, Landroid/widget/ActionMenuPresenter$5;

    invoke-direct {v13, v0}, Landroid/widget/ActionMenuPresenter$5;-><init>(Landroid/widget/ActionMenuPresenter;)V

    invoke-virtual {v8, v13}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .end local v3    # "id":I
    .end local v4    # "postLayoutIndex":I
    .end local v5    # "menuItemLayoutInfo":Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
    .end local v8    # "anim":Landroid/animation/ObjectAnimator;
    .end local v9    # "oldAlpha":F
    .end local v12    # "info":Landroid/widget/ActionMenuPresenter$ItemAnimationInfo;
    goto :goto_8

    .line 386
    :cond_e
    const-wide/16 v10, 0x96

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 420
    .end local v2    # "i":I
    :cond_f
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPreLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 421
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mPostLayoutItems:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 422
    return-void
.end method

.method private setupItemAnimations()V
    .locals 2

    .line 429
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ActionMenuPresenter;->computeMenuItemAnimationInfo(Z)V

    .line 430
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mItemAnimationPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 431
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 432
    return-void
.end method


# virtual methods
.method public bindItemView(Lcom/android/internal/view/menu/MenuItemImpl;Lcom/android/internal/view/menu/MenuView$ItemView;)V
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Lcom/android/internal/view/menu/MenuView$ItemView;

    .line 252
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/android/internal/view/menu/MenuView$ItemView;->initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V

    .line 254
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/widget/ActionMenuView;

    .line 255
    .local v0, "menuView":Landroid/widget/ActionMenuView;
    move-object v1, p2

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItemView;

    .line 256
    .local v1, "actionItemView":Lcom/android/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 258
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    .line 259
    new-instance v2, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 261
    :cond_0
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPopupCallback:Landroid/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->setPopupCallback(Lcom/android/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 262
    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    .line 590
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 591
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 592
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 489
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 490
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 26

    .line 629
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, v0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 631
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "itemsSize":I
    goto :goto_0

    .line 633
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v3    # "itemsSize":I
    :cond_0
    const/4 v1, 0x0

    .line 634
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    move v3, v2

    .line 637
    .restart local v3    # "itemsSize":I
    :goto_0
    iget v4, v0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 638
    .local v4, "maxActions":I
    iget v5, v0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 639
    .local v5, "widthLimit":I
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 640
    .local v6, "querySpec":I
    iget-object v7, v0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 642
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 643
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 644
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 645
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 646
    .local v11, "hasOverflow":Z
    move v12, v4

    move v4, v2

    .local v4, "i":I
    .local v12, "maxActions":I
    :goto_1
    if-ge v4, v3, :cond_4

    .line 647
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 648
    .local v13, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 649
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 650
    :cond_1
    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 651
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 653
    :cond_2
    const/4 v11, 0x1

    .line 655
    :goto_2
    iget-boolean v14, v0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 658
    const/4 v12, 0x0

    .line 646
    .end local v13    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 663
    .end local v4    # "i":I
    :cond_4
    iget-boolean v4, v0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v4, :cond_6

    if-nez v11, :cond_5

    add-int v4, v8, v9

    if-le v4, v12, :cond_6

    .line 665
    :cond_5
    add-int/lit8 v12, v12, -0x1

    .line 667
    :cond_6
    sub-int/2addr v12, v8

    .line 669
    iget-object v4, v0, Landroid/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 670
    .local v4, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    .line 672
    const/4 v13, 0x0

    .line 673
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 674
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    .line 675
    iget v15, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v5, v15

    .line 676
    iget v15, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    rem-int v15, v5, v15

    .line 677
    .local v15, "cellSizeRemaining":I
    iget v2, v0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v16, v15, v14

    add-int v13, v2, v16

    .line 681
    .end local v15    # "cellSizeRemaining":I
    :cond_7
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    if-ge v2, v3, :cond_1c

    .line 682
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 684
    .local v15, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v16

    move/from16 v18, v3

    const/4 v3, 0x0

    .end local v3    # "itemsSize":I
    .local v18, "itemsSize":I
    if-eqz v16, :cond_b

    .line 685
    invoke-virtual {v0, v15, v3, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 686
    .local v3, "v":Landroid/view/View;
    move/from16 v19, v8

    iget-boolean v8, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .end local v8    # "requiredItems":I
    .local v19, "requiredItems":I
    if-eqz v8, :cond_8

    .line 687
    const/4 v8, 0x0

    invoke-static {v3, v13, v14, v6, v8}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v16

    sub-int v14, v14, v16

    goto :goto_4

    .line 690
    :cond_8
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 692
    :goto_4
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 693
    .local v8, "measuredWidth":I
    sub-int/2addr v5, v8

    .line 694
    if-nez v10, :cond_9

    .line 695
    move v10, v8

    .line 697
    :cond_9
    move-object/from16 v20, v3

    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v3

    .line 698
    .local v3, "groupId":I
    .local v20, "v":Landroid/view/View;
    if-eqz v3, :cond_a

    .line 699
    move/from16 v21, v5

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    .line 701
    :cond_a
    move/from16 v21, v5

    const/4 v5, 0x1

    .end local v5    # "widthLimit":I
    .local v21, "widthLimit":I
    :goto_5
    invoke-virtual {v15, v5}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 702
    .end local v3    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v20    # "v":Landroid/view/View;
    nop

    .line 681
    move-object/from16 v25, v1

    move-object/from16 v23, v7

    move/from16 v5, v21

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v15    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    .end local v21    # "widthLimit":I
    .restart local v5    # "widthLimit":I
    .local v23, "parent":Landroid/view/ViewGroup;
    .local v25, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_6
    const/4 v0, 0x0

    goto/16 :goto_f

    .line 702
    .end local v19    # "requiredItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    .restart local v15    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_b
    move/from16 v19, v8

    .end local v8    # "requiredItems":I
    .restart local v19    # "requiredItems":I
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 705
    invoke-virtual {v15}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v8

    .line 706
    .local v8, "groupId":I
    invoke-virtual {v4, v8}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v16

    .line 707
    .local v16, "inGroup":Z
    if-gtz v12, :cond_c

    if-eqz v16, :cond_e

    :cond_c
    if-lez v5, :cond_e

    iget-boolean v3, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_d

    if-lez v14, :cond_e

    :cond_d
    const/4 v3, 0x1

    goto :goto_7

    :cond_e
    const/4 v3, 0x0

    .line 710
    .local v3, "isAction":Z
    :goto_7
    if-eqz v3, :cond_15

    .line 711
    move/from16 v22, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v15, v3, v7}, Landroid/widget/ActionMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 712
    .local v3, "v":Landroid/view/View;
    .local v22, "isAction":Z
    move-object/from16 v23, v7

    iget-boolean v7, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    if-eqz v7, :cond_10

    .line 713
    const/4 v7, 0x0

    invoke-static {v3, v13, v14, v6, v7}, Landroid/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    .line 715
    .local v20, "cells":I
    sub-int v14, v14, v20

    .line 716
    if-nez v20, :cond_f

    .line 717
    const/4 v7, 0x0

    .end local v20    # "cells":I
    .end local v22    # "isAction":Z
    .local v7, "isAction":Z
    goto :goto_8

    .line 719
    .end local v7    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_f
    move/from16 v7, v22

    .end local v22    # "isAction":Z
    .restart local v7    # "isAction":Z
    :goto_8
    goto :goto_9

    .line 720
    .end local v7    # "isAction":Z
    .restart local v22    # "isAction":Z
    :cond_10
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 722
    move/from16 v7, v22

    .end local v22    # "isAction":Z
    .restart local v7    # "isAction":Z
    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v20

    .line 723
    .local v20, "measuredWidth":I
    sub-int v5, v5, v20

    .line 724
    if-nez v10, :cond_11

    .line 725
    move/from16 v10, v20

    .line 728
    :cond_11
    move-object/from16 v24, v3

    iget-boolean v3, v0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .end local v3    # "v":Landroid/view/View;
    .local v24, "v":Landroid/view/View;
    if-eqz v3, :cond_13

    .line 729
    if-ltz v5, :cond_12

    const/4 v3, 0x1

    goto :goto_a

    :cond_12
    const/4 v3, 0x0

    :goto_a
    and-int/2addr v3, v7

    .end local v7    # "isAction":Z
    .local v3, "isAction":Z
    goto :goto_c

    .line 732
    .end local v3    # "isAction":Z
    .restart local v7    # "isAction":Z
    :cond_13
    add-int v3, v5, v10

    if-lez v3, :cond_14

    const/4 v3, 0x1

    goto :goto_b

    :cond_14
    const/4 v3, 0x0

    :goto_b
    and-int/2addr v3, v7

    .end local v7    # "isAction":Z
    .end local v20    # "measuredWidth":I
    .end local v24    # "v":Landroid/view/View;
    .restart local v3    # "isAction":Z
    goto :goto_c

    .line 736
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_15
    move/from16 v22, v3

    move-object/from16 v23, v7

    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    :goto_c
    if-eqz v3, :cond_16

    if-eqz v8, :cond_16

    .line 737
    const/4 v7, 0x1

    invoke-virtual {v4, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 751
    move-object/from16 v25, v1

    goto :goto_e

    .line 738
    :cond_16
    if-eqz v16, :cond_19

    .line 740
    const/4 v7, 0x0

    invoke-virtual {v4, v8, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 741
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_d
    if-ge v7, v2, :cond_19

    .line 742
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 743
    .local v0, "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    move-object/from16 v25, v1

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    if-ne v1, v8, :cond_18

    .line 745
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-eqz v1, :cond_17

    add-int/lit8 v12, v12, 0x1

    .line 746
    :cond_17
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 741
    .end local v0    # "areYouMyGroupie":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_18
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, v25

    move-object/from16 v0, p0

    goto :goto_d

    .line 751
    .end local v7    # "j":I
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :cond_19
    move-object/from16 v25, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_e
    if-eqz v3, :cond_1a

    add-int/lit8 v12, v12, -0x1

    .line 753
    :cond_1a
    invoke-virtual {v15, v3}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 754
    .end local v3    # "isAction":Z
    .end local v8    # "groupId":I
    .end local v16    # "inGroup":Z
    goto/16 :goto_6

    .line 756
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_1b
    move-object/from16 v25, v1

    move-object/from16 v23, v7

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 681
    .end local v15    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_f
    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v18

    move/from16 v8, v19

    move-object/from16 v7, v23

    move-object/from16 v1, v25

    move-object/from16 v0, p0

    goto/16 :goto_3

    .line 759
    .end local v2    # "i":I
    .end local v18    # "itemsSize":I
    .end local v19    # "requiredItems":I
    .end local v23    # "parent":Landroid/view/ViewGroup;
    .end local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .local v3, "itemsSize":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    :cond_1c
    move-object/from16 v25, v1

    move/from16 v18, v3

    move-object/from16 v23, v7

    move/from16 v19, v8

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v3    # "itemsSize":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .end local v8    # "requiredItems":I
    .restart local v18    # "itemsSize":I
    .restart local v19    # "requiredItems":I
    .restart local v23    # "parent":Landroid/view/ViewGroup;
    .restart local v25    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 236
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 237
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getItemView(Lcom/android/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 240
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 242
    move-object v1, p3

    check-cast v1, Landroid/widget/ActionMenuView;

    .line 243
    .local v1, "menuParent":Landroid/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 244
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 245
    invoke-virtual {v1, v2}, Landroid/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;
    .locals 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 222
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 223
    .local v0, "oldMenuView":Lcom/android/internal/view/menu/MenuView;
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v1

    .line 224
    .local v1, "result":Lcom/android/internal/view/menu/MenuView;
    if-eq v0, v1, :cond_1

    .line 225
    move-object v2, v1

    check-cast v2, Landroid/widget/ActionMenuView;

    invoke-virtual {v2, p0}, Landroid/widget/ActionMenuView;->setPresenter(Landroid/widget/ActionMenuPresenter;)V

    .line 226
    if-eqz v0, :cond_0

    .line 227
    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 229
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 231
    :cond_1
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 212
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 214
    :cond_0
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 217
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    .line 571
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 573
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 574
    return v1

    .line 577
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    .line 578
    .local v0, "popup":Lcom/android/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1

    .line 579
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 580
    return v1

    .line 582
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    .line 601
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 603
    const/4 v0, 0x1

    return v0

    .line 605
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;

    .line 133
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 135
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 137
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 138
    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_0

    .line 139
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 142
    :cond_0
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1

    .line 143
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 147
    :cond_1
    iget-boolean v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_2

    .line 148
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 151
    :cond_2
    iget v2, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 152
    .local v2, "width":I
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    .line 153
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_4

    .line 154
    new-instance v3, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 155
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 156
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 158
    iput-boolean v5, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 160
    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 161
    .local v3, "spec":I
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v4, v3, v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    .line 163
    .end local v3    # "spec":I
    :cond_4
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    .line 165
    :cond_5
    iput-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 168
    :goto_0
    iput v2, p0, Landroid/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 170
    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 171
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 616
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

    .line 612
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/widget/ActionMenuPresenter$OverflowPopup;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

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

    .line 623
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V
    .locals 0
    .param p1, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 764
    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 765
    invoke-super {p0, p1, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 766
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 174
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 177
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 180
    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 777
    move-object v0, p1

    check-cast v0, Landroid/widget/ActionMenuPresenter$SavedState;

    .line 778
    .local v0, "saved":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_0

    .line 779
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 780
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 781
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 782
    .local v2, "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 785
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 770
    new-instance v0, Landroid/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 771
    .local v0, "state":Landroid/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 772
    return-object v0
.end method

.method public onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
    .locals 7
    .param p1, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 494
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 496
    :cond_0
    move-object v0, p1

    .line 497
    .local v0, "topSubMenu":Lcom/android/internal/view/menu/SubMenuBuilder;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    .line 498
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/menu/SubMenuBuilder;

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 501
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_2

    .line 506
    return v1

    .line 509
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    iput v3, p0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 511
    const/4 v3, 0x0

    .line 512
    .local v3, "preserveIconSpacing":Z
    invoke-virtual {p1}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v4

    .line 513
    .local v4, "count":I
    nop

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 514
    invoke-virtual {p1, v1}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 515
    .local v5, "childItem":Landroid/view/MenuItem;
    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 516
    const/4 v3, 0x1

    .line 517
    goto :goto_2

    .line 513
    .end local v5    # "childItem":Landroid/view/MenuItem;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 521
    .end local v1    # "i":I
    :cond_4
    :goto_2
    new-instance v1, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v5, p1, v2}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 522
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1, v3}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 523
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 525
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 526
    const/4 v1, 0x1

    return v1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 789
    if-eqz p1, :cond_0

    .line 791
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_0

    .line 792
    :cond_0
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->close(Z)V

    .line 795
    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0
    .param p1, "isExclusive"    # Z

    .line 199
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 200
    return-void
.end method

.method public setItemLimit(I)V
    .locals 1
    .param p1, "itemCount"    # I

    .line 194
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mMaxItems:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 196
    return-void
.end method

.method public setMenuView(Landroid/widget/ActionMenuView;)V
    .locals 2
    .param p1, "menuView"    # Landroid/widget/ActionMenuView;

    .line 798
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq p1, v0, :cond_1

    .line 799
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 802
    :cond_0
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    .line 803
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->initialize(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 804
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mAttachStateChangeListener:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/ActionMenuView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 806
    :cond_1
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 203
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v0, p1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 206
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIconSet:Z

    .line 207
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter;->mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    .line 209
    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1
    .param p1, "reserveOverflow"    # Z

    .line 189
    iput-boolean p1, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 191
    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 183
    iput p1, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 184
    iput-boolean p2, p0, Landroid/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 186
    return-void
.end method

.method public shouldIncludeItem(ILcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 1
    .param p1, "childIndex"    # I
    .param p2, "item"    # Lcom/android/internal/view/menu/MenuItemImpl;

    .line 266
    invoke-virtual {p2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    .line 549
    iget-boolean v0, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 550
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 551
    new-instance v0, Landroid/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 552
    .local v0, "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 554
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 558
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z

    .line 560
    const/4 v1, 0x1

    return v1

    .line 562
    .end local v0    # "popup":Landroid/widget/ActionMenuPresenter$OverflowPopup;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 6
    .param p1, "cleared"    # Z

    .line 436
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 437
    nop

    .line 440
    invoke-super {p0, p1}, Lcom/android/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 442
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 444
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 446
    .local v0, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 447
    .local v2, "count":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 448
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/android/internal/view/menu/MenuItemImpl;->getActionProvider()Landroid/view/ActionProvider;

    move-result-object v4

    .line 449
    .local v4, "provider":Landroid/view/ActionProvider;
    if-eqz v4, :cond_0

    .line 450
    invoke-virtual {v4, p0}, Landroid/view/ActionProvider;->setSubUiVisibilityListener(Landroid/view/ActionProvider$SubUiVisibilityListener;)V

    .line 447
    .end local v4    # "provider":Landroid/view/ActionProvider;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 455
    .end local v0    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_2

    .line 456
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 458
    .local v0, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/MenuItemImpl;>;"
    :goto_1
    const/4 v2, 0x0

    .line 459
    .local v2, "hasOverflow":Z
    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 461
    .local v3, "count":I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 462
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    xor-int/2addr v1, v4

    move v2, v1

    goto :goto_2

    .line 464
    :cond_3
    if-lez v3, :cond_4

    move v1, v4

    nop

    :cond_4
    move v2, v1

    .line 468
    .end local v3    # "count":I
    :cond_5
    :goto_2
    if-eqz v2, :cond_9

    .line 469
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-nez v1, :cond_6

    .line 470
    new-instance v1, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    .line 472
    :cond_6
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 473
    .local v1, "parent":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-eq v1, v3, :cond_8

    .line 474
    if-eqz v1, :cond_7

    .line 475
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 477
    :cond_7
    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v3, Landroid/widget/ActionMenuView;

    .line 478
    .local v3, "menuView":Landroid/widget/ActionMenuView;
    iget-object v4, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Landroid/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/widget/ActionMenuView$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 480
    .end local v1    # "parent":Landroid/view/ViewGroup;
    .end local v3    # "menuView":Landroid/widget/ActionMenuView;
    :cond_8
    goto :goto_3

    :cond_9
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v1, :cond_a

    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1}, Landroid/widget/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    if-ne v1, v3, :cond_a

    .line 481
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v3, p0, Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 484
    :cond_a
    :goto_3
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;

    check-cast v1, Landroid/widget/ActionMenuView;

    iget-boolean v3, p0, Landroid/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v1, v3}, Landroid/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 485
    return-void
.end method
