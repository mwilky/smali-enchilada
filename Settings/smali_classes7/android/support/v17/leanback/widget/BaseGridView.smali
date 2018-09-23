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

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    const/4 v1, 0x4

    iput v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    new-instance v1, Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/widget/GridLayoutManager;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;)V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->setPreserveFocusAfterLayout(Z)V

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->setDescendantFocusability(I)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setHasFixedSize(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setChildrenDrawingOrderEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setWillNotDraw(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    new-instance v0, Landroid/support/v17/leanback/widget/BaseGridView$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/widget/BaseGridView$1;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;)V

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V

    return-void
.end method


# virtual methods
.method public addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public animateIn()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->slideIn()V

    return-void
.end method

.method public animateOut()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->slideOut()V

    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;->onInterceptMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;->onInterceptKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

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

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-interface {v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSelection()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildDrawingOrder(II)I
    .locals 1

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

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFocusScrollStrategy()I

    move-result v0

    return v0
.end method

.method public getHorizontalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getHorizontalSpacing()I

    move-result v0

    return v0
.end method

.method public getInitialPrefetchItemCount()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    return v0
.end method

.method public getItemAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getItemAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public getItemAlignmentViewId()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getItemAlignmentViewId()I

    move-result v0

    return v0
.end method

.method public getOnUnhandledKeyListener()Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    return-object v0
.end method

.method public final getSaveChildrenLimitNumber()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getLimitNumber()I

    move-result v0

    return v0
.end method

.method public final getSaveChildrenPolicy()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSavePolicy()I

    move-result v0

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

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

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubSelection()I

    move-result v0

    return v0
.end method

.method public getVerticalMargin()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getVerticalSpacing()I

    move-result v0

    return v0
.end method

.method public getViewSelectedOffsets(Landroid/view/View;[I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewSelectedOffsets(Landroid/view/View;[I)V

    return-void
.end method

.method public getWindowAlignment()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWindowAlignment()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffset()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWindowAlignmentOffset()I

    move-result v0

    return v0
.end method

.method public getWindowAlignmentOffsetPercent()F
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getWindowAlignmentOffsetPercent()F

    move-result v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    return v0
.end method

.method public hasPreviousViewInSameRow(I)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->hasPreviousViewInSameRow(I)Z

    move-result v0

    return v0
.end method

.method initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    sget-object v0, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutFront:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    sget v3, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutEnd:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iget-object v4, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v1, v3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusOutAllowed(ZZ)V

    sget v4, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutSideStart:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_focusOutSideEnd:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v6, v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusOutSideAllowed(ZZ)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    sget v7, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_verticalSpacing:I

    sget v8, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_verticalMargin:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setVerticalSpacing(I)V

    iget-object v6, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    sget v7, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_horizontalSpacing:I

    sget v8, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_horizontalMargin:I

    invoke-virtual {v0, v8, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setHorizontalSpacing(I)V

    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget v6, Landroid/support/v17/leanback/R$styleable;->lbBaseGridView_android_gravity:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->setGravity(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isChildLayoutAnimated()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    return v0
.end method

.method final isChildrenDrawingOrderEnabledInternal()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method public isFocusDrawingOrderEnabled()Z
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/RecyclerView;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    return v0
.end method

.method public final isFocusSearchDisabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isFocusSearchDisabled()Z

    move-result v0

    return v0
.end method

.method public isItemAlignmentOffsetWithPadding()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isItemAlignmentOffsetWithPadding()Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isWindowAlignmentPreferKeyLineOverHighEdge()Z
    .locals 1

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

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->gridOnRequestFocusInDescendants(Landroid/support/v7/widget/RecyclerView;ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->onRtlPropertiesChanged(I)V

    return-void
.end method

.method public removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public scrollToPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSlidingChildViews()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public setAnimateChildLayout(Z)V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mAnimateChildLayout:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mSavedItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mSavedItemAnimator:Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-super {p0, v0}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChildrenVisibility(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setChildrenVisibility(I)V

    return-void
.end method

.method public setExtraLayoutSpace(I)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setExtraLayoutSpace(I)V

    return-void
.end method

.method public setFocusDrawingOrderEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setFocusScrollStrategy(I)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid scrollStrategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusScrollStrategy(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public final setFocusSearchDisabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x60000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->setDescendantFocusability(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setFocusSearchDisabled(Z)V

    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setGravity(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setHasOverlappingRendering(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mHasOverlappingRendering:Z

    return-void
.end method

.method public setHorizontalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setHorizontalSpacing(I)V

    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setHorizontalSpacing(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setInitialPrefetchItemCount(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mInitialPrefetchItemCount:I

    return-void
.end method

.method public setItemAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentOffset(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentOffsetPercent(F)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentOffsetWithPadding(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentOffsetWithPadding(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setItemAlignmentViewId(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemAlignmentViewId(I)V

    return-void
.end method

.method public setItemMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setItemSpacing(I)V

    return-void
.end method

.method public setItemSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setItemSpacing(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setLayoutEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setLayoutEnabled(Z)V

    return-void
.end method

.method public setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildLaidOutListener(Landroid/support/v17/leanback/widget/OnChildLaidOutListener;)V

    return-void
.end method

.method public setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildSelectedListener(Landroid/support/v17/leanback/widget/OnChildSelectedListener;)V

    return-void
.end method

.method public setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    return-void
.end method

.method public setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    return-void
.end method

.method public setOnMotionInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnMotionInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnMotionInterceptListener;

    return-void
.end method

.method public setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    return-void
.end method

.method public setOnUnhandledKeyListener(Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mOnUnhandledKeyListener:Landroid/support/v17/leanback/widget/BaseGridView$OnUnhandledKeyListener;

    return-void
.end method

.method public setPruneChild(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setPruneChild(Z)V

    return-void
.end method

.method public setRecyclerListener(Landroid/support/v7/widget/RecyclerView$RecyclerListener;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mChainedRecyclerListener:Landroid/support/v7/widget/RecyclerView$RecyclerListener;

    return-void
.end method

.method public final setSaveChildrenLimitNumber(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->setLimitNumber(I)V

    return-void
.end method

.method public final setSaveChildrenPolicy(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->setSavePolicy(I)V

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setScrollEnabled(Z)V

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(II)V

    return-void
.end method

.method public setSelectedPosition(II)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelection(II)V

    return-void
.end method

.method public setSelectedPosition(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/support/v17/leanback/widget/ViewHolderTask;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Landroid/support/v17/leanback/widget/BaseGridView$3;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView$3;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPosition(I)V

    return-void
.end method

.method public setSelectedPositionSmooth(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionSmooth(I)V

    return-void
.end method

.method public setSelectedPositionSmooth(ILandroid/support/v17/leanback/widget/ViewHolderTask;)V
    .locals 2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->findViewHolderForPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->hasPendingAdapterUpdates()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2, v0}, Landroid/support/v17/leanback/widget/ViewHolderTask;->run(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Landroid/support/v17/leanback/widget/BaseGridView$2;

    invoke-direct {v1, p0, p1, p2}, Landroid/support/v17/leanback/widget/BaseGridView$2;-><init>(Landroid/support/v17/leanback/widget/BaseGridView;ILandroid/support/v17/leanback/widget/ViewHolderTask;)V

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/BaseGridView;->addOnChildViewHolderSelectedListener(Landroid/support/v17/leanback/widget/OnChildViewHolderSelectedListener;)V

    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setSelectedPositionSmooth(I)V

    return-void
.end method

.method public setSelectedPositionSmoothWithSub(II)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionSmoothWithSub(II)V

    return-void
.end method

.method public setSelectedPositionWithSub(II)V
    .locals 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    return-void
.end method

.method public setSelectedPositionWithSub(III)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    return-void
.end method

.method public setVerticalMargin(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->setVerticalSpacing(I)V

    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setVerticalSpacing(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignment(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignment(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignmentOffset(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentOffsetPercent(F)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setWindowAlignmentOffsetPercent(F)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverHighEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPreferKeylineOverHighEdge(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public setWindowAlignmentPreferKeyLineOverLowEdge(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->setPreferKeylineOverLowEdge(Z)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/BaseGridView;->requestLayout()V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->isSlidingChildViews()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/BaseGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setSelectionWithSub(III)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
