.class Lcom/android/internal/widget/ActionBarView$HomeView;
.super Landroid/widget/FrameLayout;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HomeView"
.end annotation


# static fields
.field private static final DEFAULT_TRANSITION_DURATION:J = 0x96L


# instance fields
.field private mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mIconView:Landroid/widget/ImageView;

.field private mStartOffset:I

.field private mUpIndicator:Landroid/graphics/drawable/Drawable;

.field private mUpIndicatorRes:I

.field private mUpView:Landroid/widget/ImageView;

.field private mUpWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/LayoutTransition;->setDuration(J)V

    :cond_0
    return-void
.end method

.method private updateUpIndicator()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v0, 0x1

    return v0
.end method

.method public getStartOffset()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getUpWidth()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    const v0, 0x10204a2

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const v0, 0x102002c

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 21

    move-object/from16 v0, p0

    sub-int v3, p5, p3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->isLayoutRtl()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-eq v7, v8, :cond_1

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v8

    iget-object v9, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    iget v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v10, v9

    iget v11, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int v6, v10, v11

    div-int/lit8 v10, v8, 0x2

    sub-int v10, v3, v10

    add-int v11, v10, v8

    if-eqz v4, :cond_0

    move v12, v5

    sub-int v13, v12, v9

    sub-int v14, p4, v6

    move/from16 v15, p2

    goto :goto_0

    :cond_0
    move v12, v9

    const/4 v13, 0x0

    add-int v15, p2, v6

    move/from16 v14, p4

    :goto_0
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v1, v13, v10, v12, v11}, Landroid/widget/ImageView;->layout(IIII)V

    goto :goto_1

    :cond_1
    move/from16 v15, p2

    move/from16 v14, p4

    :goto_1
    iget-object v1, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v8

    sub-int v9, v14, v15

    div-int/lit8 v9, v9, 0x2

    iget v10, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    div-int/lit8 v11, v7, 0x2

    sub-int v11, v3, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    add-int v11, v10, v7

    invoke-virtual {v1}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v12

    div-int/lit8 v13, v8, 0x2

    sub-int v13, v9, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    if-eqz v4, :cond_2

    sub-int v16, v5, v6

    sub-int v16, v16, v13

    sub-int v17, v16, v8

    :goto_2
    move-object/from16 v18, v1

    move/from16 v1, v17

    goto :goto_3

    :cond_2
    add-int v17, v6, v13

    add-int v16, v17, v8

    goto :goto_2

    :goto_3
    move/from16 v19, v16

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    move/from16 v0, v19

    invoke-virtual {v2, v1, v10, v0, v11}, Landroid/widget/ImageView;->layout(IIII)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpWidth:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mStartOffset:I

    :goto_0
    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int v10, v4, v5

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_1

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v9, 0x0

    move-object v4, p0

    move v6, p1

    move v7, v2

    move v8, p2

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v3, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v4, v5

    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    move-result v10

    goto :goto_1

    :cond_1
    if-gez v1, :cond_2

    sub-int/2addr v2, v1

    :cond_2
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    if-eq v3, v8, :cond_4

    if-eq v3, v7, :cond_3

    goto :goto_2

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    :goto_2
    if-eq v4, v8, :cond_6

    if-eq v4, v7, :cond_5

    goto :goto_3

    :cond_5
    move v10, v6

    goto :goto_3

    :cond_6
    invoke-static {v10, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    nop

    :goto_3
    invoke-virtual {p0, v2, v10}, Lcom/android/internal/widget/ActionBarView$HomeView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDefaultUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mDefaultUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShowIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setShowUp(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setUpIndicator(I)V
    .locals 1

    iput p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    return-void
.end method

.method public setUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView;->mUpIndicatorRes:I

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView$HomeView;->updateUpIndicator()V

    return-void
.end method
