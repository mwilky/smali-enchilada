.class public Lcom/android/internal/widget/WatchListDecorLayout;
.super Landroid/widget/FrameLayout;
.source "WatchListDecorLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field private mBottomPanel:Landroid/view/View;

.field private mForegroundPaddingBottom:I

.field private mForegroundPaddingLeft:I

.field private mForegroundPaddingRight:I

.field private mForegroundPaddingTop:I

.field private mListView:Landroid/widget/ListView;

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Landroid/view/ViewTreeObserver;

.field private mPendingScroll:I

.field private mTopPanel:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method private applyMeasureToChild(Landroid/view/View;II)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v5

    sub-int/2addr v1, v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v1, v5

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_0
    nop

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v5

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v1

    :goto_0
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v5, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    goto :goto_1

    :cond_1
    nop

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p3, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildMeasureSpec(III)I

    move-result v2

    :goto_1
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingBottom:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingLeftWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingLeft:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingRightWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingRight:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPaddingTop:I

    iget v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method private measureAndGetHeight(Landroid/view/View;II)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, p2, p3}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setScrolling(Landroid/view/View;F)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/ListView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setNestedScrollingEnabled(Z)V

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "only one ListView child allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-nez v3, :cond_2

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    goto :goto_1

    :cond_2
    const/16 v3, 0x50

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-nez v3, :cond_3

    iput-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mObserver:Landroid/view/ViewTreeObserver;

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildCount()I

    move-result v9

    nop

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v11, 0x0

    if-ne v0, v1, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v11

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    iget-object v0, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v14, v0

    move v13, v1

    move v15, v2

    move v0, v11

    :goto_2
    move v5, v0

    if-ge v5, v9, :cond_6

    invoke-virtual {v6, v5}, Lcom/android/internal/widget/WatchListDecorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getMeasureAllChildren()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v17, v5

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v3, 0x0

    const/16 v16, 0x0

    move-object v0, v6

    move-object v1, v4

    move v2, v7

    move-object v10, v4

    move v4, v8

    move/from16 v17, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/WatchListDecorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v15, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->combineMeasuredStates(II)I

    move-result v3

    if-eqz v12, :cond_5

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v4, v5, :cond_5

    :cond_4
    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move v13, v1

    move v14, v2

    move v15, v3

    :goto_4
    add-int/lit8 v0, v17, 0x1

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingLeftWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingRightWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v13, v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingTopWithForeground()I

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getPaddingBottomWithForeground()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v14, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_7
    invoke-static {v1, v7, v15}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v3

    shl-int/lit8 v4, v15, 0x10

    invoke-static {v0, v8, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {v6, v3, v4}, Lcom/android/internal/widget/WatchListDecorLayout;->setMeasuredDimension(II)V

    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v3, :cond_a

    iget v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    if-eqz v3, :cond_8

    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->scrollListBy(I)V

    iput v11, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    :cond_8
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v3

    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {v6, v4, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v4

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {v6, v5, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->measureAndGetHeight(Landroid/view/View;II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v5

    if-ne v3, v5, :cond_9

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v5

    if-eq v4, v5, :cond_a

    :cond_9
    iget v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    iget-object v10, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v10

    sub-int/2addr v10, v3

    add-int/2addr v5, v10

    iput v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mPendingScroll:I

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v10, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result v10

    iget-object v13, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v13

    invoke-virtual {v5, v10, v3, v13, v4}, Landroid/widget/ListView;->setPadding(IIII)V

    :cond_a
    iget-object v3, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_d

    nop

    :goto_5
    move v4, v11

    if-ge v4, v3, :cond_d

    iget-object v5, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget-object v9, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-eqz v9, :cond_b

    iget-object v9, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    if-eq v5, v9, :cond_c

    iget-object v9, v6, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eq v5, v9, :cond_c

    :cond_b
    invoke-direct {v6, v5, v7, v8}, Lcom/android/internal/widget/WatchListDecorLayout;->applyMeasureToChild(Landroid/view/View;II)V

    :cond_c
    add-int/lit8 v11, v4, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public onScrollChanged()V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-direct {p0, v2, v3}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mTopPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mBottomPanel:Landroid/view/View;

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/WatchListDecorLayout;->setScrolling(Landroid/view/View;F)V

    :cond_6
    :goto_1
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v0

    if-eq v0, p1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setForegroundGravity(I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/widget/WatchListDecorLayout;->getForegroundGravity()I

    move-result v1

    const/16 v2, 0x77

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingLeft:I

    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingTop:I

    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingRight:I

    iput v1, p0, Lcom/android/internal/widget/WatchListDecorLayout;->mForegroundPaddingBottom:I

    :cond_2
    :goto_0
    return-void
.end method
