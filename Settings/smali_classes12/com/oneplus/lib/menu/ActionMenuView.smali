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
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->setBaselineAligned(Z)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 79
    .local v1, "density":F
    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    .line 80
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    .line 81
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 82
    iput v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/menu/ActionMenuView;)Lcom/oneplus/lib/widget/actionbar/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/menu/ActionMenuView;

    .line 44
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    return-object v0
.end method

.method static measureChildForCells(Landroid/view/View;IIII)I
    .locals 15
    .param p0, "child"    # Landroid/view/View;
    .param p1, "cellSize"    # I
    .param p2, "cellsRemaining"    # I
    .param p3, "parentHeightMeasureSpec"    # I
    .param p4, "parentHeightPadding"    # I

    move-object v0, p0

    move/from16 v1, p2

    .line 403
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 405
    .local v2, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    sub-int v3, v3, p4

    .line 407
    .local v3, "childHeightSize":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 408
    .local v4, "childHeightMode":I
    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 410
    .local v5, "childHeightSpec":I
    instance-of v6, v0, Lcom/oneplus/lib/menu/ActionMenuItemView;

    if-eqz v6, :cond_0

    .line 411
    move-object v6, v0

    check-cast v6, Lcom/oneplus/lib/menu/ActionMenuItemView;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 412
    .local v6, "itemView":Lcom/oneplus/lib/menu/ActionMenuItemView;
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

    .line 414
    .local v9, "hasText":Z
    :goto_1
    const/4 v10, 0x0

    .line 415
    .local v10, "cellsUsed":I
    if-lez v1, :cond_4

    const/4 v11, 0x2

    if-eqz v9, :cond_2

    if-lt v1, v11, :cond_4

    .line 416
    :cond_2
    mul-int v12, p1, v1

    const/high16 v13, -0x80000000

    invoke-static {v12, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 418
    .local v12, "childWidthSpec":I
    invoke-virtual {v0, v12, v5}, Landroid/view/View;->measure(II)V

    .line 420
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 421
    .local v13, "measuredWidth":I
    div-int v10, v13, p1

    .line 422
    rem-int v14, v13, p1

    if-eqz v14, :cond_3

    add-int/lit8 v10, v10, 0x1

    .line 423
    :cond_3
    if-eqz v9, :cond_4

    if-ge v10, v11, :cond_4

    const/4 v10, 0x2

    .line 426
    .end local v12    # "childWidthSpec":I
    .end local v13    # "measuredWidth":I
    :cond_4
    iget-boolean v11, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-nez v11, :cond_5

    if-eqz v9, :cond_5

    move v7, v8

    nop

    .line 427
    .local v7, "expandable":Z
    :cond_5
    iput-boolean v7, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 429
    iput v10, v2, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 430
    mul-int v8, v10, p1

    .line 431
    .local v8, "targetWidth":I
    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v5}, Landroid/view/View;->measure(II)V

    .line 433
    return v10
.end method

