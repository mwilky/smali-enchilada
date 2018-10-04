.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;,
        Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;
    }
.end annotation


# instance fields
.field private mMaxDisplayedLines:I

.field private mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    sget-object v0, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public static isGone(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v2, v2, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v1}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->isHidingAnimated()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    :cond_0
    return-object v0
.end method

.method public getMessagingLayout()Lcom/android/internal/widget/MessagingLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    sub-int v4, p4, p2

    iget v5, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v5, v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v7

    iget v8, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    const/4 v9, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->isShown()Z

    move-result v10

    move v12, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_5

    invoke-virtual {v0, v8}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v15, 0x8

    if-ne v14, v15, :cond_0

    nop

    move/from16 v18, v1

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-object v15, v13

    check-cast v15, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    const/4 v2, 0x1

    if-ne v6, v2, :cond_1

    sub-int v17, v5, v16

    iget v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v17, v17, v2

    goto :goto_1

    :cond_1
    iget v2, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v1, v2

    :goto_1
    move/from16 v2, v17

    move/from16 v18, v1

    iget-boolean v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_3

    if-eqz v10, :cond_2

    iget-boolean v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    if-eqz v1, :cond_2

    add-int v1, v2, v16

    iget v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    add-int/2addr v3, v9

    invoke-virtual {v13, v2, v9, v1, v3}, Landroid/view/View;->layout(IIII)V

    invoke-interface {v15}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->hideAnimated()V

    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/4 v3, 0x1

    iput-boolean v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->visibleBefore:Z

    iput v11, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->lastVisibleHeight:I

    if-nez v12, :cond_4

    iget v3, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v9, v3

    :cond_4
    iget v3, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v9, v3

    add-int v3, v2, v16

    add-int v1, v9, v11

    invoke-virtual {v13, v2, v9, v3, v1}, Landroid/view/View;->layout(IIII)V

    iget v1, v14, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v11

    add-int/2addr v9, v1

    const/4 v1, 0x0

    move v12, v1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v18

    goto :goto_0

    :cond_5
    move/from16 v18, v1

    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v6, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    move v7, v0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    :goto_1
    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v8

    const/4 v1, 0x0

    :goto_2
    const/4 v10, 0x1

    if-ge v1, v8, :cond_1

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iput-boolean v10, v3, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    iget v2, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    add-int/lit8 v4, v8, -0x1

    move v14, v0

    move v11, v1

    move v13, v2

    move v12, v3

    :goto_3
    move v15, v4

    if-ltz v15, :cond_9

    if-ge v11, v7, :cond_9

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    nop

    move/from16 v19, v8

    const/4 v3, 0x0

    goto/16 :goto_7

    :cond_2
    invoke-virtual {v6, v15}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v6, v15}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v0, 0x0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    instance-of v2, v5, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    if-eqz v2, :cond_3

    move-object v0, v5

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;

    invoke-interface {v0, v12}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->setMaxDisplayedLines(I)V

    invoke-interface {v0}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getExtraSpacing()I

    move-result v2

    add-int/2addr v1, v2

    :cond_3
    move-object v3, v0

    if-eqz v13, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    move/from16 v16, v0

    const/16 v17, 0x0

    iget v0, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    sub-int v0, v11, v0

    iget v1, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    sub-int/2addr v0, v1

    add-int v18, v0, v16

    move-object v0, v6

    move-object v1, v5

    move/from16 v2, p1

    move-object v9, v3

    move/from16 v3, v17

    move-object v10, v4

    move/from16 v4, p2

    move/from16 v19, v8

    move-object v8, v5

    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    add-int v1, v11, v0

    iget v2, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    add-int v1, v1, v16

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v13, 0x0

    const/4 v2, 0x0

    if-eqz v9, :cond_5

    invoke-interface {v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getMeasuredType()I

    move-result v2

    invoke-interface {v9}, Lcom/android/internal/widget/MessagingLinearLayout$MessagingChild;->getConsumedLines()I

    move-result v3

    sub-int/2addr v12, v3

    :cond_5
    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    move v4, v3

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    move v5, v3

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    :goto_6
    if-gt v1, v7, :cond_a

    if-nez v5, :cond_a

    move v11, v1

    nop

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    iget v3, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v17, v17, v3

    iget v3, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int v17, v17, v3

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    add-int v17, v17, v3

    iget v3, v6, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int v3, v17, v3

    invoke-static {v14, v3}, Ljava/lang/Math;->max(II)I

    move-result v14

    const/4 v3, 0x0

    iput-boolean v3, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-nez v4, :cond_a

    if-gtz v12, :cond_8

    goto :goto_8

    :cond_8
    :goto_7
    add-int/lit8 v4, v15, -0x1

    move/from16 v8, v19

    const/4 v10, 0x1

    goto/16 :goto_3

    :cond_9
    move/from16 v19, v8

    :cond_a
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v6, v0, v2}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public setMaxDisplayedLines(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMaxDisplayedLines:I

    return-void
.end method

.method public setMessagingLayout(Lcom/android/internal/widget/MessagingLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mMessagingLayout:Lcom/android/internal/widget/MessagingLayout;

    return-void
.end method
