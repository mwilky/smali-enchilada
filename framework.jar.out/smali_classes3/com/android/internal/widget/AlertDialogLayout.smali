.class public Lcom/android/internal/widget/AlertDialogLayout;
.super Landroid/widget/LinearLayout;
.source "AlertDialogLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private forceUniformWidth(II)V
    .locals 11

    nop

    invoke-virtual {p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, v8

    move v4, v0

    move v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/AlertDialogLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private resolveMinimumHeight(Landroid/view/View;)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    if-lez v0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v2

    return v2

    :cond_1
    return v2
.end method

.method private setChildFrame(Landroid/view/View;IIII)V
    .locals 2

    add-int v0, p2, p4

    add-int v1, p3, p5

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method private tryOnMeasure(II)Z
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v7

    :goto_0
    const/16 v9, 0x8

    if-ge v3, v6, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v10}, Landroid/view/View;->getId()I

    move-result v9

    const v11, 0x10201de

    if-eq v9, v11, :cond_4

    const v11, 0x102020d

    if-eq v9, v11, :cond_2

    const v11, 0x1020214

    if-eq v9, v11, :cond_2

    const v11, 0x1020474

    if-eq v9, v11, :cond_1

    return v7

    :cond_1
    move-object v4, v10

    goto :goto_1

    :cond_2
    if-eqz v8, :cond_3

    return v7

    :cond_3
    move-object v8, v10

    goto :goto_1

    :cond_4
    move-object v5, v10

    nop

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingTop()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingBottom()I

    move-result v14

    add-int/2addr v13, v14

    if-eqz v4, :cond_6

    invoke-virtual {v4, v1, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v13, v14

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v14

    invoke-static {v12, v14}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    :cond_6
    const/4 v14, 0x0

    const/4 v15, 0x0

    if-eqz v5, :cond_7

    invoke-virtual {v5, v1, v7}, Landroid/view/View;->measure(II)V

    invoke-direct {v0, v5}, Lcom/android/internal/widget/AlertDialogLayout;->resolveMinimumHeight(Landroid/view/View;)I

    move-result v14

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v16, v14

    add-int/2addr v13, v14

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v9

    invoke-static {v12, v9}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    :cond_7
    const/4 v9, 0x0

    if-eqz v8, :cond_9

    if-nez v3, :cond_8

    const/16 v16, 0x0

    move-object/from16 v17, v4

    goto :goto_2

    :cond_8
    move-object/from16 v17, v4

    sub-int v4, v10, v13

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    :goto_2
    move/from16 v4, v16

    invoke-virtual {v8, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v13, v9

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v12, v7}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    goto :goto_3

    :cond_9
    move-object/from16 v17, v4

    :goto_3
    sub-int v4, v10, v13

    const/high16 v7, 0x40000000    # 2.0f

    if-eqz v5, :cond_b

    sub-int/2addr v13, v14

    invoke-static {v4, v15}, Ljava/lang/Math;->min(II)I

    move-result v16

    if-lez v16, :cond_a

    sub-int v4, v4, v16

    add-int v14, v14, v16

    :cond_a
    move/from16 v18, v4

    invoke-static {v14, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v13, v13, v19

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredState()I

    move-result v7

    invoke-static {v12, v7}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v4, v18

    :cond_b
    if-eqz v8, :cond_c

    if-lez v4, :cond_c

    sub-int/2addr v13, v9

    move v7, v4

    sub-int/2addr v4, v7

    add-int/2addr v9, v7

    move/from16 v20, v4

    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v8, v1, v4}, Landroid/view/View;->measure(II)V

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v13, v13, v16

    move/from16 v21, v3

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v12, v3}, Lcom/android/internal/widget/AlertDialogLayout;->combineMeasuredStates(II)I

    move-result v12

    move/from16 v4, v20

    goto :goto_4

    :cond_c
    move/from16 v21, v3

    :goto_4
    const/4 v3, 0x0

    move v7, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_e

    move/from16 v22, v4

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v23, v5

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    move-object/from16 v24, v8

    const/16 v8, 0x8

    if-eq v5, v8, :cond_d

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v7, v4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v8, v24

    goto :goto_5

    :cond_e
    move/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v7, v3

    invoke-static {v7, v1, v12}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v13, v2, v4}, Lcom/android/internal/widget/AlertDialogLayout;->resolveSizeAndState(III)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/widget/AlertDialogLayout;->setMeasuredDimension(II)V

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v11, v5, :cond_f

    invoke-direct {v0, v6, v2}, Lcom/android/internal/widget/AlertDialogLayout;->forceUniformWidth(II)V

    :cond_f
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 26

    move-object/from16 v6, p0

    iget v8, v6, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingLeft:I

    sub-int v9, p4, p2

    iget v0, v6, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int v10, v9, v0

    sub-int v0, v9, v8

    iget v1, v6, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingRight:I

    sub-int v11, v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getChildCount()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getGravity()I

    move-result v13

    and-int/lit8 v4, v13, 0x70

    const v0, 0x800007

    and-int v14, v13, v0

    const/16 v0, 0x10

    if-eq v4, v0, :cond_1

    const/16 v0, 0x50

    if-eq v4, v0, :cond_0

    iget v0, v6, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    goto :goto_0

    :cond_0
    iget v0, v6, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    add-int v0, v0, p5

    sub-int v0, v0, p3

    sub-int/2addr v0, v12

    goto :goto_0

    :cond_1
    iget v0, v6, Lcom/android/internal/widget/AlertDialogLayout;->mPaddingTop:I

    sub-int v1, p5, p3

    sub-int/2addr v1, v12

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    nop

    :goto_0
    nop

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getDividerDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v1, 0x0

    if-nez v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    move v15, v2

    nop

    :goto_2
    if-ge v1, v5, :cond_9

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/AlertDialogLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_8

    move-object/from16 v16, v3

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    move/from16 v17, v4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    nop

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    if-gez v3, :cond_3

    move v3, v14

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/AlertDialogLayout;->getLayoutDirection()I

    move-result v7

    invoke-static {v3, v7}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v20

    move-object/from16 v21, v2

    and-int/lit8 v2, v20, 0x7

    move/from16 v22, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    iget v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    goto :goto_3

    :cond_4
    sub-int v2, v10, v18

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    goto :goto_3

    :cond_5
    sub-int v2, v11, v18

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v8

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    nop

    :goto_3
    nop

    invoke-virtual {v6, v1}, Lcom/android/internal/widget/AlertDialogLayout;->hasDividerBeforeChildAt(I)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/2addr v0, v15

    :cond_6
    iget v3, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int v23, v0, v3

    move-object v0, v6

    move/from16 v24, v1

    move-object/from16 v1, v21

    move/from16 v3, v23

    move-object v6, v4

    move/from16 v4, v18

    move/from16 v25, v5

    move/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/AlertDialogLayout;->setChildFrame(Landroid/view/View;IIII)V

    iget v0, v6, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v0, v19, v0

    add-int v23, v23, v0

    move/from16 v0, v23

    goto :goto_4

    :cond_7
    move/from16 v24, v1

    move/from16 v25, v5

    goto :goto_4

    :cond_8
    move/from16 v24, v1

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v25, v5

    :goto_4
    add-int/lit8 v1, v24, 0x1

    move-object/from16 v3, v16

    move/from16 v4, v17

    move/from16 v5, v25

    move-object/from16 v6, p0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v25, v5

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/AlertDialogLayout;->tryOnMeasure(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method
