.class public Lcom/android/setupwizardlib/view/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# instance fields
.field private mOriginalPaddingLeft:I

.field private mOriginalPaddingRight:I

.field private mStacked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    return-void
.end method

.method private setStacked(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mStacked:Z

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    sget v4, Lcom/android/setupwizardlib/R$id;->suw_original_weight:I

    iget v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    :cond_1
    sget v4, Lcom/android/setupwizardlib/R$id;->suw_original_weight:I

    invoke-virtual {v2, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_2
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setOrientation(I)V

    add-int/lit8 v1, v0, -0x1

    :goto_2
    if-ltz v1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingLeft()I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingRight()I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    iget v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    iget v2, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setPadding(IIII)V

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/android/setupwizardlib/view/ButtonBarLayout;->mOriginalPaddingRight:I

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setPadding(IIII)V

    :goto_3
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setStacked(Z)V

    const/4 v2, 0x0

    move v3, p1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    const/4 v2, 0x1

    :cond_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->getMeasuredWidth()I

    move-result v1

    if-le v1, v0, :cond_1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/view/ButtonBarLayout;->setStacked(Z)V

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_2
    return-void
.end method
