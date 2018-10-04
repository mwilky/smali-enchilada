.class public final Lcom/android/internal/view/menu/IconMenuView;
.super Landroid/view/ViewGroup;
.source "IconMenuView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;
.implements Lcom/android/internal/view/menu/MenuView;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/menu/IconMenuView$LayoutParams;,
        Lcom/android/internal/view/menu/IconMenuView$SavedState;
    }
.end annotation


# static fields
.field private static final ITEM_CAPTION_CYCLE_DELAY:I = 0x3e8


# instance fields
.field private mAnimations:I

.field private mHasStaleChildren:Z

.field private mHorizontalDivider:Landroid/graphics/drawable/Drawable;

.field private mHorizontalDividerHeight:I

.field private mHorizontalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mItemBackground:Landroid/graphics/drawable/Drawable;

.field private mLastChildrenCaptionMode:Z

.field private mLayout:[I

.field private mLayoutNumRows:I

.field private mMaxItems:I

.field private mMaxItemsPerRow:I

.field private mMaxRows:I

.field private mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mMenuBeingLongpressed:Z

.field private mMoreIcon:Landroid/graphics/drawable/Drawable;

.field private mNumActualItemsShown:I

.field private mRowHeight:I

.field private mVerticalDivider:Landroid/graphics/drawable/Drawable;

.field private mVerticalDividerRects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalDividerWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    sget-object v1, Lcom/android/internal/R$styleable;->IconMenuView:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    sget-object v5, Lcom/android/internal/R$styleable;->MenuView:[I

    invoke-virtual {p1, p2, v5, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    const/4 v4, -0x1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    if-ne v2, v4, :cond_0

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    :cond_0
    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    if-ne v2, v4, :cond_1

    iput v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    :cond_1
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setFocusableInTouchMode(Z)V

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setDescendantFocusability(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method private calculateItemFittingMetadata(I)V
    .locals 7

    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    move v4, v0

    :goto_1
    if-lez v4, :cond_1

    iget v5, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->desiredWidth:I

    div-int v6, p1, v4

    if-ge v5, v6, :cond_0

    iput v4, v3, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private doItemsFit()Z
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    const/4 v3, 0x0

    move v4, v0

    move v0, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v0, v2, :cond_3

    aget v6, v1, v0

    if-ne v6, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    move v5, v4

    move v4, v6

    :goto_1
    if-lez v4, :cond_2

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    iget v9, v8, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->maxNumItemsOnRow:I

    if-ge v9, v6, :cond_1

    return v3

    :cond_1
    add-int/lit8 v4, v4, -0x1

    move v5, v7

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method private layoutItems(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return-void

    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItemsPerRow:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_0
    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxRows:I

    if-gt v1, v2, :cond_3

    invoke-direct {p0, v1, v0}, Lcom/android/internal/view/menu/IconMenuView;->layoutItemsUsingGravity(II)V

    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/view/menu/IconMenuView;->doItemsFit()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private layoutItemsUsingGravity(II)V
    .locals 6

    div-int v0, p2, p1

    rem-int v1, p2, p1

    sub-int v2, p1, v1

    iget-object v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_1

    aput v0, v3, v4

    if-lt v4, v2, :cond_0

    aget v5, v3, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return-void
.end method

.method private positionChildren(II)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    add-int/lit8 v3, v2, -0x1

    iget-object v4, v0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/lit8 v9, v2, -0x1

    mul-int/2addr v8, v9

    sub-int v8, p2, v8

    int-to-float v8, v8

    int-to-float v10, v2

    div-float/2addr v8, v10

    move v11, v7

    move v7, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_6

    const/4 v12, 0x0

    iget v13, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    aget v14, v4, v5

    add-int/lit8 v14, v14, -0x1

    mul-int/2addr v13, v14

    sub-int v13, v1, v13

    int-to-float v13, v13

    aget v14, v4, v5

    int-to-float v14, v14

    div-float/2addr v13, v14

    move v14, v12

    move-object v12, v6

    const/4 v6, 0x0

    :goto_1
    aget v15, v4, v5

    if-ge v6, v15, :cond_3

    invoke-virtual {v0, v7}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    float-to-int v10, v13

    move/from16 v16, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v10, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    move-object/from16 v17, v4

    float-to-int v4, v8

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v15, v10, v2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    float-to-int v2, v14

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    add-float v2, v14, v13

    float-to-int v2, v2

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    float-to-int v2, v11

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    add-float v2, v11, v8

    float-to-int v2, v2

    iput v2, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    add-float/2addr v14, v13

    add-int/lit8 v7, v7, 0x1

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v10, v14

    move/from16 v18, v7

    float-to-int v7, v11

    iget v9, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v9, v9

    add-float/2addr v9, v14

    float-to-int v9, v9

    move-object/from16 v19, v12

    add-float v12, v11, v8

    float-to-int v12, v12

    invoke-direct {v4, v10, v7, v9, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    move/from16 v18, v7

    move-object/from16 v19, v12

    :goto_2
    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerWidth:I

    int-to-float v2, v2

    add-float/2addr v14, v2

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    move/from16 v7, v18

    move-object/from16 v12, v19

    goto :goto_1

    :cond_3
    move/from16 v16, v2

    move-object/from16 v17, v4

    if-eqz v12, :cond_4

    iput v1, v12, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    :cond_4
    add-float/2addr v11, v8

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    if-ge v5, v3, :cond_5

    iget-object v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    new-instance v4, Landroid/graphics/Rect;

    float-to-int v6, v11

    iget v9, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v9, v9

    add-float/2addr v9, v11

    float-to-int v9, v9

    const/4 v10, 0x0

    invoke-direct {v4, v10, v6, v1, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    int-to-float v2, v2

    add-float/2addr v11, v2

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move-object v6, v12

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v4

    return-void
.end method

.method private setChildrenCaptionMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v1, p1}, Lcom/android/internal/view/menu/IconMenuItemView;->setCaptionMode(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setCycleShortcutCaptionMode(Z)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    return v0
.end method

.method createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
    .locals 6

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuItemView;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403e5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/view/menu/IconMenuView;->mMoreIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/view/menu/IconMenuItemView;->initialize(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    new-instance v4, Lcom/android/internal/view/menu/IconMenuView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/view/menu/IconMenuView$1;-><init>(Lcom/android/internal/view/menu/IconMenuView;)V

    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/IconMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v2
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    return v1

    :cond_1
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/IconMenuView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/IconMenuView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/view/menu/IconMenuView$LayoutParams;
    .locals 2

    new-instance v0, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method getItemBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mItemBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLayout()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayout:[I

    return-object v0
.end method

.method public getLayoutNumRows()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    return v0
.end method

.method getMaxItems()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMaxItems:I

    return v0
.end method

.method getNumActualItemsShown()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return v0
.end method

.method public getWindowAnimations()I
    .locals 1

    iget v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mAnimations:I

    return v0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-void
.end method

.method public invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;I)Z

    move-result v0

    return v0
.end method

.method markStaleChildren()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHasStaleChildren:Z

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->requestFocus()Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mVerticalDividerRects:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;

    iget v3, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->left:I

    iget v4, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->top:I

    iget v5, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->right:I

    iget v6, v2, Lcom/android/internal/view/menu/IconMenuView$LayoutParams;->bottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    const v0, 0x7fffffff

    invoke-static {v0, p1}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->calculateItemFittingMetadata(I)V

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->layoutItems(I)V

    iget v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mLayoutNumRows:I

    iget v2, p0, Lcom/android/internal/view/menu/IconMenuView;->mRowHeight:I

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    add-int/2addr v2, v3

    mul-int/2addr v2, v1

    iget v3, p0, Lcom/android/internal/view/menu/IconMenuView;->mHorizontalDividerHeight:I

    sub-int/2addr v2, v3

    nop

    invoke-static {v2, p2}, Lcom/android/internal/view/menu/IconMenuView;->resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/view/menu/IconMenuView;->setMeasuredDimension(II)V

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/android/internal/view/menu/IconMenuView;->positionChildren(II)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/IconMenuView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, v0, Lcom/android/internal/view/menu/IconMenuView$SavedState;->focusedPosition:I

    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/view/menu/IconMenuView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/IconMenuView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, v1, :cond_0

    new-instance v3, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    invoke-direct {v3, v0, v2}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/internal/view/menu/IconMenuView$SavedState;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/android/internal/view/menu/IconMenuView$SavedState;-><init>(Landroid/os/Parcelable;I)V

    return-object v2
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/view/menu/IconMenuView;->mLastChildrenCaptionMode:Z

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/view/menu/IconMenuView;->setChildrenCaptionMode(Z)V

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/view/menu/IconMenuView;->mMenuBeingLongpressed:Z

    invoke-direct {p0, v1}, Lcom/android/internal/view/menu/IconMenuView;->setCycleShortcutCaptionMode(Z)V

    :goto_0
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/internal/view/menu/IconMenuView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method setNumActualItemsShown(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/view/menu/IconMenuView;->mNumActualItemsShown:I

    return-void
.end method
