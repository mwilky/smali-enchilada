.class public Landroid/widget/AbsoluteLayout;
.super Landroid/view/ViewGroup;
.source "AbsoluteLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsoluteLayout$LayoutParams;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Landroid/widget/AbsoluteLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    nop

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v4, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v5, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    add-int/2addr v4, v5

    iget v5, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v6, v3, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    add-int/2addr v5, v6

    nop

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->measureChildren(II)V

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_0

    nop

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    iget v7, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v7, v8

    iget v8, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v4, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/AbsoluteLayout;->mPaddingLeft:I

    iget v5, p0, Landroid/widget/AbsoluteLayout;->mPaddingRight:I

    add-int/2addr v1, v5

    add-int/2addr v2, v1

    iget v1, p0, Landroid/widget/AbsoluteLayout;->mPaddingTop:I

    iget v5, p0, Landroid/widget/AbsoluteLayout;->mPaddingBottom:I

    add-int/2addr v1, v5

    add-int/2addr v4, v1

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/AbsoluteLayout;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v2, p1, v3}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v4

    invoke-static {v1, p2, v3}, Landroid/widget/AbsoluteLayout;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, Landroid/widget/AbsoluteLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
