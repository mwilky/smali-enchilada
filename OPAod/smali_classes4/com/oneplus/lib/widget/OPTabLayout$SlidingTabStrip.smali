.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method

.method static synthetic access$1802(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$1902(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    return p1
.end method

.method private setIndicatorPosition(II)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 8

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    int-to-float v7, v1

    mul-float/2addr v5, v7

    add-float/2addr v4, v5

    float-to-int v1, v4

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v6, v5

    int-to-float v5, v2

    mul-float/2addr v6, v5

    add-float/2addr v4, v6

    float-to-int v2, v4

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    move v2, v1

    :cond_1
    :goto_0
    invoke-direct {p0, v1, v2}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 17

    move-object/from16 v6, p0

    move/from16 v7, p1

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v8, v0

    invoke-virtual/range {p0 .. p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v11

    iget v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    sub-int v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_1

    iget v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    iget v1, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    move v12, v1

    move v1, v0

    goto :goto_2

    :cond_1
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v1, 0x18

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v0

    iget v1, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-ge v7, v1, :cond_3

    if-eqz v8, :cond_2

    sub-int v1, v10, v0

    move v2, v1

    :goto_1
    move v12, v2

    goto :goto_2

    :cond_2
    add-int v1, v11, v0

    move v2, v1

    goto :goto_1

    :cond_3
    if-eqz v8, :cond_4

    add-int v1, v11, v0

    move v2, v1

    goto :goto_1

    :cond_4
    sub-int v1, v10, v0

    move v0, v1

    move v12, v0

    :goto_2
    move v13, v1

    if-ne v13, v10, :cond_7

    if-eq v12, v11, :cond_5

    goto :goto_3

    :cond_5
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1500(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1500(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_6
    iput v7, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    const/4 v0, 0x0

    iput v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-direct {v6, v10, v11}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    move/from16 v15, p2

    move/from16 v16, v8

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1502(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v14

    iget-object v0, v6, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1600(Lcom/oneplus/lib/widget/OPTabLayout;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move/from16 v15, p2

    int-to-long v0, v15

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    new-instance v5, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;

    move-object v0, v5

    move-object v1, v6

    move v2, v13

    move v3, v10

    move v4, v12

    move/from16 v16, v8

    move-object v8, v5

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$1;-><init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;IIII)V

    invoke-virtual {v14, v8}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;

    invoke-direct {v0, v6, v7}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip$2;-><init>(Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;I)V

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v14}, Landroid/animation/ValueAnimator;->start()V

    nop

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method childrenNeedLayout()Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gtz v5, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v3

    mul-int v4, v5, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    if-gt v4, v6, :cond_3

    nop

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method
