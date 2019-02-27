.class public Lcom/android/internal/widget/DialogViewAnimator;
.super Landroid/widget/ViewAnimator;
.source "DialogViewAnimator.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewAnimator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 22

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v9, 0x40000000    # 2.0f

    if-ne v0, v9, :cond_1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    if-eq v0, v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    move v12, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildCount()I

    move-result v13

    move v15, v0

    move v14, v1

    move v5, v2

    const/4 v0, 0x0

    :goto_2
    move v4, v0

    const/4 v0, -0x1

    if-ge v4, v13, :cond_a

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/DialogViewAnimator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasureAllChildren()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v18, v4

    goto/16 :goto_6

    :cond_3
    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    if-ne v1, v0, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    :goto_4
    move/from16 v16, v1

    iget v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    move/from16 v17, v0

    if-eqz v12, :cond_7

    if-nez v16, :cond_6

    if-eqz v17, :cond_7

    :cond_6
    iget-object v0, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move-object v1, v3

    move-object v10, v2

    move v2, v7

    move-object v11, v3

    move/from16 v3, v18

    move/from16 v18, v4

    move v4, v8

    move v9, v5

    move/from16 v5, v19

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/DialogViewAnimator;->measureChildWithMargins(Landroid/view/View;IIII)V

    const/4 v0, 0x0

    if-eqz v12, :cond_8

    if-nez v16, :cond_8

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    :cond_8
    if-eqz v12, :cond_9

    if-nez v17, :cond_9

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, -0x100

    or-int/2addr v0, v1

    :cond_9
    invoke-static {v9, v0}, Lcom/android/internal/widget/DialogViewAnimator;->combineMeasuredStates(II)I

    move-result v0

    move v5, v0

    :goto_6
    add-int/lit8 v0, v18, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    goto/16 :goto_2

    :cond_a
    move v9, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v14, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v15, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_b
    invoke-static {v2, v7, v9}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v4

    shl-int/lit8 v5, v9, 0x10

    invoke-static {v1, v8, v5}, Lcom/android/internal/widget/DialogViewAnimator;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/widget/DialogViewAnimator;->setMeasuredDimension(II)V

    iget-object v4, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v20, 0x0

    :goto_7
    move/from16 v5, v20

    if-ge v5, v4, :cond_e

    iget-object v10, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v14, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v14, v0, :cond_c

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredWidth()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v15

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v14, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    goto :goto_8

    :cond_c
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingLeft()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingRight()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v14, v15

    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v7, v14, v15}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v14

    :goto_8
    iget v15, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v15, v0, :cond_d

    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getMeasuredHeight()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v16

    sub-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v15, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v15, v0

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    goto :goto_9

    :cond_d
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingTop()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/DialogViewAnimator;->getPaddingBottom()I

    move-result v16

    add-int v15, v15, v16

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v15, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    iget v0, v11, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v8, v15, v0}, Lcom/android/internal/widget/DialogViewAnimator;->getChildMeasureSpec(III)I

    move-result v15

    :goto_9
    move v0, v15

    invoke-virtual {v10, v14, v0}, Landroid/view/View;->measure(II)V

    add-int/lit8 v20, v5, 0x1

    const/4 v0, -0x1

    goto/16 :goto_7

    :cond_e
    iget-object v0, v6, Lcom/android/internal/widget/DialogViewAnimator;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