.method private onMeasureExactFormat(II)V
    .locals 44
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    move-object/from16 v0, p0

    .line 177
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 178
    .local v1, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 179
    .local v2, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 181
    .local v3, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 182
    .local v4, "widthPadding":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    .line 184
    .local v5, "heightPadding":I
    const/4 v6, -0x2

    move/from16 v7, p2

    invoke-static {v7, v5, v6}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildMeasureSpec(III)I

    move-result v6

    .line 187
    .local v6, "itemHeightSpec":I
    sub-int/2addr v2, v4

    .line 190
    iget v8, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    div-int v8, v2, v8

    .line 191
    .local v8, "cellCount":I
    iget v9, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    rem-int v9, v2, v9

    .line 193
    .local v9, "cellSizeRemaining":I
    const/4 v10, 0x0

    if-nez v8, :cond_0

    .line 195
    invoke-virtual {v0, v2, v10}, Lcom/oneplus/lib/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 196
    return-void

    .line 199
    :cond_0
    iget v11, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mMinCellSize:I

    div-int v12, v9, v8

    add-int/2addr v11, v12

    .line 201
    .local v11, "cellSize":I
    move v12, v8

    .line 202
    .local v12, "cellsRemaining":I
    const/4 v13, 0x0

    .line 203
    .local v13, "maxChildHeight":I
    const/4 v14, 0x0

    .line 204
    .local v14, "maxCellsUsed":I
    const/4 v15, 0x0

    .line 205
    .local v15, "expandableItemCount":I
    const/16 v16, 0x0

    .line 206
    .local v16, "visibleItemCount":I
    const/16 v17, 0x0

    .line 209
    .local v17, "hasOverflow":Z
    const-wide/16 v18, 0x0

    .line 211
    .local v18, "smallestItemsAt":J
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v10

    .line 212
    .local v10, "childCount":I
    move/from16 v21, v3

    move v3, v13

    move/from16 v13, v16

    move/from16 v16, v15

    move v15, v14

    move v14, v12

    const/4 v12, 0x0

    .local v3, "maxChildHeight":I
    .local v12, "i":I
    .local v13, "visibleItemCount":I
    .local v14, "cellsRemaining":I
    .local v15, "maxCellsUsed":I
    .local v16, "expandableItemCount":I
    .local v21, "heightSize":I
    :goto_0
    move/from16 v22, v4

    .end local v4    # "widthPadding":I
    .local v22, "widthPadding":I
    if-ge v12, v10, :cond_8

    .line 213
    invoke-virtual {v0, v12}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 214
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    move/from16 v23, v8

    const/16 v8, 0x8

    .end local v8    # "cellCount":I
    .local v23, "cellCount":I
    if-ne v7, v8, :cond_1

    .line 212
    .end local v4    # "child":Landroid/view/View;
    move/from16 v26, v5

    move/from16 v24, v9

    goto/16 :goto_4

    .line 216
    .restart local v4    # "child":Landroid/view/View;
    :cond_1
    instance-of v7, v4, Lcom/oneplus/lib/menu/ActionMenuItemView;

    .line 217
    .local v7, "isGeneratedItem":Z
    add-int/lit8 v13, v13, 0x1

    .line 219
    if-eqz v7, :cond_2

    .line 222
    iget v8, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v24, v9

    iget v9, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    .end local v9    # "cellSizeRemaining":I
    .local v24, "cellSizeRemaining":I
    move/from16 v25, v13

    const/4 v13, 0x0

    invoke-virtual {v4, v8, v13, v9, v13}, Landroid/view/View;->setPadding(IIII)V

    .end local v13    # "visibleItemCount":I
    .local v25, "visibleItemCount":I
    goto :goto_1

    .line 225
    .end local v24    # "cellSizeRemaining":I
    .end local v25    # "visibleItemCount":I
    .restart local v9    # "cellSizeRemaining":I
    .restart local v13    # "visibleItemCount":I
    :cond_2
    move/from16 v24, v9

    move/from16 v25, v13

    const/4 v13, 0x0

    .end local v9    # "cellSizeRemaining":I
    .end local v13    # "visibleItemCount":I
    .restart local v24    # "cellSizeRemaining":I
    .restart local v25    # "visibleItemCount":I
    :goto_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 226
    .local v8, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 227
    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 228
    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 229
    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    .line 230
    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 231
    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 232
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

    .line 235
    iget-boolean v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    move v9, v14

    .line 237
    .local v9, "cellsAvailable":I
    :goto_3
    invoke-static {v4, v11, v9, v6, v5}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v13

    .line 240
    .local v13, "cellsUsed":I
    invoke-static {v15, v13}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 241
    move/from16 v26, v5

    iget-boolean v5, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    .end local v5    # "heightPadding":I
    .local v26, "heightPadding":I
    if-eqz v5, :cond_5

    add-int/lit8 v16, v16, 0x1

    .line 242
    :cond_5
    iget-boolean v5, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_6

    const/16 v17, 0x1

    .line 244
    :cond_6
    sub-int/2addr v14, v13

    .line 245
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 246
    const/4 v5, 0x1

    if-ne v13, v5, :cond_7

    shl-int/2addr v5, v12

    move/from16 v28, v3

    move-object/from16 v27, v4

    int-to-long v3, v5

    .end local v3    # "maxChildHeight":I
    .end local v4    # "child":Landroid/view/View;
    .local v27, "child":Landroid/view/View;
    .local v28, "maxChildHeight":I
    or-long v3, v18, v3

    .line 212
    .end local v7    # "isGeneratedItem":Z
    .end local v8    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v9    # "cellsAvailable":I
    .end local v13    # "cellsUsed":I
    .end local v18    # "smallestItemsAt":J
    .end local v27    # "child":Landroid/view/View;
    .local v3, "smallestItemsAt":J
    move-wide/from16 v18, v3

    move/from16 v13, v25

    move/from16 v3, v28

    goto :goto_4

    .end local v28    # "maxChildHeight":I
    .local v3, "maxChildHeight":I
    .restart local v18    # "smallestItemsAt":J
    :cond_7
    move/from16 v28, v3

    move/from16 v13, v25

    .end local v25    # "visibleItemCount":I
    .local v13, "visibleItemCount":I
    :goto_4
    add-int/lit8 v12, v12, 0x1

    move/from16 v4, v22

    move/from16 v8, v23

    move/from16 v9, v24

    move/from16 v5, v26

    move/from16 v7, p2

    goto/16 :goto_0

    .line 251
    .end local v12    # "i":I
    .end local v23    # "cellCount":I
    .end local v24    # "cellSizeRemaining":I
    .end local v26    # "heightPadding":I
    .restart local v5    # "heightPadding":I
    .local v8, "cellCount":I
    .local v9, "cellSizeRemaining":I
    :cond_8
    move/from16 v26, v5

    move/from16 v23, v8

    move/from16 v24, v9

    .end local v5    # "heightPadding":I
    .end local v8    # "cellCount":I
    .end local v9    # "cellSizeRemaining":I
    .restart local v23    # "cellCount":I
    .restart local v24    # "cellSizeRemaining":I
    .restart local v26    # "heightPadding":I
    const/4 v4, 0x2

    if-eqz v17, :cond_9

    if-ne v13, v4, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 256
    .local v5, "centerSingleExpandedItem":Z
    :goto_5
    const/4 v7, 0x0

    .line 257
    .local v7, "needsExpansion":Z
    :goto_6
    if-lez v16, :cond_14

    if-lez v14, :cond_14

    .line 258
    const v12, 0x7fffffff

    .line 259
    .local v12, "minCells":I
    const-wide/16 v27, 0x0

    .line 260
    .local v27, "minCellsAt":J
    const/16 v25, 0x0

    .line 261
    .local v25, "minCellsItemCount":I
    move v8, v12

    move/from16 v4, v25

    const/4 v12, 0x0

    .end local v25    # "minCellsItemCount":I
    .local v4, "minCellsItemCount":I
    .local v8, "minCells":I
    .local v12, "i":I
    :goto_7
    move v9, v12

    .end local v12    # "i":I
    .local v9, "i":I
    if-ge v9, v10, :cond_d

    .line 262
    invoke-virtual {v0, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 263
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    move/from16 v31, v7

    move-object/from16 v7, v25

    check-cast v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 266
    .local v7, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .local v31, "needsExpansion":Z
    move-object/from16 v32, v12

    iget-boolean v12, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expandable:Z

    .end local v12    # "child":Landroid/view/View;
    .local v32, "child":Landroid/view/View;
    if-nez v12, :cond_a

    .line 261
    .end local v7    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v32    # "child":Landroid/view/View;
    move/from16 v34, v13

    goto :goto_8

    .line 269
    .restart local v7    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .restart local v32    # "child":Landroid/view/View;
    :cond_a
    iget v12, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ge v12, v8, :cond_b

    .line 270
    iget v8, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 271
    move/from16 v33, v8

    const/4 v12, 0x1

    shl-int v8, v12, v9

    .end local v8    # "minCells":I
    .local v33, "minCells":I
    move/from16 v34, v13

    int-to-long v12, v8

    .line 272
    .end local v13    # "visibleItemCount":I
    .end local v27    # "minCellsAt":J
    .local v12, "minCellsAt":J
    .local v34, "visibleItemCount":I
    const/4 v4, 0x1

    .line 261
    move-wide/from16 v27, v12

    move/from16 v8, v33

    goto :goto_8

    .line 273
    .end local v12    # "minCellsAt":J
    .end local v33    # "minCells":I
    .end local v34    # "visibleItemCount":I
    .restart local v8    # "minCells":I
    .restart local v13    # "visibleItemCount":I
    .restart local v27    # "minCellsAt":J
    :cond_b
    move/from16 v34, v13

    .end local v13    # "visibleItemCount":I
    .restart local v34    # "visibleItemCount":I
    iget v12, v7, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v12, v8, :cond_c

    .line 274
    const/4 v12, 0x1

    shl-int v13, v12, v9

    int-to-long v12, v13

    or-long v12, v27, v12

    .line 275
    .end local v27    # "minCellsAt":J
    .restart local v12    # "minCellsAt":J
    add-int/lit8 v4, v4, 0x1

    .line 261
    .end local v7    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v32    # "child":Landroid/view/View;
    move-wide/from16 v27, v12

    .end local v12    # "minCellsAt":J
    .restart local v27    # "minCellsAt":J
    :cond_c
    :goto_8
    add-int/lit8 v12, v9, 0x1

    .end local v9    # "i":I
    .local v12, "i":I
    move/from16 v7, v31

    move/from16 v13, v34

    goto :goto_7

    .line 280
    .end local v12    # "i":I
    .end local v31    # "needsExpansion":Z
    .end local v34    # "visibleItemCount":I
    .local v7, "needsExpansion":Z
    .restart local v13    # "visibleItemCount":I
    :cond_d
    move/from16 v31, v7

    move/from16 v34, v13

    .end local v7    # "needsExpansion":Z
    .end local v13    # "visibleItemCount":I
    .restart local v31    # "needsExpansion":Z
    .restart local v34    # "visibleItemCount":I
    or-long v18, v18, v27

    .line 282
    if-le v4, v14, :cond_e

    .line 311
    .end local v4    # "minCellsItemCount":I
    .end local v8    # "minCells":I
    .end local v27    # "minCellsAt":J
    move/from16 v37, v5

    goto/16 :goto_d

    .line 285
    .restart local v4    # "minCellsItemCount":I
    .restart local v8    # "minCells":I
    .restart local v27    # "minCellsAt":J
    :cond_e
    add-int/lit8 v8, v8, 0x1

    .line 287
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9
    if-ge v7, v10, :cond_13

    .line 288
    invoke-virtual {v0, v7}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 289
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 290
    .local v12, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    move/from16 v35, v4

    const/4 v13, 0x1

    shl-int v4, v13, v7

    .end local v4    # "minCellsItemCount":I
    .local v35, "minCellsItemCount":I
    move/from16 v36, v14

    int-to-long v13, v4

    .end local v14    # "cellsRemaining":I
    .local v36, "cellsRemaining":I
    and-long v13, v27, v13

    const-wide/16 v29, 0x0

    cmp-long v4, v13, v29

    if-nez v4, :cond_10

    .line 292
    iget v4, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    if-ne v4, v8, :cond_f

    const/4 v4, 0x1

    shl-int v13, v4, v7

    int-to-long v13, v13

    or-long v18, v18, v13

    .line 287
    .end local v5    # "centerSingleExpandedItem":Z
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v36    # "cellsRemaining":I
    .restart local v14    # "cellsRemaining":I
    .local v37, "centerSingleExpandedItem":Z
    :cond_f
    move/from16 v37, v5

    move/from16 v14, v36

    goto :goto_c

    .line 296
    .end local v14    # "cellsRemaining":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    .restart local v9    # "child":Landroid/view/View;
    .restart local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .restart local v36    # "cellsRemaining":I
    :cond_10
    const/4 v4, 0x1

    if-eqz v5, :cond_12

    iget-boolean v13, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-eqz v13, :cond_12

    move/from16 v14, v36

    if-ne v14, v4, :cond_11

    .line 298
    .end local v36    # "cellsRemaining":I
    .restart local v14    # "cellsRemaining":I
    iget v4, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    add-int/2addr v4, v11

    iget v13, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mGeneratedItemPadding:I

    move/from16 v37, v5

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5, v13, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_a

    .line 300
    :cond_11
    move/from16 v37, v5

    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v37    # "centerSingleExpandedItem":Z
    :goto_a
    goto :goto_b

    .end local v14    # "cellsRemaining":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    .restart local v36    # "cellsRemaining":I
    :cond_12
    move/from16 v37, v5

    move/from16 v14, v36

    .end local v5    # "centerSingleExpandedItem":Z
    .end local v36    # "cellsRemaining":I
    .restart local v14    # "cellsRemaining":I
    .restart local v37    # "centerSingleExpandedItem":Z
    :goto_b
    iget v4, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 301
    iput-boolean v5, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 302
    add-int/lit8 v14, v14, -0x1

    .line 287
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :goto_c
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v35

    move/from16 v5, v37

    goto :goto_9

    .line 305
    .end local v7    # "i":I
    .end local v35    # "minCellsItemCount":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v4    # "minCellsItemCount":I
    .restart local v5    # "centerSingleExpandedItem":Z
    :cond_13
    move/from16 v35, v4

    move/from16 v37, v5

    .end local v4    # "minCellsItemCount":I
    .end local v5    # "centerSingleExpandedItem":Z
    .restart local v35    # "minCellsItemCount":I
    .restart local v37    # "centerSingleExpandedItem":Z
    const/4 v7, 0x1

    .line 306
    .end local v8    # "minCells":I
    .end local v27    # "minCellsAt":J
    .end local v31    # "needsExpansion":Z
    .end local v35    # "minCellsItemCount":I
    .local v7, "needsExpansion":Z
    nop

    .line 256
    move/from16 v13, v34

    const/4 v4, 0x2

    goto/16 :goto_6

    .line 311
    .end local v34    # "visibleItemCount":I
    .end local v37    # "centerSingleExpandedItem":Z
    .restart local v5    # "centerSingleExpandedItem":Z
    .restart local v13    # "visibleItemCount":I
    :cond_14
    move/from16 v37, v5

    move/from16 v31, v7

    move/from16 v34, v13

    .end local v5    # "centerSingleExpandedItem":Z
    .end local v7    # "needsExpansion":Z
    .end local v13    # "visibleItemCount":I
    .end local v18    # "smallestItemsAt":J
    .local v4, "smallestItemsAt":J
    .restart local v31    # "needsExpansion":Z
    .restart local v34    # "visibleItemCount":I
    .restart local v37    # "centerSingleExpandedItem":Z
    :goto_d
    move-wide/from16 v4, v18

    if-nez v17, :cond_15

    move/from16 v13, v34

    const/4 v7, 0x1

    if-ne v13, v7, :cond_16

    .end local v34    # "visibleItemCount":I
    .restart local v13    # "visibleItemCount":I
    const/4 v7, 0x1

    goto :goto_e

    .end local v13    # "visibleItemCount":I
    .restart local v34    # "visibleItemCount":I
    :cond_15
    move/from16 v13, v34

    .end local v34    # "visibleItemCount":I
    .restart local v13    # "visibleItemCount":I
    :cond_16
    const/4 v7, 0x0

    .line 312
    .local v7, "singleItem":Z
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

    .line 368
    :cond_17
    move/from16 v40, v7

    move/from16 v39, v13

    goto/16 :goto_15

    .line 314
    :cond_18
    :goto_f
    invoke-static {v4, v5}, Ljava/lang/Long;->bitCount(J)I

    move-result v8

    int-to-float v8, v8

    .line 316
    .local v8, "expandCount":F
    if-nez v7, :cond_1a

    .line 318
    const-wide/16 v18, 0x1

    and-long v18, v4, v18

    const-wide/16 v27, 0x0

    cmp-long v9, v18, v27

    if-eqz v9, :cond_19

    .line 319
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 320
    .restart local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    iget-boolean v9, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v9, :cond_19

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 322
    .end local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :cond_19
    add-int/lit8 v9, v10, -0x1

    const/4 v12, 0x1

    shl-int v9, v12, v9

    move/from16 v39, v13

    int-to-long v12, v9

    .end local v13    # "visibleItemCount":I
    .local v39, "visibleItemCount":I
    and-long/2addr v12, v4

    const-wide/16 v18, 0x0

    cmp-long v9, v12, v18

    if-eqz v9, :cond_1b

    .line 323
    add-int/lit8 v9, v10, -0x1

    invoke-virtual {v0, v9}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 324
    .local v9, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    iget-boolean v12, v9, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v12, :cond_1b

    const/high16 v12, 0x3f000000    # 0.5f

    sub-float/2addr v8, v12

    .end local v9    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    goto :goto_10

    .line 328
    .end local v39    # "visibleItemCount":I
    .restart local v13    # "visibleItemCount":I
    :cond_1a
    move/from16 v39, v13

    .end local v13    # "visibleItemCount":I
    .restart local v39    # "visibleItemCount":I
    :cond_1b
    :goto_10
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-lez v9, :cond_1c

    .line 329
    mul-int v9, v14, v11

    int-to-float v9, v9

    div-float/2addr v9, v8

    float-to-int v9, v9

    goto :goto_11

    :cond_1c
    const/4 v9, 0x0

    .line 331
    .local v9, "extraPixels":I
    :goto_11
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_12
    if-ge v12, v10, :cond_23

    .line 332
    move/from16 v40, v7

    const/4 v13, 0x1

    shl-int v7, v13, v12

    .end local v7    # "singleItem":Z
    .local v40, "singleItem":Z
    move/from16 v41, v8

    int-to-long v7, v7

    .end local v8    # "expandCount":F
    .local v41, "expandCount":F
    and-long/2addr v7, v4

    const-wide/16 v18, 0x0

    cmp-long v7, v7, v18

    if-nez v7, :cond_1d

    goto :goto_13

    .line 334
    :cond_1d
    invoke-virtual {v0, v12}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 335
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 336
    .local v8, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    instance-of v13, v7, Lcom/oneplus/lib/menu/ActionMenuItemView;

    if-eqz v13, :cond_1f

    .line 338
    iput v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 339
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 340
    if-nez v12, :cond_1e

    iget-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    if-nez v13, :cond_1e

    .line 343
    neg-int v13, v9

    const/16 v20, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 345
    :cond_1e
    const/16 v31, 0x1

    .line 331
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :goto_13
    const/16 v20, 0x2

    goto :goto_14

    .line 346
    .restart local v7    # "child":Landroid/view/View;
    .restart local v8    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :cond_1f
    iget-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_20

    .line 347
    iput v9, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    .line 348
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    .line 349
    neg-int v13, v9

    const/16 v20, 0x2

    div-int/lit8 v13, v13, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 350
    const/16 v31, 0x1

    goto :goto_14

    .line 355
    :cond_20
    const/16 v20, 0x2

    if-eqz v12, :cond_21

    .line 356
    div-int/lit8 v13, v9, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 358
    :cond_21
    add-int/lit8 v13, v10, -0x1

    if-eq v12, v13, :cond_22

    .line 359
    div-int/lit8 v13, v9, 0x2

    iput v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .line 331
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :cond_22
    :goto_14
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v40

    move/from16 v8, v41

    goto :goto_12

    .line 364
    .end local v12    # "i":I
    .end local v40    # "singleItem":Z
    .end local v41    # "expandCount":F
    .local v7, "singleItem":Z
    .local v8, "expandCount":F
    :cond_23
    move/from16 v40, v7

    move/from16 v41, v8

    .end local v7    # "singleItem":Z
    .end local v8    # "expandCount":F
    .restart local v40    # "singleItem":Z
    .restart local v41    # "expandCount":F
    const/4 v14, 0x0

    .end local v9    # "extraPixels":I
    .end local v41    # "expandCount":F
    goto :goto_15

    .line 368
    .end local v39    # "visibleItemCount":I
    .end local v40    # "singleItem":Z
    .restart local v7    # "singleItem":Z
    .restart local v13    # "visibleItemCount":I
    :cond_24
    move/from16 v40, v7

    move/from16 v39, v13

    .end local v7    # "singleItem":Z
    .end local v13    # "visibleItemCount":I
    .restart local v39    # "visibleItemCount":I
    .restart local v40    # "singleItem":Z
    :goto_15
    if-eqz v31, :cond_26

    .line 369
    const/16 v38, 0x0

    .local v38, "i":I
    :goto_16
    move/from16 v8, v38

    .end local v38    # "i":I
    .local v8, "i":I
    if-ge v8, v10, :cond_26

    .line 370
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 371
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 373
    .local v12, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    iget-boolean v13, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->expanded:Z

    if-nez v13, :cond_25

    .line 369
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    goto :goto_17

    .line 375
    .restart local v9    # "child":Landroid/view/View;
    .restart local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :cond_25
    iget v13, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->cellsUsed:I

    mul-int/2addr v13, v11

    iget v7, v12, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->extraPixels:I

    add-int/2addr v13, v7

    .line 376
    .local v13, "width":I
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v13, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .end local v4    # "smallestItemsAt":J
    .local v42, "smallestItemsAt":J
    invoke-virtual {v9, v4, v6}, Landroid/view/View;->measure(II)V

    .line 369
    .end local v9    # "child":Landroid/view/View;
    .end local v12    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v13    # "width":I
    :goto_17
    add-int/lit8 v38, v8, 0x1

    .end local v8    # "i":I
    .restart local v38    # "i":I
    move-wide/from16 v4, v42

    goto :goto_16

    .line 381
    .end local v38    # "i":I
    .end local v42    # "smallestItemsAt":J
    .restart local v4    # "smallestItemsAt":J
    :cond_26
    move-wide/from16 v42, v4

    const/high16 v7, 0x40000000    # 2.0f

    .end local v4    # "smallestItemsAt":J
    .restart local v42    # "smallestItemsAt":J
    if-eq v1, v7, :cond_27

    .line 382
    move v4, v3

    .end local v21    # "heightSize":I
    .local v4, "heightSize":I
    goto :goto_18

    .line 385
    .end local v4    # "heightSize":I
    .restart local v21    # "heightSize":I
    :cond_27
    move/from16 v4, v21

    .end local v21    # "heightSize":I
    .restart local v4    # "heightSize":I
    :goto_18
    invoke-virtual {v0, v2, v4}, Lcom/oneplus/lib/menu/ActionMenuView;->setMeasuredDimension(II)V

    .line 386
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 606
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

    .line 712
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 715
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 579
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(II)V

    .line 581
    .local v0, "params":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 582
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 44
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 587
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 592
    if-eqz p1, :cond_2

    .line 593
    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    if-eqz v0, :cond_0

    .line 594
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;)V

    goto :goto_0

    .line 595
    :cond_0
    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 596
    .local v0, "result":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :goto_0
    iget v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->gravity:I

    if-gtz v1, :cond_1

    .line 597
    const/16 v1, 0x10

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->gravity:I

    .line 599
    :cond_1
    return-object v0

    .line 601
    .end local v0    # "result":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .locals 2

    .line 611
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->generateDefaultLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v0

    .line 612
    .local v0, "result":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 613
    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v0, :cond_1

    .line 644
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 645
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 646
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuView$MenuBuilderCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuView;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->setCallback(Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    .line 647
    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 648
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setReserveOverflow(Z)V

    .line 649
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    if-eqz v2, :cond_0

    .line 650
    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;

    invoke-direct {v2}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuPresenterCallback;-><init>()V

    .line 649
    :goto_0
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    .line 651
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    iget-object v3, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    .line 652
    iget-object v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V

    .line 655
    .end local v0    # "context":Landroid/content/Context;
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 564
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getPopupTheme()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    .line 625
    const/4 v0, 0x0

    return v0
.end method

.method protected hasSupportDividerBeforeChildAt(I)Z
    .locals 4
    .param p1, "childIndex"    # I

    .line 721
    if-nez p1, :cond_0

    .line 722
    const/4 v0, 0x0

    return v0

    .line 724
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 725
    .local v0, "childBefore":Landroid/view/View;
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 726
    .local v1, "child":Landroid/view/View;
    const/4 v2, 0x0

    .line 727
    .local v2, "result":Z
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_1

    instance-of v3, v0, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_1

    .line 728
    move-object v3, v0

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;->needsDividerAfter()Z

    move-result v3

    or-int/2addr v2, v3

    .line 730
    :cond_1
    if-lez p1, :cond_2

    instance-of v3, v1, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    if-eqz v3, :cond_2

    .line 731
    move-object v3, v1

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;

    invoke-interface {v3}, Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;->needsDividerBefore()Z

    move-result v3

    or-int/2addr v2, v3

    .line 733
    :cond_2
    return v2
.end method

.method public hideOverflowMenu()Z
    .locals 1

    .line 690
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
    .param p1, "menu"    # Lcom/oneplus/lib/menu/MenuBuilder;

    .line 631
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    .line 632
    return-void
.end method

.method public invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 2
    .param p1, "item"    # Lcom/oneplus/lib/menu/MenuItemImpl;

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    .line 705
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

    .line 700
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

    .line 569
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mReserveOverflow:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 127
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 129
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 132
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 134
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->showOverflowMenu()Z

    .line 137
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 543
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 544
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->dismissPopupMenus()V

    .line 545
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 24
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    move-object/from16 v0, p0

    .line 438
    iget-boolean v3, v0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-nez v3, :cond_0

    .line 439
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 440
    return-void

    .line 443
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v3

    .line 444
    .local v3, "childCount":I
    sub-int v6, p5, p3

    div-int/lit8 v6, v6, 0x2

    .line 445
    .local v6, "midVertical":I
    const/4 v7, 0x0

    .line 446
    .local v7, "dividerWidth":I
    const/4 v8, 0x0

    .line 447
    .local v8, "overflowWidth":I
    const/4 v9, 0x0

    .line 448
    .local v9, "nonOverflowWidth":I
    const/4 v10, 0x0

    .line 449
    .local v10, "nonOverflowCount":I
    sub-int v11, p4, p2

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 450
    .local v11, "widthRemaining":I
    const/4 v12, 0x0

    .line 451
    .local v12, "hasOverflow":Z
    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v13

    .line 452
    .local v13, "isLayoutRtl":Z
    move v15, v11

    move v11, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "overflowWidth":I
    .local v11, "nonOverflowWidth":I
    .local v15, "widthRemaining":I
    :goto_0
    if-ge v8, v3, :cond_6

    .line 453
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 454
    .local v14, "v":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 455
    nop

    .line 452
    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v13

    goto/16 :goto_2

    .line 458
    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 459
    .local v4, "p":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    iget-boolean v5, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v5, :cond_4

    .line 460
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 461
    .end local v9    # "overflowWidth":I
    .local v5, "overflowWidth":I
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 462
    add-int/lit8 v5, v5, 0x0

    .line 464
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 467
    .local v9, "height":I
    if-eqz v13, :cond_3

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v17

    move/from16 v18, v7

    iget v7, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .end local v7    # "dividerWidth":I
    .local v18, "dividerWidth":I
    add-int v17, v17, v7

    .line 469
    .local v17, "l":I
    add-int v7, v17, v5

    .line 472
    .local v7, "r":I
    move/from16 v19, v13

    goto :goto_1

    .line 471
    .end local v17    # "l":I
    .end local v18    # "dividerWidth":I
    .local v7, "dividerWidth":I
    :cond_3
    move/from16 v18, v7

    .end local v7    # "dividerWidth":I
    .restart local v18    # "dividerWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v17

    sub-int v7, v7, v17

    move/from16 v19, v13

    iget v13, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    .end local v13    # "isLayoutRtl":Z
    .local v19, "isLayoutRtl":Z
    sub-int/2addr v7, v13

    .line 472
    .local v7, "r":I
    sub-int v17, v7, v5

    .restart local v17    # "l":I
    :goto_1
    move/from16 v13, v17

    .line 474
    .end local v17    # "l":I
    .local v13, "l":I
    div-int/lit8 v17, v9, 0x2

    sub-int v1, v6, v17

    .line 475
    .local v1, "t":I
    move/from16 v20, v6

    add-int v6, v1, v9

    .line 476
    .local v6, "b":I
    .local v20, "midVertical":I
    invoke-virtual {v14, v13, v1, v7, v6}, Landroid/view/View;->layout(IIII)V

    .line 478
    sub-int/2addr v15, v5

    .line 479
    const/4 v1, 0x1

    .line 480
    .end local v6    # "b":I
    .end local v7    # "r":I
    .end local v9    # "height":I
    .end local v12    # "hasOverflow":Z
    .end local v13    # "l":I
    .local v1, "hasOverflow":Z
    nop

    .line 452
    move v12, v1

    move v9, v5

    goto :goto_2

    .line 481
    .end local v1    # "hasOverflow":Z
    .end local v5    # "overflowWidth":I
    .end local v18    # "dividerWidth":I
    .end local v19    # "isLayoutRtl":Z
    .end local v20    # "midVertical":I
    .local v6, "midVertical":I
    .local v7, "dividerWidth":I
    .local v9, "overflowWidth":I
    .restart local v12    # "hasOverflow":Z
    .local v13, "isLayoutRtl":Z
    :cond_4
    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v13

    .end local v6    # "midVertical":I
    .end local v7    # "dividerWidth":I
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "dividerWidth":I
    .restart local v19    # "isLayoutRtl":Z
    .restart local v20    # "midVertical":I
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget v5, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v5

    iget v5, v4, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v5

    .line 482
    .local v1, "size":I
    add-int/2addr v11, v1

    .line 483
    sub-int/2addr v15, v1

    .line 484
    invoke-virtual {v0, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->hasSupportDividerBeforeChildAt(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 485
    add-int/lit8 v11, v11, 0x0

    .line 487
    :cond_5
    add-int/lit8 v10, v10, 0x1

    .line 452
    .end local v1    # "size":I
    .end local v4    # "p":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v14    # "v":Landroid/view/View;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v7, v18

    move/from16 v13, v19

    move/from16 v6, v20

    goto/16 :goto_0

    .line 491
    .end local v8    # "i":I
    .end local v18    # "dividerWidth":I
    .end local v19    # "isLayoutRtl":Z
    .end local v20    # "midVertical":I
    .restart local v6    # "midVertical":I
    .restart local v7    # "dividerWidth":I
    .restart local v13    # "isLayoutRtl":Z
    :cond_6
    move/from16 v20, v6

    move/from16 v18, v7

    move/from16 v19, v13

    .end local v6    # "midVertical":I
    .end local v7    # "dividerWidth":I
    .end local v13    # "isLayoutRtl":Z
    .restart local v18    # "dividerWidth":I
    .restart local v19    # "isLayoutRtl":Z
    .restart local v20    # "midVertical":I
    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    if-nez v12, :cond_7

    .line 493
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 494
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 495
    .local v4, "width":I
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 496
    .local v5, "height":I
    sub-int v7, p4, p2

    div-int/lit8 v7, v7, 0x2

    .line 497
    .local v7, "midHorizontal":I
    div-int/lit8 v8, v4, 0x2

    sub-int v8, v7, v8

    .line 498
    .local v8, "l":I
    div-int/lit8 v13, v5, 0x2

    sub-int v13, v20, v13

    .line 499
    .local v13, "t":I
    add-int v14, v8, v4

    add-int v2, v13, v5

    invoke-virtual {v1, v8, v13, v14, v2}, Landroid/view/View;->layout(IIII)V

    .line 500
    return-void

    .line 503
    .end local v1    # "v":Landroid/view/View;
    .end local v4    # "width":I
    .end local v5    # "height":I
    .end local v7    # "midHorizontal":I
    .end local v8    # "l":I
    .end local v13    # "t":I
    :cond_7
    if-eqz v12, :cond_8

    const/4 v14, 0x0

    nop

    :cond_8
    sub-int v1, v10, v14

    .line 504
    .local v1, "spacerCount":I
    if-lez v1, :cond_9

    div-int v14, v15, v1

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    :goto_3
    const/4 v2, 0x0

    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 506
    .local v4, "spacerSize":I
    if-eqz v19, :cond_d

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v5, v7

    .line 508
    .local v5, "startRight":I
    nop

    .local v2, "i":I
    :goto_4
    if-ge v2, v3, :cond_c

    .line 509
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 510
    .local v7, "v":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 511
    .local v8, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_b

    iget-boolean v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v13, :cond_a

    .line 512
    nop

    .line 508
    move/from16 v21, v1

    move/from16 v22, v9

    goto :goto_5

    .line 515
    :cond_a
    iget v13, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v13

    .line 516
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    .line 517
    .local v13, "width":I
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 518
    .local v14, "height":I
    div-int/lit8 v16, v14, 0x2

    move/from16 v21, v1

    sub-int v1, v20, v16

    .line 519
    .local v1, "t":I
    .local v21, "spacerCount":I
    sub-int v6, v5, v13

    move/from16 v22, v9

    add-int v9, v1, v14

    .end local v9    # "overflowWidth":I
    .local v22, "overflowWidth":I
    invoke-virtual {v7, v6, v1, v5, v9}, Landroid/view/View;->layout(IIII)V

    .line 520
    iget v6, v8, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v6, v13

    add-int/2addr v6, v4

    sub-int/2addr v5, v6

    .end local v1    # "t":I
    .end local v7    # "v":Landroid/view/View;
    .end local v8    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v13    # "width":I
    .end local v14    # "height":I
    goto :goto_5

    .line 508
    .end local v21    # "spacerCount":I
    .end local v22    # "overflowWidth":I
    .local v1, "spacerCount":I
    .restart local v9    # "overflowWidth":I
    :cond_b
    move/from16 v21, v1

    move/from16 v22, v9

    .end local v1    # "spacerCount":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "overflowWidth":I
    :goto_5
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v21

    move/from16 v9, v22

    goto :goto_4

    .line 522
    .end local v2    # "i":I
    .end local v5    # "startRight":I
    .end local v21    # "spacerCount":I
    .end local v22    # "overflowWidth":I
    .restart local v1    # "spacerCount":I
    .restart local v9    # "overflowWidth":I
    :cond_c
    move/from16 v21, v1

    move/from16 v22, v9

    .end local v1    # "spacerCount":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "overflowWidth":I
    goto :goto_8

    .line 523
    .end local v21    # "spacerCount":I
    .end local v22    # "overflowWidth":I
    .restart local v1    # "spacerCount":I
    .restart local v9    # "overflowWidth":I
    :cond_d
    move/from16 v21, v1

    move/from16 v22, v9

    .end local v1    # "spacerCount":I
    .end local v9    # "overflowWidth":I
    .restart local v21    # "spacerCount":I
    .restart local v22    # "overflowWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getPaddingLeft()I

    move-result v1

    .line 524
    .local v1, "startLeft":I
    nop

    .restart local v2    # "i":I
    :goto_6
    if-ge v2, v3, :cond_10

    .line 525
    invoke-virtual {v0, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 526
    .local v5, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 527
    .local v6, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_f

    iget-boolean v7, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->isOverflowButton:Z

    if-eqz v7, :cond_e

    .line 528
    goto :goto_7

    .line 531
    :cond_e
    iget v7, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v7

    .line 532
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 533
    .local v7, "width":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 534
    .local v9, "height":I
    div-int/lit8 v13, v9, 0x2

    sub-int v13, v20, v13

    .line 535
    .local v13, "t":I
    add-int v14, v1, v7

    add-int v8, v13, v9

    invoke-virtual {v5, v1, v13, v14, v8}, Landroid/view/View;->layout(IIII)V

    .line 536
    iget v8, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v7

    add-int/2addr v8, v4

    add-int/2addr v1, v8

    .line 524
    .end local v5    # "v":Landroid/view/View;
    .end local v6    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    .end local v7    # "width":I
    .end local v9    # "height":I
    .end local v13    # "t":I
    :cond_f
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 539
    .end local v1    # "startLeft":I
    .end local v2    # "i":I
    :cond_10
    :goto_8
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 146
    iget-boolean v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    .line 147
    .local v0, "wasFormatted":Z
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

    .line 149
    iget-boolean v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eq v0, v1, :cond_1

    .line 150
    iput v3, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 155
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 156
    .local v1, "widthSize":I
    iget-boolean v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    if-eq v1, v4, :cond_2

    .line 157
    iput v1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItemsWidth:I

    .line 158
    iget-object v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 161
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildCount()I

    move-result v2

    .line 162
    .local v2, "childCount":I
    iget-boolean v4, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mFormatItems:Z

    if-eqz v4, :cond_3

    if-lez v2, :cond_3

    .line 163
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/menu/ActionMenuView;->onMeasureExactFormat(II)V

    goto :goto_2

    .line 166
    :cond_3
    move v4, v3

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_4

    .line 167
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/menu/ActionMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 168
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    .line 169
    .local v6, "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    iput v3, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->rightMargin:I

    iput v3, v6, Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;->leftMargin:I

    .line 166
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "lp":Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 171
    .end local v4    # "i":I
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 173
    :goto_2
    return-void
.end method

.method public peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 1

    .line 672
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object v0
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 1
    .param p1, "exclusive"    # Z

    .line 743
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 744
    return-void
.end method

.method public setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V
    .locals 0
    .param p1, "pcb"    # Lcom/oneplus/lib/menu/MenuPresenter$Callback;
    .param p2, "mcb"    # Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 663
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    .line 664
    iput-object p2, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    .line 665
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    .line 140
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mOnMenuItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    .line 141
    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    .line 554
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    .line 555
    return-void
.end method

.method public setOverflowReserved(Z)V
    .locals 0
    .param p1, "reserveOverflow"    # Z

    .line 574
    iput-boolean p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mReserveOverflow:Z

    .line 575
    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 93
    iget v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    .line 94
    iput p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupTheme:I

    .line 95
    if-nez p1, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPopupContext:Landroid/content/Context;

    .line 101
    :cond_1
    :goto_0
    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V
    .locals 1
    .param p1, "presenter"    # Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 121
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    .line 122
    iget-object v0, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mPresenter:Lcom/oneplus/lib/menu/ActionMenuPresenter;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter;->setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V

    .line 123
    return-void
.end method

.method public setToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0
    .param p1, "toolbar"    # Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 104
    iput-object p1, p0, Lcom/oneplus/lib/menu/ActionMenuView;->mToolbar:Lcom/oneplus/lib/widget/actionbar/Toolbar;

    .line 105
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 1

    .line 681
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
