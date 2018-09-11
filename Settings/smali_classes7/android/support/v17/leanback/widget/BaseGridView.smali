.class public abstract Landroid/support/v17/leanback/widget/BaseGridView;
.super Landroid/support/v7/widget/RecyclerView;
.source "BaseGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;,
        Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;,
        Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;,
        Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;
    }
.end annotation


# static fields
.field public static final FOCUS_SCROLL_ALIGNED:I = 0x0
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FOCUS_SCROLL_ITEM:I = 0x1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FOCUS_SCROLL_PAGE:I = 0x2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final ITEM_ALIGN_OFFSET_PERCENT_DISABLED:F = -1.0f

.field public static final SAVE_ALL_CHILD:I = 0x3

.field public static final SAVE_LIMITED_CHILD:I = 0x2

.field public static final SAVE_NO_CHILD:I = 0x0

.field public static final SAVE_ON_SCREEN_CHILD:I = 0x1

.field public static final WINDOW_ALIGN_BOTH_EDGE:I = 0x3

.field public static final WINDOW_ALIGN_HIGH_EDGE:I = 0x2

.field public static final WINDOW_ALIGN_LOW_EDGE:I = 0x1

.field public static final WINDOW_ALIGN_NO_EDGE:I = 0x0

.field public static final WINDOW_ALIGN_OFFSET_PERCENT_DISABLED:F = -1.0f


# instance fields
.field private mAnimateChildLayout:Z

.field mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

.field private mHasOverlappingRendering:Z

.field mInitialPrefetchItemCount:I

.field final mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

.field private mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

.field private mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field private mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

.field private mSavedItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 217
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 201
    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    .line 214
    const/4 v1, 0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 218
    new-instance v1, Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 219
    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 221
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setPreserveFocusAfterLayout(Z)V

    .line 222
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->setDescendantFocusability(I)V

    .line 223
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setHasFixedSize(Z)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setChildrenDrawingOrderEnabled(Z)V

    .line 225
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setWillNotDraw(Z)V

    .line 226
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setOverScrollMode(I)V

    .line 230
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 231
    new-instance v0, Landroid/support/v17/leanback/widget/BaseGridView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseGridView$1;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    .line 240
    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 660
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 661
    return-void
.end method

.method public animateIn()V
    .locals 1

    .line 1132
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->slideIn()V

    .line 1133
    return-void
.end method

.method public animateOut()V
    .locals 1

    .line 1125
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->slideOut()V

    .line 1126
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1033
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    if-eqz v0, :cond_0

    .line 1034
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;->onInterceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    const/4 v0, 0x1

    return v0

    .line 1038
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 1012
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1013
    return v1

    .line 1015
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1016
    return v1

    .line 1018
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;->onUnhandledKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1023
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    if-eqz v0, :cond_0

    .line 1024
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1025
    const/4 v0, 0x1

    return v0

    .line 1028
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .param p1, "direction"    # I

    .line 865
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 869
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 870
    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 874
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 856
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getChildDrawingOrder(Landroid/support/v7/widget/RecyclerView;II)I

    move-result v0

    return v0
.end method

.method public getExtraLayoutSpace()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getExtraLayoutSpace()I

    move-result v0

    return v0
.end method

.method public getFocusScrollStrategy()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFocusScrollStrategy()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 578
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    .line 612
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    .line 1201
    iget v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    .line 448
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    .line 504
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    .line 524
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemAlignmentViewId()I

    move-result v0

    return v0
.end method

.method public getOnUnhandledKeyListener()Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;
    .locals 1

    .line 1007
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    .line 1056
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getLimitNumber()I

    move-result v0

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    .line 1048
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSavePolicy()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .line 785
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v0

    return v0
.end method

