.class public final Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
.super Landroid/support/v17/leanback/widget/Parallax$IntProperty;
.source "RecyclerViewParallax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/RecyclerViewParallax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ChildPositionProperty"
.end annotation


# instance fields
.field mAdapterPosition:I

.field mFraction:F

.field mOffset:I

.field mViewId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public adapterPosition(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    return-object p0
.end method

.method public fraction(F)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    return-object p0
.end method

.method public getAdapterPosition()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    return v0
.end method

.method public getFraction()F
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    return v0
.end method

.method public getViewId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    return v0
.end method

.method public offset(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    return-object p0
.end method

.method updateValue(Landroid/support/v17/leanback/widget/RecyclerViewParallax;)V
    .locals 10

    iget-object v0, p1, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mRecylerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_4

    const v3, 0x7fffffff

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v5

    iget v6, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mAdapterPosition:I

    if-ge v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v6

    invoke-virtual {p1, v6, v3}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v3

    const/high16 v6, -0x80000000

    invoke-virtual {p1, v3, v6}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    :goto_1
    goto/16 :goto_4

    :cond_3
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v2

    invoke-virtual {p1, v2, v3}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    return-void

    :cond_4
    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget v4, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/support/v7/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_3
    if-eq v3, v0, :cond_8

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-ne v6, v0, :cond_6

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_7

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getTranslationX()F

    move-result v6

    add-float/2addr v4, v6

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v6

    add-float/2addr v5, v6

    :cond_7
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/view/View;

    goto :goto_3

    :cond_8
    float-to-int v6, v4

    float-to-int v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    iget-boolean v6, p1, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->mIsVertical:Z

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->top:I

    iget v8, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->getIndex()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mOffset:I

    add-int/2addr v7, v8

    iget v8, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mFraction:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Landroid/support/v17/leanback/widget/RecyclerViewParallax;->setIntPropertyValue(II)V

    :goto_4
    return-void
.end method

.method public viewId(I)Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/RecyclerViewParallax$ChildPositionProperty;->mViewId:I

    return-object p0
.end method
