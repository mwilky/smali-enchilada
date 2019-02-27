.class public Lcom/android/internal/widget/WeightedLinearLayout;
.super Landroid/widget/LinearLayout;
.source "WeightedLinearLayout.java"


# instance fields
.field private mMajorWeightMax:F

.field private mMajorWeightMin:F

.field private mMinorWeightMax:F

.field private mMinorWeightMin:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/android/internal/R$styleable;->WeightedLinearLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/WeightedLinearLayout;->getMeasuredWidth()I

    move-result v4

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-eqz v2, :cond_1

    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMin:F

    goto :goto_1

    :cond_1
    iget v7, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMin:F

    :goto_1
    if-eqz v2, :cond_2

    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMinorWeightMax:F

    goto :goto_2

    :cond_2
    iget v8, p0, Lcom/android/internal/widget/WeightedLinearLayout;->mMajorWeightMax:F

    :goto_2
    const/high16 v9, -0x80000000

    if-ne v3, v9, :cond_4

    int-to-float v9, v1

    mul-float/2addr v9, v7

    float-to-int v9, v9

    int-to-float v10, v1

    mul-float/2addr v10, v7

    float-to-int v10, v10

    const/4 v11, 0x0

    cmpl-float v12, v7, v11

    if-lez v12, :cond_3

    if-ge v4, v9, :cond_3

    invoke-static {v9, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    cmpl-float v11, v8, v11

    if-lez v11, :cond_4

    if-le v4, v10, :cond_4

    invoke-static {v10, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 v5, 0x1

    :cond_4
    :goto_3
    if-eqz v5, :cond_5

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method
