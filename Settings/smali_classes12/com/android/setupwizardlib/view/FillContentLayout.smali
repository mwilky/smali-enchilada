.class public Lcom/android/setupwizardlib/view/FillContentLayout;
.super Landroid/widget/FrameLayout;
.source "FillContentLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/android/setupwizardlib/R$attr;->suwFillContentLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/FillContentLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/FillContentLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static getMaxSizeMeasureSpec(III)I
    .locals 4

    sub-int v0, p0, p1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    if-ltz p2, :cond_0

    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    :cond_0
    const/4 v3, -0x1

    if-ne p2, v3, :cond_1

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    :cond_1
    const/4 v2, -0x2

    if-ne p2, v2, :cond_2

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    :cond_2
    return v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwFillContentLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwFillContentLayout_android_maxHeight:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxHeight:I

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwFillContentLayout_android_maxWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureIllustrationChild(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxWidth:I

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {v1, v2, v3}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result v1

    iget v2, p0, Lcom/android/setupwizardlib/view/FillContentLayout;->mMaxHeight:I

    invoke-static {v2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {v2, v3, v4}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMaxSizeMeasureSpec(III)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5

    nop

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/setupwizardlib/view/FillContentLayout;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Lcom/android/setupwizardlib/view/FillContentLayout;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/setupwizardlib/view/FillContentLayout;->setMeasuredDimension(II)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/FillContentLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/FillContentLayout;->getMeasuredHeight()I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/setupwizardlib/view/FillContentLayout;->measureIllustrationChild(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
