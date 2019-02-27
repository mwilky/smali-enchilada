.class public Landroid/widget/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabWidget$OnTabSelectionChanged;,
        Landroid/widget/TabWidget$TabClickListener;
    }
.end annotation


# instance fields
.field private final mBounds:Landroid/graphics/Rect;

.field private mDrawBottomStrips:Z

.field private mImposedTabWidths:[I

.field private mImposedTabsHeight:I

.field private mLeftStrip:Landroid/graphics/drawable/Drawable;

.field private mRightStrip:Landroid/graphics/drawable/Drawable;

.field private mSelectedTab:I

.field private mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

.field private mStripMoved:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010083

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    iput v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    sget-object v0, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    iget-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v3, 0x4

    if-gt v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    const v4, 0x1080826

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const v4, 0x1080825

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValueOrEmpty(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const v4, 0x1080828

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_4
    const v4, 0x1080827

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabWidget;)Landroid/widget/TabWidget$OnTabSelectionChanged;
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-object v0
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getPointerIcon()Landroid/view/PointerIcon;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0x3ea

    invoke-static {v1, v2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v1, Landroid/widget/TabWidget$TabClickListener;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v2

    sub-int/2addr v2, v0

    const/4 v0, 0x0

    invoke-direct {v1, p0, v2, v0}, Landroid/widget/TabWidget$TabClickListener;-><init>(Landroid/widget/TabWidget;ILandroid/widget/TabWidget$1;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->childDrawableStateChanged(Landroid/view/View;)V

    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    iget-boolean v3, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/widget/TabWidget;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iget v6, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    if-eqz v2, :cond_5

    iget v6, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    sub-int v7, v4, v7

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getWidth()I

    move-result v8

    iget v9, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v6, v7, v8, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5
    iput-boolean v5, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    :cond_6
    if-eqz v1, :cond_7

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method public focusCurrentTab(I)V
    .locals 2

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->setCurrentTab(I)V

    if-eq v0, p1, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Landroid/widget/TabWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return p2

    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p2, v0, :cond_1

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    return v0

    :cond_1
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-lt p2, v0, :cond_2

    add-int/lit8 v0, p2, 0x1

    return v0

    :cond_2
    return p2
.end method

.method public getChildTabViewAt(I)Landroid/view/View;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLeftStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getRightStripDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    return v0
.end method

.method public isStripEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    return v0
.end method

.method measureChildBeforeLayout(Landroid/view/View;IIIII)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isMeasureWithLargestChildEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aget v0, v0, p2

    add-int/2addr v0, p4

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    iget v0, p0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p5

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-super/range {v0 .. v6}, Landroid/widget/LinearLayout;->measureChildBeforeLayout(Landroid/view/View;IIIII)V

    return-void
.end method

.method measureHorizontal(II)V
    .locals 16

    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-nez v1, :cond_0

    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    return-void

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeSafeMeasureSpec(II)I

    move-result v3

    const/4 v4, -0x1

    iput v4, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    move/from16 v4, p2

    invoke-super {v0, v3, v4}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getMeasuredWidth()I

    move-result v5

    sub-int/2addr v5, v1

    if-lez v5, :cond_7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v6

    const/4 v7, 0x0

    move v8, v7

    move v7, v2

    :goto_0
    const/16 v9, 0x8

    if-ge v7, v6, :cond_2

    invoke-virtual {v0, v7}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v8, 0x1

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    if-lez v8, :cond_7

    iget-object v7, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    if-eqz v7, :cond_3

    iget-object v7, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    array-length v7, v7

    if-eq v7, v6, :cond_4

    :cond_3
    new-array v7, v6, [I

    iput-object v7, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    :cond_4
    move v7, v5

    move v5, v2

    :goto_2
    if-ge v5, v6, :cond_6

    invoke-virtual {v0, v5}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-ne v11, v9, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    div-int v12, v7, v8

    sub-int v13, v11, v12

    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v14, v0, Landroid/widget/TabWidget;->mImposedTabWidths:[I

    aput v13, v14, v5

    sub-int v14, v11, v13

    sub-int/2addr v7, v14

    add-int/lit8 v8, v8, -0x1

    iget v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    iput v14, v0, Landroid/widget/TabWidget;->mImposedTabsHeight:I

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, v7

    :cond_7
    invoke-super/range {p0 .. p2}, Landroid/widget/LinearLayout;->measureHorizontal(II)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/TabWidget;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v0

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    return-void
.end method

.method public removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    return-void
.end method

.method public setCurrentTab(I)V
    .locals 2

    if-ltz p1, :cond_2

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    iput p1, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    iget v0, p0, Landroid/widget/TabWidget;->mSelectedTab:I

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    iput-boolean v1, p0, Landroid/widget/TabWidget;->mStripMoved:Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public setDividerDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLeftStripDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLeftStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget;->mLeftStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    return-void
.end method

.method public setRightStripDrawable(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/TabWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRightStripDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget;->mRightStrip:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/TabWidget;->requestLayout()V

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    return-void
.end method

.method public setStripEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TabWidget;->mDrawBottomStrips:Z

    invoke-virtual {p0}, Landroid/widget/TabWidget;->invalidate()V

    return-void
.end method

.method setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabWidget;->mSelectionChangedListener:Landroid/widget/TabWidget$OnTabSelectionChanged;

    return-void
.end method
