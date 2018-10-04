.class public Landroid/widget/GridView;
.super Landroid/widget/AbsListView;
.source "GridView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/GridView$StretchMode;
    }
.end annotation


# static fields
.field public static final AUTO_FIT:I = -0x1

.field public static final NO_STRETCH:I = 0x0

.field public static final STRETCH_COLUMN_WIDTH:I = 0x2

.field public static final STRETCH_SPACING:I = 0x1

.field public static final STRETCH_SPACING_UNIFORM:I = 0x3


# instance fields
.field private mColumnWidth:I

.field private mGravity:I

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mReferenceView:Landroid/view/View;

.field private mReferenceViewInSelectedRow:Landroid/view/View;

.field private mRequestedColumnWidth:I

.field private mRequestedHorizontalSpacing:I

.field private mRequestedNumColumns:I

.field private mStretchMode:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    iput v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v2, 0x2

    iput v2, p0, Landroid/widget/GridView;->mStretchMode:I

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v3, p0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    const v3, 0x800003

    iput v3, p0, Landroid/widget/GridView;->mGravity:I

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    sget-object v3, Lcom/android/internal/R$styleable;->GridView:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    invoke-virtual {v3, v2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    const/4 v7, 0x3

    invoke-virtual {v3, v7, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->setStretchMode(I)V

    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->setColumnWidth(I)V

    :cond_1
    const/4 v8, 0x5

    invoke-virtual {v3, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    invoke-virtual {v3, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setGravity(I)V

    :cond_2
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private adjustForBottomFadingEdge(Landroid/view/View;II)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    if-le v0, p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustForTopFadingEdge(Landroid/view/View;II)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    if-ge v0, p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v0, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private adjustViewsUpOrDown()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_4

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iget-object v3, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int/2addr v2, v3

    :cond_0
    if-gez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge v3, v4, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v2, v3

    :cond_2
    if-lez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    neg-int v3, v2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_4
    return-void
.end method

.method private commonKey(IILandroid/view/KeyEvent;)Z
    .locals 7

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-static {p1}, Landroid/view/KeyEvent;->isConfirmKey(I)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eq v2, v4, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->keyPressed()V

    const/4 v0, 0x1

    :cond_2
    if-nez v0, :cond_24

    if-eq v2, v4, :cond_24

    const/4 v3, 0x2

    const/16 v5, 0x21

    const/16 v6, 0x82

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1c

    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1

    :cond_4
    :goto_0
    move v3, v4

    :goto_1
    move v0, v3

    goto/16 :goto_1c

    :sswitch_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    :goto_2
    move v3, v4

    :goto_3
    move v0, v3

    goto/16 :goto_1c

    :sswitch_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v3, v1

    goto :goto_5

    :cond_8
    :goto_4
    move v3, v4

    :goto_5
    move v0, v3

    goto/16 :goto_1c

    :cond_9
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_6

    :cond_a
    move v3, v1

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v4

    :goto_7
    move v0, v3

    goto/16 :goto_1c

    :sswitch_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->pageScroll(I)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_8

    :cond_c
    move v3, v1

    goto :goto_9

    :cond_d
    :goto_8
    move v3, v4

    :goto_9
    move v0, v3

    goto/16 :goto_1c

    :cond_e
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_a

    :cond_f
    move v3, v1

    goto :goto_b

    :cond_10
    :goto_a
    move v3, v4

    :goto_b
    move v0, v3

    goto/16 :goto_1c

    :sswitch_4
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v5

    if-nez v5, :cond_12

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_c

    :cond_11
    move v3, v1

    goto :goto_d

    :cond_12
    :goto_c
    move v3, v4

    :goto_d
    move v0, v3

    goto/16 :goto_1c

    :cond_13
    invoke-virtual {p3, v4}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->sequenceScroll(I)Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_e

    :cond_14
    move v3, v1

    goto :goto_f

    :cond_15
    :goto_e
    move v3, v4

    :goto_f
    move v0, v3

    goto/16 :goto_1c

    :sswitch_5
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_17

    const/16 v3, 0x42

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_10

    :cond_16
    move v3, v1

    goto :goto_11

    :cond_17
    :goto_10
    move v3, v4

    :goto_11
    move v0, v3

    goto/16 :goto_1c

    :sswitch_6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_19

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_12

    :cond_18
    move v3, v1

    goto :goto_13

    :cond_19
    :goto_12
    move v3, v4

    :goto_13
    move v0, v3

    goto/16 :goto_1c

    :sswitch_7
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1b

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_14

    :cond_1a
    move v3, v1

    goto :goto_15

    :cond_1b
    :goto_14
    move v3, v4

    :goto_15
    move v0, v3

    goto :goto_1c

    :cond_1c
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_16

    :cond_1d
    move v3, v1

    goto :goto_17

    :cond_1e
    :goto_16
    move v3, v4

    :goto_17
    move v0, v3

    goto :goto_1c

    :sswitch_8
    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_20

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->arrowScroll(I)Z

    move-result v3

    if-eqz v3, :cond_1f

    goto :goto_18

    :cond_1f
    move v3, v1

    goto :goto_19

    :cond_20
    :goto_18
    move v3, v4

    :goto_19
    move v0, v3

    goto :goto_1c

    :cond_21
    invoke-virtual {p3, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {p0}, Landroid/widget/GridView;->resurrectSelectionIfNeeded()Z

    move-result v3

    if-nez v3, :cond_23

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->fullScroll(I)Z

    move-result v3

    if-eqz v3, :cond_22

    goto :goto_1a

    :cond_22
    move v3, v1

    goto :goto_1b

    :cond_23
    :goto_1a
    move v3, v4

    :goto_1b
    move v0, v3

    :cond_24
    :goto_1c
    if-eqz v0, :cond_25

    return v4

    :cond_25
    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/GridView;->sendToTextFilter(IILandroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_26

    return v4

    :cond_26
    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_1
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_2
    invoke-super {p0, p1, p3}, Landroid/widget/AbsListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_8
        0x14 -> :sswitch_7
        0x15 -> :sswitch_6
        0x16 -> :sswitch_5
        0x3d -> :sswitch_4
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private correctTooHigh(III)V
    .locals 10

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v1

    if-ne v0, v2, :cond_3

    if-lez p3, :cond_3

    add-int/lit8 v2, p3, -0x1

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mBottom:I

    iget v5, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v5, v4, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-lez v5, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gtz v8, :cond_0

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_3

    :cond_0
    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v8, :cond_1

    iget-object v8, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v7

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    :cond_1
    invoke-virtual {p0, v5}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v8, :cond_3

    iget v8, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_0
    sub-int/2addr v8, v1

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v1, p2

    invoke-direct {p0, v8, v1}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private correctTooLow(III)V
    .locals 10

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_3

    if-lez p3, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/widget/GridView;->mBottom:I

    iget v4, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    sub-int v4, v1, v2

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {p0, v5}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, p3

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lez v4, :cond_3

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-lt v7, v9, :cond_0

    if-le v6, v3, :cond_3

    :cond_0
    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ne v7, v9, :cond_1

    sub-int v9, v6, v3

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    :cond_1
    neg-int v9, v4

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    iget v9, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v9, v8

    if-ge v7, v9, :cond_3

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    goto :goto_0

    :cond_2
    move v8, p1

    :goto_0
    add-int/2addr v8, v7

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, p2

    invoke-direct {p0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :cond_3
    return-void
.end method

.method private determineColumns(I)Z
    .locals 7

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    iget v1, p0, Landroid/widget/GridView;->mStretchMode:I

    iget v2, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    const/4 v3, 0x0

    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-lez v2, :cond_0

    add-int v4, p1, v0

    add-int v5, v2, v0

    div-int/2addr v4, v5

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    goto :goto_0

    :cond_1
    iget v4, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iput v4, p0, Landroid/widget/GridView;->mNumColumns:I

    :goto_0
    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v5, 0x1

    if-gtz v4, :cond_2

    iput v5, p0, Landroid/widget/GridView;->mNumColumns:I

    :cond_2
    if-eqz v1, :cond_6

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    mul-int/2addr v4, v2

    sub-int v4, p1, v4

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    mul-int/2addr v6, v0

    sub-int/2addr v4, v6

    if-gez v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v6, v5, :cond_4

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v6, v5

    div-int v5, v4, v6

    add-int/2addr v5, v0

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_4
    add-int v5, v0, v4

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_1
    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v5, v4, v5

    add-int/2addr v5, v2

    iput v5, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :pswitch_2
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    if-le v6, v5, :cond_5

    iget v6, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr v6, v5

    div-int v5, v4, v6

    add-int/2addr v5, v0

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_5
    add-int v5, v0, v4

    iput v5, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    goto :goto_1

    :cond_6
    iput v2, p0, Landroid/widget/GridView;->mColumnWidth:I

    iput v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    nop

    :goto_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/GridView;->mBottom:I

    iget v2, p0, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    :cond_0
    :goto_0
    const/4 v2, 0x1

    if-ge p2, v1, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    if-ge p1, v3, :cond_2

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int p2, v3, v4

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr p1, v3

    goto :goto_0

    :cond_2
    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    invoke-virtual {p0, v3, v4}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private fillFromBottom(II)Landroid/view/View;
    .locals 3

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, v0, v2

    sub-int v2, v0, v2

    sub-int/2addr v1, v2

    invoke-direct {p0, v1, p2}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method private fillFromSelection(III)Landroid/view/View;
    .locals 12

    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v3, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v4, -0x1

    iget-boolean v5, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v6, 0x1

    if-nez v5, :cond_0

    rem-int v5, v1, v2

    sub-int v5, v1, v5

    goto :goto_0

    :cond_0
    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v6

    rem-int v8, v5, v2

    sub-int v8, v5, v8

    sub-int v4, v7, v8

    const/4 v7, 0x0

    sub-int v8, v4, v2

    add-int/2addr v8, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    :goto_0
    invoke-direct {p0, p2, v0, v5}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    invoke-direct {p0, p3, v0, v2, v5}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v8

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_1

    move v9, v4

    goto :goto_1

    :cond_1
    move v9, v5

    :goto_1
    invoke-direct {p0, v9, p1, v6}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v6

    iput v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v9, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    invoke-direct {p0, v9, v7, v8}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    iget-boolean v10, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v10, :cond_2

    sub-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v10, v5, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_2

    :cond_2
    add-int v10, v4, v2

    invoke-virtual {v9}, Landroid/view/View;->getBottom()I

    move-result v11

    add-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-direct {p0, v10, v11}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_2
    return-object v6
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 3

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_0
    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSelection(II)Landroid/view/View;
    .locals 13

    invoke-virtual {p0}, Landroid/widget/GridView;->reconcileSelectedPosition()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v2, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v3, -0x1

    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v5, 0x1

    if-nez v4, :cond_0

    rem-int v4, v0, v1

    sub-int v4, v0, v4

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v5

    rem-int v7, v4, v1

    sub-int v7, v4, v7

    sub-int v3, v6, v7

    const/4 v6, 0x0

    sub-int v7, v3, v1

    add-int/2addr v7, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v6

    invoke-direct {p0, p1, v6, v4}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v7

    iget-boolean v8, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v8, :cond_1

    move v8, v3

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-direct {p0, v8, v7, v5}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v5

    iput v4, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v8, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iget-boolean v9, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v9, :cond_2

    add-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    add-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/widget/GridView;->pinToBottom(I)V

    sub-int v9, v4, v1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v10

    sub-int/2addr v10, v2

    invoke-direct {p0, v9, v10}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto :goto_2

    :cond_2
    invoke-direct {p0, p2, v6, v1, v4}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v9

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v10

    sub-int v10, v9, v10

    invoke-virtual {p0, v10}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    add-int/lit8 v11, v4, -0x1

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    sub-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct {p0, p1}, Landroid/widget/GridView;->pinToTop(I)V

    add-int v11, v3, v1

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v12, v2

    invoke-direct {p0, v11, v12}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    :goto_2
    return-object v5
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 9

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v1, -0x1

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x1

    if-nez v2, :cond_0

    rem-int v2, p1, v0

    sub-int v2, p1, v2

    goto :goto_0

    :cond_0
    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, p1

    iget v4, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v4, v3

    rem-int v5, v2, v0

    sub-int v5, v2, v5

    sub-int v1, v4, v5

    const/4 v4, 0x0

    sub-int v5, v1, v0

    add-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    iget-boolean v4, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-direct {p0, v4, p2, v3}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v3

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v4, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-nez v4, :cond_2

    const/4 v5, 0x0

    return-object v5

    :cond_2
    iget v5, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_4

    sub-int v6, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v7, v2, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v8, v5

    invoke-direct {p0, v7, v8}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_3

    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooHigh(III)V

    :cond_3
    goto :goto_2

    :cond_4
    add-int v6, v1, v0

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v5

    invoke-direct {p0, v6, v7}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    move-result-object v7

    invoke-direct {p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v8, v5

    invoke-direct {p0, v6, v8}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_5

    invoke-direct {p0, v0, v5, v8}, Landroid/widget/GridView;->correctTooLow(III)V

    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    return-object v3

    :cond_6
    if-eqz v6, :cond_7

    return-object v6

    :cond_7
    return-object v7
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/GridView;->mGroupFlags:I

    const/16 v3, 0x22

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v2, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-le p2, v1, :cond_2

    if-ltz p1, :cond_2

    invoke-direct {p0, p1, p2, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v3, p0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    sub-int p2, v3, v4

    iput p1, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int/2addr p1, v3

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v3, :cond_3

    add-int/lit8 v3, p1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    :cond_3
    iget v2, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroid/widget/GridView;->setVisibleRangeHint(II)V

    return-object v0
.end method

.method private getBottomSelectionPixel(IIII)I
    .locals 3

    move v0, p1

    add-int v1, p4, p3

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    sub-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private getTopSelectionPixel(III)I
    .locals 1

    move v0, p1

    if-lez p3, :cond_0

    add-int/2addr v0, p2

    :cond_0
    return v0
.end method

.method private isCandidateSelection(II)Z
    .locals 7

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    sub-int/2addr v1, p1

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v2, p1, v2

    sub-int v2, p1, v2

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v0, -0x1

    iget v5, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v5, v1, v5

    sub-int v5, v1, v5

    sub-int v5, v2, v5

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    sub-int v2, v5, v2

    add-int/2addr v2, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_0
    const/16 v6, 0x11

    if-eq p2, v6, :cond_9

    const/16 v6, 0x21

    if-eq p2, v6, :cond_7

    const/16 v6, 0x42

    if-eq p2, v6, :cond_5

    const/16 v6, 0x82

    if-eq p2, v6, :cond_3

    packed-switch p2, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT, FOCUS_FORWARD, FOCUS_BACKWARD}."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    if-ne p1, v2, :cond_1

    if-nez v2, :cond_1

    move v3, v4

    nop

    :cond_1
    return v3

    :pswitch_1
    if-ne p1, v5, :cond_2

    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_2

    move v3, v4

    nop

    :cond_2
    return v3

    :cond_3
    if-nez v2, :cond_4

    move v3, v4

    nop

    :cond_4
    return v3

    :cond_5
    if-ne p1, v2, :cond_6

    move v3, v4

    nop

    :cond_6
    return v3

    :cond_7
    add-int/lit8 v6, v0, -0x1

    if-ne v5, v6, :cond_8

    move v3, v4

    nop

    :cond_8
    return v3

    :cond_9
    if-ne p1, v5, :cond_a

    move v3, v4

    nop

    :cond_a
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private makeAndAddView(IIZIZI)Landroid/view/View;
    .locals 12

    move-object v9, p0

    move v10, p1

    iget-boolean v0, v9, Landroid/widget/GridView;->mDataChanged:Z

    if-nez v0, :cond_0

    iget-object v0, v9, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0, v10}, Landroid/widget/AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v7, 0x1

    move-object v0, v9

    move-object v1, v11

    move v2, v10

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v11

    :cond_0
    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v9, v10, v0}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v11

    iget-object v0, v9, Landroid/widget/GridView;->mIsScrap:[Z

    const/4 v1, 0x0

    aget-boolean v7, v0, v1

    move-object v0, v9

    move-object v1, v11

    move v2, v10

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Landroid/widget/GridView;->setupChild(Landroid/view/View;IIZIZZI)V

    return-object v11
.end method

.method private makeRow(IIZ)Landroid/view/View;
    .locals 23

    move-object/from16 v7, p0

    iget v8, v7, Landroid/widget/GridView;->mColumnWidth:I

    iget v9, v7, Landroid/widget/GridView;->mHorizontalSpacing:I

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v10

    const/4 v1, 0x3

    const/4 v11, 0x0

    if-eqz v10, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getWidth()I

    move-result v2

    iget-object v3, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    iget v3, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v3, v1, :cond_0

    move v1, v9

    goto :goto_0

    :cond_0
    move v1, v11

    :goto_0
    sub-int/2addr v2, v1

    goto :goto_2

    :cond_1
    iget-object v2, v7, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v3, v7, Landroid/widget/GridView;->mStretchMode:I

    if-ne v3, v1, :cond_2

    move v1, v9

    goto :goto_1

    :cond_2
    move v1, v11

    :goto_1
    add-int/2addr v2, v1

    :goto_2
    move v1, v2

    iget-boolean v2, v7, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v13, 0x1

    if-nez v2, :cond_3

    iget v2, v7, Landroid/widget/GridView;->mNumColumns:I

    add-int v2, p1, v2

    iget v3, v7, Landroid/widget/GridView;->mItemCount:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move/from16 v14, p1

    :goto_3
    move v15, v2

    goto :goto_5

    :cond_3
    add-int/lit8 v2, p1, 0x1

    iget v3, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v3, p1, v3

    add-int/2addr v3, v13

    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int v3, v2, v0

    iget v4, v7, Landroid/widget/GridView;->mNumColumns:I

    if-ge v3, v4, :cond_5

    iget v3, v7, Landroid/widget/GridView;->mNumColumns:I

    sub-int v4, v2, v0

    sub-int/2addr v3, v4

    add-int v4, v8, v9

    mul-int/2addr v3, v4

    if-eqz v10, :cond_4

    const/4 v4, -0x1

    goto :goto_4

    :cond_4
    move v4, v13

    :goto_4
    mul-int/2addr v4, v3

    add-int/2addr v1, v4

    :cond_5
    move v14, v0

    goto :goto_3

    :goto_5
    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v16

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->touchModeDrawsInPressedState()Z

    move-result v17

    iget v5, v7, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v2, 0x0

    if-eqz v10, :cond_6

    const/4 v3, -0x1

    goto :goto_6

    :cond_6
    move v3, v13

    :goto_6
    move/from16 v18, v3

    move-object/from16 v19, v0

    move/from16 v20, v1

    move-object v4, v2

    move v0, v14

    :goto_7
    move v3, v0

    if-ge v3, v15, :cond_c

    if-ne v3, v5, :cond_7

    move v0, v13

    goto :goto_8

    :cond_7
    move v0, v11

    :goto_8
    move/from16 v21, v0

    if-eqz p3, :cond_8

    const/4 v6, -0x1

    goto :goto_9

    :cond_8
    sub-int v0, v3, v14

    move v6, v0

    :goto_9
    move-object v0, v7

    move v1, v3

    move/from16 v2, p2

    move v11, v3

    move/from16 v3, p3

    move-object v12, v4

    move/from16 v4, v20

    move/from16 v22, v5

    move/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Landroid/widget/GridView;->makeAndAddView(IIZIZI)Landroid/view/View;

    move-result-object v4

    mul-int v0, v18, v8

    add-int v20, v20, v0

    add-int/lit8 v0, v15, -0x1

    if-ge v11, v0, :cond_9

    mul-int v0, v18, v9

    add-int v20, v20, v0

    :cond_9
    if-eqz v21, :cond_b

    if-nez v16, :cond_a

    if-eqz v17, :cond_b

    :cond_a
    move-object v0, v4

    move-object/from16 v19, v0

    :cond_b
    add-int/lit8 v0, v11, 0x1

    move/from16 v5, v22

    const/4 v11, 0x0

    goto :goto_7

    :cond_c
    move-object v12, v4

    move/from16 v22, v5

    iput-object v12, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    if-eqz v19, :cond_d

    iget-object v0, v7, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    iput-object v0, v7, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    :cond_d
    return-object v19
.end method

.method private moveSelection(III)Landroid/view/View;
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v3, v0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v4, v0, Landroid/widget/GridView;->mNumColumns:I

    iget v5, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    const/4 v6, -0x1

    iget-boolean v7, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v7, :cond_0

    sub-int v7, v3, p1

    sub-int v10, v3, p1

    rem-int/2addr v10, v4

    sub-int/2addr v7, v10

    rem-int v10, v3, v4

    sub-int v10, v3, v10

    goto :goto_0

    :cond_0
    iget v7, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v9

    sub-int/2addr v7, v3

    iget v10, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v10, v9

    rem-int v11, v7, v4

    sub-int v11, v7, v11

    sub-int v6, v10, v11

    sub-int v10, v6, v4

    add-int/2addr v10, v9

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v11, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v11, v9

    sub-int v12, v3, p1

    sub-int/2addr v11, v12

    iget v7, v0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v7, v9

    rem-int v12, v11, v4

    sub-int v12, v11, v12

    sub-int/2addr v7, v12

    sub-int v12, v7, v4

    add-int/2addr v12, v9

    invoke-static {v8, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_0
    sub-int v11, v10, v7

    move/from16 v12, p2

    invoke-direct {v0, v12, v2, v10}, Landroid/widget/GridView;->getTopSelectionPixel(III)I

    move-result v13

    move/from16 v14, p3

    invoke-direct {v0, v14, v2, v4, v10}, Landroid/widget/GridView;->getBottomSelectionPixel(IIII)I

    move-result v15

    iput v10, v0, Landroid/widget/GridView;->mFirstPosition:I

    if-lez v11, :cond_3

    iget-object v8, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v8, :cond_1

    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    iget-object v8, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    move/from16 v16, v8

    :goto_1
    move/from16 v8, v16

    iget-boolean v9, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v9, :cond_2

    move v9, v6

    goto :goto_2

    :cond_2
    move v9, v10

    :goto_2
    add-int v1, v8, v5

    move/from16 v17, v2

    const/4 v2, 0x1

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {v0, v2, v13, v15}, Landroid/widget/GridView;->adjustForBottomFadingEdge(Landroid/view/View;II)V

    nop

    move-object/from16 v18, v2

    move-object v2, v1

    move-object/from16 v1, v18

    goto :goto_7

    :cond_3
    move/from16 v17, v2

    if-gez v11, :cond_6

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_3
    move v1, v8

    iget-boolean v2, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_5

    move v2, v6

    goto :goto_4

    :cond_5
    move v2, v10

    :goto_4
    sub-int v8, v1, v5

    const/4 v9, 0x0

    invoke-direct {v0, v2, v8, v9}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    iget-object v8, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    invoke-direct {v0, v8, v13, v15}, Landroid/widget/GridView;->adjustForTopFadingEdge(Landroid/view/View;II)V

    nop

    move-object v1, v8

    goto :goto_7

    :cond_6
    const/4 v9, 0x0

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    if-nez v1, :cond_7

    move v8, v9

    goto :goto_5

    :cond_7
    iget-object v1, v0, Landroid/widget/GridView;->mReferenceViewInSelectedRow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    :goto_5
    move v1, v8

    iget-boolean v2, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_8

    move v2, v6

    goto :goto_6

    :cond_8
    move v2, v10

    :goto_6
    const/4 v8, 0x1

    invoke-direct {v0, v2, v1, v8}, Landroid/widget/GridView;->makeRow(IIZ)Landroid/view/View;

    move-result-object v2

    iget-object v1, v0, Landroid/widget/GridView;->mReferenceView:Landroid/view/View;

    :goto_7
    iget-boolean v8, v0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v8, :cond_9

    sub-int v8, v10, v4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int v8, v10, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    goto :goto_8

    :cond_9
    add-int v8, v6, v4

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    add-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    add-int/lit8 v8, v10, -0x1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v9, v5

    invoke-direct {v0, v8, v9}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    :goto_8
    return-object v2
.end method

.method private pinToBottom(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int v2, p1, v1

    if-lez v2, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private pinToTop(I)V
    .locals 2

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int v1, p1, v0

    if-gez v1, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->offsetChildrenTopAndBottom(I)V

    :cond_0
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZI)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, p8

    const-string/jumbo v6, "setupGridItem"

    const-wide/16 v7, 0x8

    invoke-static {v7, v8, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p6, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->shouldShowSelector()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v11

    if-eq v10, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    iget v12, v0, Landroid/widget/GridView;->mTouchMode:I

    const/4 v13, 0x3

    if-lez v12, :cond_2

    if-ge v12, v13, :cond_2

    iget v14, v0, Landroid/widget/GridView;->mMotionPosition:I

    if-ne v14, v2, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v7

    if-eq v14, v7, :cond_3

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    if-eqz p7, :cond_5

    if-nez v11, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 v8, 0x1

    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    if-nez v15, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v15, v16

    check-cast v15, Landroid/widget/AbsListView$LayoutParams;

    :cond_6
    move-object v13, v15

    iget-object v6, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    iput v6, v13, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v6, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v6, v2}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    iput-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    if-eqz v11, :cond_7

    invoke-virtual {v1, v10}, Landroid/view/View;->setSelected(Z)V

    if-eqz v10, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->requestFocus()Z

    :cond_7
    if-eqz v7, :cond_8

    invoke-virtual {v1, v14}, Landroid/view/View;->setPressed(Z)V

    :cond_8
    iget v6, v0, Landroid/widget/GridView;->mChoiceMode:I

    if-eqz v6, :cond_a

    iget-object v6, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_a

    instance-of v6, v1, Landroid/widget/Checkable;

    if-eqz v6, :cond_9

    move-object v6, v1

    check-cast v6, Landroid/widget/Checkable;

    iget-object v9, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v9

    invoke-interface {v6, v9}, Landroid/widget/Checkable;->setChecked(Z)V

    goto :goto_6

    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v9, 0xb

    if-lt v6, v9, :cond_a

    iget-object v6, v0, Landroid/widget/GridView;->mCheckStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setActivated(Z)V

    :cond_a
    :goto_6
    if-eqz p7, :cond_d

    iget-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    if-nez v6, :cond_d

    invoke-virtual {v0, v1, v5, v13}, Landroid/widget/GridView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p7, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsListView$LayoutParams;

    iget v6, v6, Landroid/widget/AbsListView$LayoutParams;->scrappedFromPosition:I

    if-eq v6, v2, :cond_b

    goto :goto_8

    :cond_b
    :goto_7
    const/4 v6, 0x0

    goto :goto_9

    :cond_c
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    goto :goto_7

    :cond_d
    const/4 v6, 0x0

    iput-boolean v6, v13, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    const/4 v9, 0x1

    invoke-virtual {v0, v1, v5, v13, v9}, Landroid/widget/GridView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    :goto_9
    if-eqz v8, :cond_e

    nop

    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iget v2, v13, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v9, v6, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    iget v9, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget v9, v13, Landroid/widget/AbsListView$LayoutParams;->width:I

    const/4 v4, 0x0

    invoke-static {v6, v4, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Landroid/view/View;->measure(II)V

    goto :goto_a

    :cond_e
    invoke-virtual/range {p0 .. p1}, Landroid/widget/GridView;->cleanupLayoutState(Landroid/view/View;)V

    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    if-eqz p4, :cond_f

    move/from16 v15, p3

    goto :goto_b

    :cond_f
    sub-int v15, p3, v4

    :goto_b
    move/from16 v17, v15

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getLayoutDirection()I

    move-result v5

    iget v6, v0, Landroid/widget/GridView;->mGravity:I

    invoke-static {v6, v5}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v6

    move/from16 v18, v5

    and-int/lit8 v5, v6, 0x7

    move/from16 v19, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_12

    const/4 v6, 0x3

    if-eq v5, v6, :cond_11

    const/4 v6, 0x5

    if-eq v5, v6, :cond_10

    move/from16 v5, p5

    goto :goto_c

    :cond_10
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    add-int v5, p5, v5

    sub-int/2addr v5, v2

    goto :goto_c

    :cond_11
    move/from16 v5, p5

    goto :goto_c

    :cond_12
    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    sub-int/2addr v5, v2

    div-int/lit8 v5, v5, 0x2

    add-int v5, p5, v5

    nop

    :goto_c
    nop

    if-eqz v8, :cond_13

    add-int v6, v5, v2

    move/from16 v20, v2

    move/from16 v2, v17

    add-int v3, v2, v4

    invoke-virtual {v1, v5, v2, v6, v3}, Landroid/view/View;->layout(IIII)V

    goto :goto_d

    :cond_13
    move/from16 v20, v2

    move/from16 v2, v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int v3, v5, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int v3, v2, v3

    invoke-virtual {v1, v3}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_d
    iget-boolean v3, v0, Landroid/widget/GridView;->mCachingStarted:Z

    if-eqz v3, :cond_14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v3

    if-nez v3, :cond_14

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    :cond_14
    const-wide/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method arrowScroll(I)Z
    .locals 10

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int v5, v3, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0

    :cond_0
    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v5, v5, -0x1

    div-int v6, v3, v1

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    sub-int v6, v5, v1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    const/16 v6, 0x21

    const/4 v7, 0x6

    if-eq p1, v6, :cond_2

    const/16 v6, 0x82

    if-eq p1, v6, :cond_1

    goto :goto_1

    :cond_1
    iget v6, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_3

    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int v6, v0, v1

    iget v8, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    if-lez v3, :cond_3

    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    sub-int v6, v0, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->isLayoutRtl()Z

    move-result v6

    const/16 v8, 0x42

    const/16 v9, 0x11

    if-le v0, v3, :cond_6

    if-ne p1, v9, :cond_4

    if-eqz v6, :cond_5

    :cond_4
    if-ne p1, v8, :cond_6

    if-eqz v6, :cond_6

    :cond_5
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v7, v0, -0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    if-ge v0, v5, :cond_9

    if-ne p1, v9, :cond_7

    if-nez v6, :cond_8

    :cond_7
    if-ne p1, v8, :cond_9

    if-nez v6, :cond_9

    :cond_8
    iput v7, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v4, v0, 0x1

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v7, v7, -0x1

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v2, 0x1

    :cond_9
    :goto_2
    if-eqz v2, :cond_a

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_b
    return v2
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .locals 4

    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    check-cast v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;

    invoke-direct {v1}, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;-><init>()V

    move-object v0, v1

    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    :cond_0
    iput p4, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->count:I

    iput p3, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->index:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->columnsCount:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p4, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v1, p3, v1

    iput v1, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    goto :goto_0

    :cond_1
    add-int/lit8 v1, p4, -0x1

    sub-int/2addr v1, p3

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    rem-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->column:I

    iget v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->rowsCount:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/view/animation/GridLayoutAnimationController$AnimationParameters;->row:I

    :goto_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 9

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mNumColumns:I

    add-int v3, v0, v2

    add-int/lit8 v3, v3, -0x1

    div-int/2addr v3, v2

    mul-int/lit8 v4, v3, 0x64

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_0

    mul-int/lit8 v7, v5, 0x64

    div-int/2addr v7, v6

    add-int/2addr v4, v7

    :cond_0
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {p0, v7}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v8

    sub-int v8, v7, v8

    mul-int/lit8 v8, v8, 0x64

    div-int/2addr v8, v6

    sub-int/2addr v4, v8

    :cond_1
    return v4

    :cond_2
    return v1
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    iget v0, p0, Landroid/widget/GridView;->mFirstPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_1

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v5, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v5, v4

    add-int/lit8 v5, v5, -0x1

    div-int/2addr v5, v4

    invoke-virtual {p0}, Landroid/widget/GridView;->isStackFromBottom()Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int v6, v5, v4

    iget v7, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v6, v7

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    iget v7, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v7, v6

    div-int/2addr v7, v4

    mul-int/lit8 v8, v7, 0x64

    mul-int/lit8 v9, v2, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    iget v9, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v9, v9

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    int-to-float v10, v5

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method protected computeVerticalScrollRange()I
    .locals 5

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v0

    mul-int/lit8 v2, v1, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mScrollY:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    return v2
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    const-string/jumbo v0, "numColumns"

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    return-void
.end method

.method fillGap(Z)V
    .locals 7

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/16 v3, 0x22

    if-eqz p1, :cond_3

    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingTop()I

    move-result v4

    :cond_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v5, v2

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v6, :cond_2

    add-int/lit8 v6, v0, -0x1

    add-int/2addr v5, v6

    :cond_2
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillDown(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooHigh(III)V

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    iget v5, p0, Landroid/widget/GridView;->mGroupFlags:I

    and-int/2addr v5, v3

    if-ne v5, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/GridView;->getListPaddingBottom()I

    move-result v4

    :cond_4
    if-lez v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v4

    :goto_1
    iget v5, p0, Landroid/widget/GridView;->mFirstPosition:I

    iget-boolean v6, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v6, :cond_6

    sub-int/2addr v5, v0

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, -0x1

    :goto_2
    invoke-direct {p0, v5, v3}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    invoke-direct {p0, v0, v1, v6}, Landroid/widget/GridView;->correctTooLow(III)V

    :goto_3
    return-void
.end method

.method findMotionRow(I)I
    .locals 4

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_3

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    :cond_0
    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v0, -0x1

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {p0, v2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    iget v3, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v3, v2

    return v3

    :cond_2
    sub-int/2addr v2, v1

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method fullScroll(I)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/16 v2, 0x21

    if-ne p1, v2, :cond_0

    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x82

    if-ne p1, v2, :cond_1

    iput v1, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_2
    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/GridView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getColumnWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mColumnWidth:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    return v0
.end method

.method public getHorizontalSpacing()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mHorizontalSpacing:I

    return v0
.end method

.method public getNumColumns()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget v0, p0, Landroid/widget/GridView;->mNumColumns:I

    return v0
.end method

.method public getRequestedColumnWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    return v0
.end method

.method public getRequestedHorizontalSpacing()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    return v0
.end method

.method public getStretchMode()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    return v0
.end method

.method public getVerticalSpacing()I
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    return v0
.end method

.method protected layoutChildren()V
    .locals 28

    move-object/from16 v1, p0

    iget-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    const/4 v0, 0x1

    if-nez v2, :cond_0

    iput-boolean v0, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_0
    const/4 v3, 0x0

    :try_start_0
    invoke-super/range {p0 .. p0}, Landroid/widget/AbsListView;->layoutChildren()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invalidate()V

    iget-object v4, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v4, :cond_2

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    move/from16 v22, v2

    goto/16 :goto_14

    :cond_2
    :try_start_2
    iget-object v4, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/widget/GridView;->mBottom:I

    iget v6, v1, Landroid/widget/GridView;->mTop:I

    sub-int/2addr v5, v6

    iget-object v6, v1, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v1, Landroid/widget/GridView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_0

    iget v11, v1, Landroid/widget/GridView;->mSelectedPosition:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :pswitch_0
    :try_start_3
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    if-ltz v11, :cond_4

    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mSelectedPosition:I

    sub-int v7, v11, v12

    goto :goto_1

    :pswitch_1
    iget v11, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v11, v12

    if-ltz v11, :cond_4

    if-ge v11, v6, :cond_4

    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v10, v12

    goto :goto_1

    :pswitch_2
    goto :goto_1

    :goto_0
    :try_start_4
    iget v12, v1, Landroid/widget/GridView;->mFirstPosition:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    sub-int/2addr v11, v12

    if-ltz v11, :cond_3

    if-ge v11, v6, :cond_3

    :try_start_5
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v8, v12

    :cond_3
    :try_start_6
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    :cond_4
    :goto_1
    iget-boolean v11, v1, Landroid/widget/GridView;->mDataChanged:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v11, :cond_5

    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->handleDataChanged()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :try_start_8
    iget v12, v1, Landroid/widget/GridView;->mItemCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v12, :cond_7

    :try_start_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->resetList()V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-nez v2, :cond_6

    iput-boolean v3, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_6
    return-void

    :cond_7
    :try_start_a
    iget v12, v1, Landroid/widget/GridView;->mNextSelectedPosition:I

    invoke-virtual {v1, v12}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v15
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    if-eqz v15, :cond_a

    :try_start_b
    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v16

    move-object/from16 v17, v16

    move-object/from16 v3, v17

    if-eqz v3, :cond_a

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->getAccessibilityFocusedChild(Landroid/view/View;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v18, v16

    move-object/from16 v0, v18

    if-eqz v0, :cond_a

    if-eqz v11, :cond_9

    invoke-virtual {v0}, Landroid/view/View;->hasTransientState()Z

    move-result v16

    if-nez v16, :cond_9

    move-object/from16 v19, v12

    iget-boolean v12, v1, Landroid/widget/GridView;->mAdapterHasStableIds:Z

    if-eqz v12, :cond_8

    goto :goto_2

    :cond_8
    move-object/from16 v12, v19

    goto :goto_3

    :cond_9
    move-object/from16 v19, v12

    :goto_2
    move-object v12, v3

    nop

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v13

    move-object/from16 v27, v13

    move-object v13, v12

    move-object/from16 v12, v27

    :goto_3
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v16
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v14, v16

    goto :goto_4

    :cond_a
    move-object/from16 v19, v12

    move-object/from16 v12, v19

    :goto_4
    :try_start_c
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget-object v3, v1, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    if-eqz v11, :cond_c

    const/16 v16, 0x0

    :goto_5
    move/from16 v20, v16

    move/from16 v21, v11

    move/from16 v11, v20

    if-ge v11, v6, :cond_b

    move/from16 v22, v2

    :try_start_d
    invoke-virtual {v1, v11}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move/from16 v23, v14

    add-int v14, v0, v11

    invoke-virtual {v3, v2, v14}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    add-int/lit8 v16, v11, 0x1

    move/from16 v11, v21

    move/from16 v2, v22

    move/from16 v14, v23

    goto :goto_5

    :cond_b
    move/from16 v22, v2

    move/from16 v23, v14

    goto :goto_6

    :cond_c
    move/from16 v22, v2

    move/from16 v21, v11

    move/from16 v23, v14

    invoke-virtual {v3, v6, v0}, Landroid/widget/AbsListView$RecycleBin;->fillActiveViews(II)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->detachAllViewsFromParent()V

    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->removeSkippedScrap()V

    iget v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    const/4 v11, -0x1

    packed-switch v2, :pswitch_data_1

    if-nez v6, :cond_13

    iget-boolean v2, v1, Landroid/widget/GridView;->mStackFromBottom:Z

    goto :goto_8

    :pswitch_3
    invoke-direct {v1, v7, v4, v5}, Landroid/widget/GridView;->moveSelection(III)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_f

    :pswitch_4
    iget v2, v1, Landroid/widget/GridView;->mSyncPosition:I

    iget v14, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_f

    :pswitch_5
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v14, v1, Landroid/widget/GridView;->mSpecificTop:I

    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_f

    :pswitch_6
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillUp(II)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_f

    :pswitch_7
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-direct {v1, v2, v4, v5}, Landroid/widget/GridView;->fillFromSelection(III)Landroid/view/View;

    move-result-object v2

    :goto_7
    goto/16 :goto_f

    :cond_d
    invoke-direct {v1, v4, v5}, Landroid/widget/GridView;->fillSelection(II)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_f

    :pswitch_8
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/GridView;->adjustViewsUpOrDown()V

    goto/16 :goto_f

    :goto_8
    if-nez v2, :cond_10

    iget-object v2, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_e

    goto :goto_9

    :cond_e
    nop

    const/4 v2, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    nop

    move v2, v11

    :goto_a
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-direct {v1, v4}, Landroid/widget/GridView;->fillFromTop(I)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_10
    iget v2, v1, Landroid/widget/GridView;->mItemCount:I

    const/4 v14, 0x1

    sub-int/2addr v2, v14

    iget-object v14, v1, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_b

    :cond_11
    move v14, v2

    goto :goto_c

    :cond_12
    :goto_b
    nop

    move v14, v11

    :goto_c
    invoke-virtual {v1, v14}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-direct {v1, v2, v5}, Landroid/widget/GridView;->fillFromBottom(II)Landroid/view/View;

    move-result-object v14

    move-object v2, v14

    goto :goto_f

    :cond_13
    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-ltz v2, :cond_15

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    iget v14, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v14, :cond_15

    iget v2, v1, Landroid/widget/GridView;->mSelectedPosition:I

    if-nez v8, :cond_14

    nop

    move v14, v4

    goto :goto_d

    :cond_14
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v14

    :goto_d
    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_15
    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    iget v14, v1, Landroid/widget/GridView;->mItemCount:I

    if-ge v2, v14, :cond_17

    iget v2, v1, Landroid/widget/GridView;->mFirstPosition:I

    if-nez v9, :cond_16

    nop

    move v14, v4

    goto :goto_e

    :cond_16
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v14

    :goto_e
    invoke-direct {v1, v2, v14}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v2

    goto :goto_7

    :cond_17
    const/4 v2, 0x0

    invoke-direct {v1, v2, v4}, Landroid/widget/GridView;->fillSpecific(II)Landroid/view/View;

    move-result-object v14

    move-object v2, v14

    :goto_f
    invoke-virtual {v3}, Landroid/widget/AbsListView$RecycleBin;->scrapActiveViews()V

    if-eqz v2, :cond_18

    invoke-virtual {v1, v11, v2}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v14

    iput v14, v1, Landroid/widget/GridView;->mSelectedTop:I

    move/from16 v24, v0

    goto :goto_11

    :cond_18
    iget v14, v1, Landroid/widget/GridView;->mTouchMode:I

    if-lez v14, :cond_19

    iget v14, v1, Landroid/widget/GridView;->mTouchMode:I

    const/4 v11, 0x3

    if-ge v14, v11, :cond_19

    const/4 v11, 0x1

    goto :goto_10

    :cond_19
    const/4 v11, 0x0

    :goto_10
    if-eqz v11, :cond_1b

    iget v14, v1, Landroid/widget/GridView;->mMotionPosition:I

    move/from16 v24, v0

    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v14, v0

    invoke-virtual {v1, v14}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget v14, v1, Landroid/widget/GridView;->mMotionPosition:I

    invoke-virtual {v1, v14, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    :cond_1a
    goto :goto_11

    :cond_1b
    move/from16 v24, v0

    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    const/4 v14, -0x1

    if-eq v0, v14, :cond_1d

    iget v0, v1, Landroid/widget/GridView;->mSelectorPosition:I

    iget v14, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int/2addr v0, v14

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget v14, v1, Landroid/widget/GridView;->mSelectorPosition:I

    invoke-virtual {v1, v14, v0}, Landroid/widget/GridView;->positionSelector(ILandroid/view/View;)V

    :cond_1c
    goto :goto_11

    :cond_1d
    const/4 v14, 0x0

    iput v14, v1, Landroid/widget/GridView;->mSelectedTop:I

    iget-object v0, v1, Landroid/widget/GridView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    :goto_11
    if-eqz v15, :cond_21

    invoke-virtual {v15}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedHost()Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_21

    if-eqz v13, :cond_1f

    invoke-virtual {v13}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v14

    if-eqz v14, :cond_1f

    nop

    invoke-virtual {v13}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v12, :cond_1e

    if-eqz v14, :cond_1e

    nop

    :try_start_e
    invoke-virtual {v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v0

    const/16 v1, 0x40

    move-object/from16 v25, v2

    const/4 v2, 0x0

    invoke-virtual {v14, v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_12

    :cond_1e
    move-object/from16 v25, v2

    invoke-virtual {v13}, Landroid/view/View;->requestAccessibilityFocus()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :goto_12
    nop

    move-object/from16 v26, v3

    move/from16 v14, v23

    move-object/from16 v1, p0

    goto :goto_13

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_14

    :cond_1f
    move-object/from16 v25, v2

    move/from16 v14, v23

    const/4 v0, -0x1

    if-eq v14, v0, :cond_20

    move-object/from16 v1, p0

    :try_start_f
    iget v0, v1, Landroid/widget/GridView;->mFirstPosition:I

    sub-int v0, v14, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v26, v3

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->requestAccessibilityFocus()Z

    goto :goto_13

    :cond_20
    move-object/from16 v26, v3

    move-object/from16 v1, p0

    goto :goto_13

    :cond_21
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    move/from16 v14, v23

    :cond_22
    :goto_13
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/GridView;->mLayoutMode:I

    iput-boolean v2, v1, Landroid/widget/GridView;->mDataChanged:Z

    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    if-eqz v0, :cond_23

    iget-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, v1, Landroid/widget/GridView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    :cond_23
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mNeedSync:Z

    iget v0, v1, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->updateScrollIndicators()V

    iget v0, v1, Landroid/widget/GridView;->mItemCount:I

    if-lez v0, :cond_24

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :cond_24
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-nez v22, :cond_25

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_25
    return-void

    :catchall_2
    move-exception v0

    goto :goto_14

    :catchall_3
    move-exception v0

    move/from16 v22, v2

    :goto_14
    if-nez v22, :cond_26

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/GridView;->mBlockLayoutRequests:Z

    :cond_26
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 3

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    if-ltz p1, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    if-lt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return p1

    :cond_2
    :goto_0
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    iget v1, p0, Landroid/widget/GridView;->mScrollX:I

    iget v2, p0, Landroid/widget/GridView;->mScrollY:I

    invoke-virtual {p3, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v1, p0, Landroid/widget/GridView;->mTempRect:Landroid/graphics/Rect;

    const v2, 0x7fffffff

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    invoke-direct {p0, v4, p2}, Landroid/widget/GridView;->isCandidateSelection(II)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0, v5, v1}, Landroid/widget/GridView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    invoke-static {p3, v1, p2}, Landroid/widget/GridView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v6

    if-ge v6, v2, :cond_1

    move v2, v6

    move v0, v4

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-ltz v0, :cond_3

    iget v1, p0, Landroid/widget/GridView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->setSelection(I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 12

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoForItem(Landroid/view/View;ILandroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v1

    div-int v2, v0, v1

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-nez v3, :cond_0

    rem-int v3, p2, v1

    div-int v4, p2, v1

    move v5, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, p2

    add-int/lit8 v4, v1, -0x1

    rem-int v5, v3, v1

    sub-int/2addr v4, v5

    add-int/lit8 v5, v2, -0x1

    div-int v6, v3, v1

    sub-int v3, v5, v6

    move v5, v3

    move v3, v4

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/AbsListView$LayoutParams;

    if-eqz v4, :cond_1

    iget v6, v4, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    const/4 v7, -0x2

    if-ne v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    move v9, v6

    invoke-virtual {p0, p2}, Landroid/widget/GridView;->isItemChecked(I)Z

    move-result v11

    const/4 v6, 0x1

    const/4 v8, 0x1

    move v7, v3

    move v10, v11

    invoke-static/range {v5 .. v10}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v6

    invoke-virtual {p3, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v1

    div-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getSelectionModeForAccessibility()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    :cond_0
    sget-object v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_TO_POSITION:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/GridView;->commonKey(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p2}, Landroid/widget/AbsListView;->onMeasure(II)V

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-nez v1, :cond_1

    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    if-lez v5, :cond_0

    iget v5, v0, Landroid/widget/GridView;->mColumnWidth:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    :goto_0
    goto :goto_1

    :cond_0
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    goto :goto_0

    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalScrollbarWidth()I

    move-result v3

    add-int/2addr v3, v5

    :cond_1
    iget-object v5, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v3, v5

    iget-object v6, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v5}, Landroid/widget/GridView;->determineColumns(I)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v10, 0x0

    if-nez v9, :cond_2

    move v9, v10

    goto :goto_2

    :cond_2
    iget-object v9, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    :goto_2
    iput v9, v0, Landroid/widget/GridView;->mItemCount:I

    iget v9, v0, Landroid/widget/GridView;->mItemCount:I

    const/4 v12, 0x1

    if-lez v9, :cond_4

    iget-object v13, v0, Landroid/widget/GridView;->mIsScrap:[Z

    invoke-virtual {v0, v10, v13}, Landroid/widget/GridView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    if-nez v14, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    move-object v14, v15

    check-cast v14, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v15

    iput v15, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    iget-object v15, v0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v15, v10}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v15

    iput-boolean v15, v14, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    iput-boolean v12, v14, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    nop

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    invoke-static {v15, v10}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v15

    iget v12, v14, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v15, v10, v12}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v12

    iget v15, v0, Landroid/widget/GridView;->mColumnWidth:I

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v15, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    iget v15, v14, Landroid/widget/AbsListView$LayoutParams;->width:I

    invoke-static {v11, v10, v15}, Landroid/widget/GridView;->getChildMeasureSpec(III)I

    move-result v11

    invoke-virtual {v13, v11, v12}, Landroid/view/View;->measure(II)V

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredState()I

    move-result v15

    invoke-static {v8, v15}, Landroid/widget/GridView;->combineMeasuredStates(II)I

    move-result v8

    iget-object v15, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget v10, v14, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v15, v10}, Landroid/widget/AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    const/4 v15, -0x1

    invoke-virtual {v10, v13, v15}, Landroid/widget/AbsListView$RecycleBin;->addScrapView(Landroid/view/View;I)V

    :cond_4
    if-nez v2, :cond_5

    iget-object v10, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    add-int/2addr v10, v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridView;->getVerticalFadingEdgeLength()I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    add-int v4, v10, v11

    :cond_5
    const/high16 v10, -0x80000000

    if-ne v2, v10, :cond_9

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    iget-object v12, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v11, v12

    iget v12, v0, Landroid/widget/GridView;->mNumColumns:I

    const/16 v16, 0x0

    :goto_3
    move/from16 v13, v16

    if-ge v13, v9, :cond_8

    add-int/2addr v11, v7

    add-int v14, v13, v12

    if-ge v14, v9, :cond_6

    iget v14, v0, Landroid/widget/GridView;->mVerticalSpacing:I

    add-int/2addr v11, v14

    :cond_6
    if-lt v11, v4, :cond_7

    move v11, v4

    goto :goto_4

    :cond_7
    add-int v16, v13, v12

    goto :goto_3

    :cond_8
    :goto_4
    move v4, v11

    :cond_9
    if-ne v1, v10, :cond_b

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    iget v10, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    iget v11, v0, Landroid/widget/GridView;->mColumnWidth:I

    mul-int/2addr v10, v11

    iget v11, v0, Landroid/widget/GridView;->mRequestedNumColumns:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    iget v12, v0, Landroid/widget/GridView;->mHorizontalSpacing:I

    mul-int/2addr v11, v12

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v11

    iget-object v11, v0, Landroid/widget/GridView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    if-gt v10, v3, :cond_a

    if-eqz v6, :cond_b

    :cond_a
    const/high16 v11, 0x1000000

    or-int/2addr v3, v11

    :cond_b
    invoke-virtual {v0, v3, v4}, Landroid/widget/GridView;->setMeasuredDimension(II)V

    move/from16 v10, p1

    iput v10, v0, Landroid/widget/GridView;->mWidthMeasureSpec:I

    return-void
.end method

.method pageScroll(I)Z
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x21

    if-ne p1, v3, :cond_0

    iget v3, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v3, 0x82

    if-ne p1, v3, :cond_1

    iget v3, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v3, v1

    iget v4, p0, Landroid/widget/GridView;->mSelectedPosition:I

    invoke-virtual {p0}, Landroid/widget/GridView;->getChildCount()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_1
    :goto_0
    if-ltz v0, :cond_2

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    return v1

    :cond_2
    return v2
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/widget/AbsListView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const v0, 0x1020037

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->getNumColumns()I

    move-result v0

    const-string v2, "android.view.accessibility.action.ARGUMENT_ROW_INT"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    mul-int v3, v2, v0

    invoke-virtual {p0}, Landroid/widget/GridView;->getCount()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ltz v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method sequenceScroll(I)Z
    .locals 11

    iget v0, p0, Landroid/widget/GridView;->mSelectedPosition:I

    iget v1, p0, Landroid/widget/GridView;->mNumColumns:I

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    iget-boolean v3, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    div-int v3, v0, v1

    mul-int/2addr v3, v1

    add-int v6, v3, v1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v2, -0x1

    sub-int/2addr v3, v0

    add-int/lit8 v6, v2, -0x1

    div-int v7, v3, v1

    mul-int/2addr v7, v1

    sub-int/2addr v6, v7

    sub-int v7, v6, v1

    add-int/2addr v7, v5

    invoke-static {v4, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x6

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v10, v2, -0x1

    if-ge v0, v10, :cond_3

    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v9, v0, 0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v7, 0x1

    if-ne v0, v6, :cond_1

    move v4, v5

    nop

    :cond_1
    move v8, v4

    goto :goto_1

    :pswitch_1
    if-lez v0, :cond_3

    iput v9, p0, Landroid/widget/GridView;->mLayoutMode:I

    add-int/lit8 v9, v0, -0x1

    invoke-virtual {p0, v9}, Landroid/widget/GridView;->setSelectionInt(I)V

    const/4 v7, 0x1

    if-ne v0, v3, :cond_2

    move v4, v5

    nop

    :cond_2
    move v8, v4

    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/GridView;->playSoundEffect(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->invokeOnItemScrollListener()V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_5
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridView;->resetList()V

    iget-object v0, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    invoke-virtual {v0}, Landroid/widget/AbsListView$RecycleBin;->clear()V

    iput-object p1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/GridView;->mOldSelectedPosition:I

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Landroid/widget/GridView;->mOldSelectedRowId:J

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/widget/GridView;->mItemCount:I

    iput v0, p0, Landroid/widget/GridView;->mOldItemCount:I

    iget-object v0, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Landroid/widget/GridView;->mItemCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/GridView;->mDataChanged:Z

    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    new-instance v1, Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-direct {v1, p0}, Landroid/widget/AbsListView$AdapterDataSetObserver;-><init>(Landroid/widget/AbsListView;)V

    iput-object v1, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    iget-object v1, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/widget/GridView;->mDataSetObserver:Landroid/widget/AbsListView$AdapterDataSetObserver;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    iget-object v1, p0, Landroid/widget/GridView;->mRecycler:Landroid/widget/AbsListView$RecycleBin;

    iget-object v2, p0, Landroid/widget/GridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView$RecycleBin;->setViewTypeCount(I)V

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1, v2}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2, v0}, Landroid/widget/GridView;->lookForSelectablePosition(IZ)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setSelectedPositionInt(I)V

    invoke-virtual {p0, v0}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/widget/GridView;->checkFocus()V

    invoke-virtual {p0}, Landroid/widget/GridView;->checkSelectionChanged()V

    :goto_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method public setColumnWidth(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedColumnWidth:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mGravity:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedHorizontalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mRequestedNumColumns:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setRemoteViewsAdapter(Landroid/content/Intent;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
        asyncImpl = "setRemoteViewsAdapterAsync"
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/GridView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    goto :goto_0

    :cond_0
    iput p1, p0, Landroid/widget/GridView;->mResurrectToPosition:I

    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridView;->mLayoutMode:I

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v0}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayout()V

    return-void
.end method

.method setSelectionInt(I)V
    .locals 5

    iget v0, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/GridView;->mPositionScroller:Landroid/widget/AbsListView$AbsPositionScroller;

    invoke-virtual {v1}, Landroid/widget/AbsListView$AbsPositionScroller;->stop()V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setNextSelectedPositionInt(I)V

    invoke-virtual {p0}, Landroid/widget/GridView;->layoutChildren()V

    iget-boolean v1, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/GridView;->mNextSelectedPosition:I

    :goto_0
    iget-boolean v2, p0, Landroid/widget/GridView;->mStackFromBottom:Z

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/GridView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    iget v3, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v3, v1, v3

    iget v4, p0, Landroid/widget/GridView;->mNumColumns:I

    div-int v4, v2, v4

    if-eq v3, v4, :cond_3

    invoke-virtual {p0}, Landroid/widget/GridView;->awakenScrollBars()Z

    :cond_3
    return-void
.end method

.method public setStretchMode(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mStretchMode:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mStretchMode:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1

    iget v0, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Landroid/widget/GridView;->mVerticalSpacing:I

    invoke-virtual {p0}, Landroid/widget/GridView;->requestLayoutIfNecessary()V

    :cond_0
    return-void
.end method

.method public smoothScrollByOffset(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollByOffset(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    invoke-super {p0, p1}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    return-void
.end method
