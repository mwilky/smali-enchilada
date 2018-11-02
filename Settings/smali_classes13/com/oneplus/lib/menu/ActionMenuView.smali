.class public Lcom/oneplus/lib/menu/ActionMenuView;
.super Landroid/widget/LinearLayout;
.source "ActionMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;
.implements Lcom/oneplus/lib/menu/MenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;,
        Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;,
        Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;,
        Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;,
        Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field static final GENERATED_ITEM_PADDING:I = 0x4

.field static final MIN_CELL_SIZE:I = 0x30

.field private static final TAG:Ljava/lang/String; = "ActionMenuView"


# instance fields
.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mFormatItems:Z

.field private mFormatItemsWidth:I

.field private mGeneratedItemPadding:I

.field private mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

.field private mMinCellSize:I

.field mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

.field private mReserveOverflow:Z

.field private mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->setBaselineAligned(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    instance-of v6, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    move-object v6, v0

    check-cast v6, Lcom/oneplus/lib/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v8

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    const/4 v10, 0x0

    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    invoke-virtual {v0, v12, v5}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    div-int v10, v13, p1

    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    :cond_4
    iget-boolean v11, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    move v7, v8

    nop

    :cond_5
    iput-boolean v7, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v10, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int v8, v10, p1

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v5}, Landroid/view/View;->measure(II)V

    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 44

    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    sub-int/2addr v2, v4

    iget v8, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    div-int v8, v2, v8

    iget v9, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    rem-int v9, v2, v9

    const/4 v10, 0x0

    if-nez v8, :cond_0

    invoke-virtual {v0, v2, v10}, Lcom/oneplus/lib/menu/ActionMenuView;->setMeasuredDimension(II)V

    return-void

    :cond_0
    iget v11, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    div-int v12, v9, v8

    add-int/2addr v11, v12

    move v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v10

    move/from16 v21, v3

    move v3, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    const/4 v12, 0x0

    :goto_0
    move/from16 v22, v4

    if-ge v12, v10, :cond_8

    invoke-virtual {v0, v12}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v23, v8

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    move/from16 v26, v5

    move/from16 v24, v9

    goto/16 :goto_4

    :cond_1
    instance-of v7, v4, Lcom/oneplus/lib/menu/ActionMenuItemView;

    add-int/lit8 v13, v13, 0x1

    if-eqz v7, :cond_2

    iget v8, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v24, v9

    iget v9, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v25, v13

    const/4 v13, 0x0

    invoke-virtual {v4, v8, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_1

    :cond_2
    move/from16 v24, v9

    move/from16 v25, v13

    const/4 v13, 0x0

    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    if-eqz v7, :cond_3

    move-object v9, v4

    check-cast v9, Lcom/oneplus/lib/menu/ActionMenuItemView;

    invoke-virtual {v9}, Lcom/oneplus/lib/menu/ActionMenuItemView;->hasText()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v9, 0x0

    :goto_2
    iput-boolean v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    iget-boolean v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move v9, v14

    :goto_3
    invoke-static {v4, v11, v9, v6, v5}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v13

    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v26, v5

    iget-boolean v5, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-eqz v5, :cond_5

    add-int/lit8 v16, v16, 0x1

    :cond_5
    iget-boolean v5, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_6

    const/16 v17, 0x1

    :cond_6
    sub-int/2addr v14, v13

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v5, 0x1

    if-ne v13, v5, :cond_7

    shl-int/2addr v5, v12

    move/from16 v28, v3

    move-object/from16 v27, v4

    int-to-long v3, v5

    or-long v3, v18, v3

    move-wide/from16 v18, v3

    move/from16 v13, v25

    move/from16 v3, v28

    goto :goto_4

    :cond_7
    move/from16 v28, v3

    move/from16 v13, v25

    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v5, v26

    move/from16 v7, p2

    goto/16 :goto_0

    :cond_8
    move/from16 v26, v5

    move/from16 v23, v8

    move/from16 v24, v9

    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v13, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    const/4 v7, 0x0

    :goto_6
    if-lez v16, :cond_14

    if-lez v14, :cond_14

    const v12, 0x7fffffff

    const-wide/16 v27, 0x0

    const/16 v25, 0x0

    move v8, v12

    move/from16 v4, v25

    const/4 v12, 0x0

    :goto_7
    move v9, v12

    if-ge v9, v10, :cond_d

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move/from16 v31, v7

    move-object/from16 v7, v25

    check-cast v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-object/from16 v32, v12

    iget-boolean v12, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    if-nez v12, :cond_a

    move/from16 v34, v13

    goto :goto_8

    :cond_a
    iget v12, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v12, v8, :cond_b

    iget v8, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    move/from16 v33, v8

    const/4 v12, 0x1

    shl-int v8, v12, v9

    move/from16 v34, v13

    int-to-long v12, v8

    const/4 v4, 0x1

    move-wide/from16 v27, v12

    move/from16 v8, v33

    goto :goto_8

    :cond_b
    move/from16 v34, v13

    iget v12, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v12, v8, :cond_c

    const/4 v12, 0x1

    shl-int v13, v12, v9

    int-to-long v12, v13

    or-long v12, v27, v12

    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v27, v12

    :cond_c
    :goto_8
    add-int/lit8 v12, v9, 0x1

    move/from16 v7, v31

    move/from16 v13, v34

    goto :goto_7

    :cond_d
    move/from16 v31, v7

    move/from16 v34, v13

    or-long v18, v18, v27

    if-le v4, v14, :cond_e

    move/from16 v37, v5

    goto/16 :goto_d

    :cond_e
    add-int/lit8 v8, v8, 0x1

    const/4 v7, 0x0

    :goto_9
    if-ge v7, v10, :cond_13

    invoke-virtual {v0, v7}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move/from16 v35, v4

    const/4 v13, 0x1

    shl-int v4, v13, v7

    move/from16 v36, v14

    int-to-long v13, v4

    and-long v13, v27, v13

    const-wide/16 v29, 0x0

    cmp-long v4, v13, v29

    if-nez v4, :cond_10

    iget v4, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v4, v8, :cond_f

    const/4 v4, 0x1

    shl-int v13, v4, v7

    int-to-long v13, v13

    or-long v18, v18, v13

    :cond_f
    move/from16 v37, v5

    move/from16 v14, v36

    goto :goto_c

    :cond_10
    const/4 v4, 0x1

    if-eqz v5, :cond_12

    iget-boolean v13, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v13, :cond_12

    move/from16 v14, v36

    if-ne v14, v4, :cond_11

    iget v4, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v4, v11

    iget v13, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v37, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    :cond_11
    move/from16 v37, v5

    :goto_a
    goto :goto_b

    :cond_12
    move/from16 v37, v5

    move/from16 v14, v36

    :goto_b
    iget v4, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    iput-boolean v5, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    add-int/lit8 v14, v14, -0x1

    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v35

    move/from16 v5, v37

    goto :goto_9

    :cond_13
    move/from16 v35, v4

    move/from16 v37, v5

    const/4 v7, 0x1

    nop

    move/from16 v13, v34

    const/4 v4, 0x2

    goto/16 :goto_6

    :cond_14
    move/from16 v37, v5

    move/from16 v31, v7

    move/from16 v34, v13

    :goto_d
    move-wide/from16 v4, v18

    if-nez v17, :cond_15

    move/from16 v13, v34

    const/4 v7, 0x1

    if-ne v13, v7, :cond_16

    const/4 v7, 0x1

    goto :goto_e

    :cond_15
    move/from16 v13, v34

    :cond_16
    const/4 v7, 0x0

    :goto_e
    if-lez v14, :cond_24

    const-wide/16 v8, 0x0

    cmp-long v12, v4, v8

    if-eqz v12, :cond_24

    add-int/lit8 v8, v13, -0x1

    if-lt v14, v8, :cond_18

    if-nez v7, :cond_18

    const/4 v8, 0x1

    if-le v15, v8, :cond_17

    goto :goto_f

    :cond_17
    move/from16 v40, v7

    move/from16 v39, v13

    goto/16 :goto_15

    :cond_18
    :goto_f
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    int-to-float v8, v8

    if-nez v7, :cond_1a

    const-wide/16 v18, 0x1

    and-long v18, v4, v18

    const-wide/16 v27, 0x0

    cmp-long v9, v18, v27

    if-eqz v9, :cond_19

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v9, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v9, :cond_19

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    :cond_19
    add-int/lit8 v9, v10, -0x1

    const/4 v12, 0x1

    shl-int v9, v12, v9

    move/from16 v39, v13

    int-to-long v12, v9

    and-long/2addr v12, v4

    const-wide/16 v18, 0x0

    cmp-long v9, v12, v18

    if-eqz v9, :cond_1b

    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v12, v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v12, :cond_1b

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v8, v12

    goto :goto_10

    :cond_1a
    move/from16 v39, v13

    :cond_1b
    :goto_10
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1c

    mul-int v9, v14, v11

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    goto :goto_11

    :cond_1c
    const/4 v9, 0x0

    :goto_11
    const/4 v12, 0x0

    :goto_12
    if-ge v12, v10, :cond_23

    move/from16 v40, v7

    const/4 v13, 0x1

    shl-int v7, v13, v12

    move/from16 v41, v8

    int-to-long v7, v7

    and-long/2addr v7, v4

    const-wide/16 v18, 0x0

    cmp-long v7, v7, v18

    if-nez v7, :cond_1d

    goto :goto_13

    :cond_1d
    invoke-virtual {v0, v12}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    instance-of v13, v7, Lcom/oneplus/lib/menu/ActionMenuItemView;

    if-eqz v13, :cond_1f

    iput v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v12, :cond_1e

    iget-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v13, :cond_1e

    neg-int v13, v9

    const/16 v20, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_1e
    const/16 v31, 0x1

    :goto_13
    const/16 v20, 0x2

    goto :goto_14

    :cond_1f
    iget-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_20

    iput v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    neg-int v13, v9

    const/16 v20, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    const/16 v31, 0x1

    goto :goto_14

    :cond_20
    const/16 v20, 0x2

    if-eqz v12, :cond_21

    div-int/lit8 v13, v9, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    :cond_21
    add-int/lit8 v13, v10, -0x1

    if-eq v12, v13, :cond_22

    div-int/lit8 v13, v9, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    :cond_22
    :goto_14
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v40

    move/from16 v8, v41

    goto :goto_12

    :cond_23
    move/from16 v40, v7

    move/from16 v41, v8

    const/4 v14, 0x0

    goto :goto_15

    :cond_24
    move/from16 v40, v7

    move/from16 v39, v13

    :goto_15
    if-eqz v31, :cond_26

    const/16 v38, 0x0

    :goto_16
    move/from16 v8, v38

    if-ge v8, v10, :cond_26

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v13, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v13, :cond_25

    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_17

    :cond_25
    iget v13, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v13, v11

    iget v7, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v13, v7

    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v9, v4, v6}, Landroid/view/View;->measure(II)V

    :goto_17
    add-int/lit8 v38, v8, 0x1

    move-wide/from16 v4, v42

    goto :goto_16

    :cond_26
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    if-eq v1, v7, :cond_27

    move v4, v3

    goto :goto_18

    :cond_27
    move/from16 v4, v21

    :goto_18
    invoke-virtual {v0, v2, v4}, Lcom/oneplus/lib/menu/ActionMenuView;->setMeasuredDimension(II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(II)V

    const/16 v1, 0x10

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->gravity:I

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    const/16 v1, 0x10

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->gravity:I

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuView;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

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

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->dismissPopupMenus()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v3

    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    sub-int v11, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    move v15, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v3, :cond_6

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    nop

    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v13

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iget-boolean v5, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_2

    add-int/lit8 v5, v5, 0x0

    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v17

    move/from16 v18, v7

    iget v7, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int v17, v17, v7

    add-int v7, v17, v5

    move/from16 v19, v13

    goto :goto_1

    :cond_3
    move/from16 v18, v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v7, v7, v17

    move/from16 v19, v13

    iget v13, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v7, v13

    sub-int v17, v7, v5

    :goto_1
    move/from16 v13, v17

    div-int/lit8 v17, v9, 0x2

    sub-int v1, v6, v17

    move/from16 v20, v6

    add-int v6, v1, v9

    invoke-virtual {v14, v13, v1, v7, v6}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr v15, v5

    const/4 v1, 0x1

    nop

    move v12, v1

    move v9, v5

    goto :goto_2

    :cond_4
    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v13

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v5, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    add-int/2addr v11, v1

    sub-int/2addr v15, v1

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_5

    add-int/lit8 v11, v11, 0x0

    :cond_5
    add-int/lit8 v10, v10, 0x1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v18

    move/from16 v13, v19

    move/from16 v6, v20

    goto/16 :goto_0

    :cond_6
    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v13

    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    if-nez v12, :cond_7

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    sub-int v7, p4, p2

    div-int/lit8 v7, v7, 0x2

    div-int/lit8 v8, v4, 0x2

    sub-int v8, v7, v8

    div-int/lit8 v13, v5, 0x2

    sub-int v13, v20, v13

    add-int v14, v8, v4

    add-int v2, v13, v5

    invoke-virtual {v1, v8, v13, v14, v2}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_7
    if-eqz v12, :cond_8

    const/4 v14, 0x0

    nop

    :cond_8
    sub-int v1, v10, v14

    if-lez v1, :cond_9

    div-int v14, v15, v1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    const/4 v2, 0x0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-eqz v19, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    nop

    :goto_4
    if-ge v2, v3, :cond_c

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_b

    iget-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_a

    nop

    move/from16 v21, v1

    move/from16 v22, v9

    goto :goto_5

    :cond_a
    iget v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v13

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    div-int/lit8 v16, v14, 0x2

    move/from16 v21, v1

    sub-int v1, v20, v16

    sub-int v6, v5, v13

    move/from16 v22, v9

    add-int v9, v1, v14

    invoke-virtual {v7, v6, v1, v5, v9}, Landroid/view/View;->layout(IIII)V

    iget v6, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v13

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    goto :goto_5

    :cond_b
    move/from16 v21, v1

    move/from16 v22, v9

    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v21

    move/from16 v9, v22

    goto :goto_4

    :cond_c
    move/from16 v21, v1

    move/from16 v22, v9

    goto :goto_8

    :cond_d
    move/from16 v21, v1

    move/from16 v22, v9

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    nop

    :goto_6
    if-ge v2, v3, :cond_10

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_f

    iget-boolean v7, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_e

    goto :goto_7

    :cond_e
    iget v7, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v13, v9, 0x2

    sub-int v13, v20, v13

    add-int v14, v1, v7

    add-int v8, v13, v9

    invoke-virtual {v5, v1, v13, v14, v8}, Landroid/view/View;->layout(IIII)V

    iget v8, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/2addr v1, v8

    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_10
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget-boolean v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v4, :cond_2

    iput v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v2

    iget-boolean v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_4

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    iput v3, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_2
    return-void
.end method

.method public peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    return-void
.end method

.method public setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    iput-object p2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mReserveOverflow:Z

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V

    return-void
.end method

.method public setToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