.method public getSelectedSubPosition()I
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubSelection()I

    move-result v0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 560
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    .line 595
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public getViewSelectedOffsets(Landroid/view/View;[I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "offsets"    # [I

    .line 851
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewSelectedOffsets(Landroid/view/View;[I)V

    .line 852
    return-void
.end method

.method public getWindowAlignment()I
    .locals 1

    .line 314
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWindowAlignment()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    .line 396
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWindowAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    .line 422
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWindowAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1077
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    return v0
.end method

.method public hasPreviousViewInSameRow(I)Z
    .locals 1
    .param p1, "position"    # I

    .line 951
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasPreviousViewInSameRow(I)Z

    move-result v0

    return v0
.end method

.method initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 243
    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 244
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutFront:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 245
    .local v1, "throughFront":Z
    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutEnd:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 246
    .local v3, "throughEnd":Z
    iget-object v4, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    .line 247
    sget v4, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutSideStart:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 248
    .local v4, "throughSideStart":Z
    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutSideEnd:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 249
    .local v5, "throughSideEnd":Z
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v6, v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusOutSideAllowed(ZZ)V

    .line 250
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    sget v7, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_verticalSpacing:I

    sget v8, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_verticalMargin:I

    .line 252
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 251
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 250
    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setVerticalSpacing(I)V

    .line 253
    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    sget v7, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_horizontalSpacing:I

    sget v8, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_horizontalMargin:I

    .line 255
    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    .line 254
    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 253
    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setHorizontalSpacing(I)V

    .line 256
    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->setGravity(I)V

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-void
.end method

.method public isChildLayoutAnimated()Z
    .locals 1

    .line 823
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    return v0
.end method

.method final isChildrenDrawingOrderEnabledInternal()Z
    .locals 1

    .line 860
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusDrawingOrderEnabled()Z
    .locals 1

    .line 967
    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method public final isFocusSearchDisabled()Z
    .locals 1

    .line 899
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isFocusSearchDisabled()Z

    move-result v0

    return v0
.end method

.method public isItemAlignmentOffsetWithPadding()Z
    .locals 1

    .line 477
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isItemAlignmentOffsetWithPadding()Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 940
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isWindowAlignmentPreferKeyLineOverHighEdge()Z
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverHighEdge()Z

    move-result v0

    return v0
.end method

.method public isWindowAlignmentPreferKeyLineOverLowEdge()Z
    .locals 1

    .line 355
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->isPreferKeylineOverLowEdge()Z

    move-result v0

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 879
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 880
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 881
    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 839
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .line 1089
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onRtlPropertiesChanged(I)V

    .line 1090
    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 670
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 671
    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1138
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSlidingChildViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1139
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    .line 1140
    return-void

    .line 1142
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 1143
    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1
    .param p1, "animateChildLayout"    # Z

    .line 806
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    if-eq v0, p1, :cond_1

    .line 807
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    .line 808
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    if-nez v0, :cond_0

    .line 809
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mSavedItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    .line 810
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    .line 812
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mSavedItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 815
    :cond_1
    :goto_0
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .line 916
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setChildrenVisibility(I)V

    .line 917
    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 1
    .param p1, "extraLayoutSpace"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setExtraLayoutSpace(I)V

    .line 1107
    return-void
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 959
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 960
    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 2
    .param p1, "scrollStrategy"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 273
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scrollStrategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 277
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusScrollStrategy(I)V

    .line 278
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 279
    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .line 890
    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setDescendantFocusability(I)V

    .line 891
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusSearchDisabled(Z)V

    .line 892
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .line 833
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setGravity(I)V

    .line 834
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 835
    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0
    .param p1, "hasOverlapping"    # Z

    .line 1081
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    .line 1082
    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .param p1, "margin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 569
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setHorizontalSpacing(I)V

    .line 570
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .line 603
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setHorizontalSpacing(I)V

    .line 604
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 605
    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0
    .param p1, "itemCount"    # I

    .line 1185
    iput p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    .line 1186
    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 434
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentOffset(I)V

    .line 435
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 436
    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1
    .param p1, "offsetPercent"    # F

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentOffsetPercent(F)V

    .line 492
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 493
    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1
    .param p1, "withPadding"    # Z

    .line 462
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentOffsetWithPadding(Z)V

    .line 463
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 464
    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 514
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentViewId(I)V

    .line 515
    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .param p1, "margin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 533
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setItemSpacing(I)V

    .line 534
    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .line 541
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemSpacing(I)V

    .line 542
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 543
    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1
    .param p1, "layoutEnabled"    # Z

    .line 908
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setLayoutEnabled(Z)V

    .line 909
    return-void
.end method

.method public setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    .line 622
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V

    .line 623
    return-void
.end method

.method public setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildSelectedListener;

    .line 634
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    .line 635
    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;

    .line 648
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 649
    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    .line 991
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    .line 992
    return-void
.end method

.method public setOnMotionInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    .line 983
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    .line 984
    return-void
.end method

.method public setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    .line 975
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    .line 976
    return-void
.end method

.method public setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    .line 999
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    .line 1000
    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1
    .param p1, "pruneChild"    # Z

    .line 924
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setPruneChild(Z)V

    .line 925
    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 1094
    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    .line 1095
    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1
    .param p1, "limitNumber"    # I

    .line 1072
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->setLimitNumber(I)V

    .line 1073
    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1
    .param p1, "savePolicy"    # I

    .line 1065
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->setSavePolicy(I)V

    .line 1066
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "scrollEnabled"    # Z

    .line 932
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setScrollEnabled(Z)V

    .line 933
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 677
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(II)V

    .line 678
    return-void
.end method

.method public setSelectedPosition(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "scrollExtra"    # I

    .line 695
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(II)V

    .line 696
    return-void
.end method

.method public setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "task"    # Landroid/support/v17/leanback/widget/ViewHolderTask;

    .line 760
    if-eqz p2, :cond_2

    .line 761
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 762
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 774
    :cond_0
    invoke-interface {p2, v0}, Landroid/support/v17/leanback/widget/ViewHolderTask;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .end local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 763
    .restart local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_0
    new-instance v1, Landroid/support/v17/leanback/widget/BaseGridView$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView$3;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 777
    .end local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    .line 778
    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 1
    .param p1, "position"    # I

    .line 715
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionSmooth(I)V

    .line 716
    return-void
.end method

.method public setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "task"    # Landroid/support/v17/leanback/widget/ViewHolderTask;

    .line 734
    if-eqz p2, :cond_2

    .line 735
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 736
    .local v0, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 748
    :cond_0
    invoke-interface {p2, v0}, Landroid/support/v17/leanback/widget/ViewHolderTask;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .end local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_1

    .line 737
    .restart local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    :goto_0
    new-instance v1, Landroid/support/v17/leanback/widget/BaseGridView$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView$2;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    .line 751
    .end local v0    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    .line 752
    return-void
.end method

.method public setSelectedPositionSmoothWithSub(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 725
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionSmoothWithSub(II)V

    .line 726
    return-void
.end method

.method public setSelectedPositionWithSub(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 686
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    .line 687
    return-void
.end method

.method public setSelectedPositionWithSub(III)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "subposition"    # I
    .param p3, "scrollExtra"    # I
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    .line 707
    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .param p1, "margin"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 551
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setVerticalSpacing(I)V

    .line 552
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "spacing"    # I

    .line 586
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setVerticalSpacing(I)V

    .line 587
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 588
    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1
    .param p1, "windowAlignment"    # I

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignment(I)V

    .line 304
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 305
    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .line 382
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignmentOffset(I)V

    .line 383
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 384
    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1
    .param p1, "offsetPercent"    # F

    .line 409
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignmentOffsetPercent(F)V

    .line 410
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 411
    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1
    .param p1, "preferKeyLineOverHighEdge"    # Z

    .line 341
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPreferKeylineOverHighEdge(Z)V

    .line 343
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 344
    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1
    .param p1, "preferKeyLineOverLowEdge"    # Z

    .line 326
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPreferKeylineOverLowEdge(Z)V

    .line 328
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    .line 329
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2
    .param p1, "position"    # I

    .line 1148
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSlidingChildViews()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1149
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    .line 1150
    return-void

    .line 1152
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1153
    return-void
.end method
