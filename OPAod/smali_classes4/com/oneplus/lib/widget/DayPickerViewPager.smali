.class Lcom/oneplus/lib/widget/DayPickerViewPager;
.super Lcom/oneplus/lib/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 36
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->populate()V

    .line 39
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildCount()I

    move-result v0

    .line 41
    .local v0, "count":I
    nop

    .line 42
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v1, v4, :cond_1

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 45
    .local v1, "measureMatchParentChildren":Z
    :goto_1
    const/4 v5, 0x0

    .line 46
    .local v5, "maxHeight":I
    const/4 v6, 0x0

    .line 47
    .local v6, "maxWidth":I
    const/4 v7, 0x0

    .line 49
    .local v7, "childState":I
    move v8, v7

    move v7, v5

    move v5, v2

    .local v5, "i":I
    .local v7, "maxHeight":I
    .local v8, "childState":I
    :goto_2
    const/4 v9, -0x1

    if-ge v5, v0, :cond_4

    .line 50
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 51
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_3

    .line 52
    invoke-virtual {p0, v10, p1, p2}, Lcom/oneplus/lib/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    .line 53
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 54
    .local v11, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 55
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 56
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredState()I

    move-result v12

    invoke-static {v8, v12}, Lcom/oneplus/lib/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v8

    .line 57
    if-eqz v1, :cond_3

    .line 58
    iget v12, v11, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->width:I

    if-eq v12, v9, :cond_2

    iget v12, v11, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->height:I

    if-ne v12, v9, :cond_3

    .line 60
    :cond_2
    iget-object v9, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 67
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v10

    add-int/2addr v5, v10

    add-int/2addr v6, v5

    .line 68
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v10

    add-int/2addr v5, v10

    add-int/2addr v7, v5

    .line 71
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 72
    .end local v7    # "maxHeight":I
    .local v5, "maxHeight":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 76
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x17

    if-lt v7, v10, :cond_5

    .line 77
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 78
    .local v7, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v7, :cond_5

    .line 79
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 80
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 84
    .end local v7    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    invoke-static {v6, p1, v8}, Lcom/oneplus/lib/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v7

    shl-int/lit8 v10, v8, 0x10

    .line 85
    invoke-static {v5, p2, v10}, Lcom/oneplus/lib/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v10

    .line 84
    invoke-virtual {p0, v7, v10}, Lcom/oneplus/lib/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    .line 88
    iget-object v7, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 89
    if-le v0, v3, :cond_8

    .line 90
    nop

    .local v2, "i":I
    :goto_3
    if-ge v2, v0, :cond_8

    .line 91
    iget-object v3, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 93
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;

    .line 97
    .local v7, "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    iget v10, v7, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->width:I

    if-ne v10, v9, :cond_6

    .line 98
    nop

    .line 99
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    .line 98
    invoke-static {v10, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .local v10, "childWidthMeasureSpec":I
    goto :goto_4

    .line 102
    .end local v10    # "childWidthMeasureSpec":I
    :cond_6
    nop

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v10

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v7, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->width:I

    .line 102
    invoke-static {p1, v10, v11}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v10

    .line 107
    .restart local v10    # "childWidthMeasureSpec":I
    :goto_4
    iget v11, v7, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->height:I

    if-ne v11, v9, :cond_7

    .line 108
    nop

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 108
    invoke-static {v11, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .local v11, "childHeightMeasureSpec":I
    goto :goto_5

    .line 112
    .end local v11    # "childHeightMeasureSpec":I
    :cond_7
    nop

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    iget v12, v7, Lcom/oneplus/lib/widget/ViewPager$LayoutParams;->height:I

    .line 112
    invoke-static {p2, v11, v12}, Lcom/oneplus/lib/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v11

    .line 117
    .restart local v11    # "childHeightMeasureSpec":I
    :goto_5
    invoke-virtual {v3, v10, v11}, Landroid/view/View;->measure(II)V

    .line 90
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "lp":Lcom/oneplus/lib/widget/ViewPager$LayoutParams;
    .end local v10    # "childWidthMeasureSpec":I
    .end local v11    # "childHeightMeasureSpec":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 121
    .end local v2    # "i":I
    :cond_8
    iget-object v2, p0, Lcom/oneplus/lib/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 122
    return-void
.end method
