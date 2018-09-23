.class public Lcom/android/setupwizardlib/DividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerItemDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/DividerItemDecoration$DividerCondition;,
        Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;
    }
.end annotation


# static fields
.field public static final DIVIDER_CONDITION_BOTH:I = 0x1

.field public static final DIVIDER_CONDITION_EITHER:I


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerCondition:I

.field private mDividerHeight:I

.field private mDividerIntrinsicHeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration:[I

    invoke-virtual {p1, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_listDivider:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sget v2, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_android_dividerHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    sget v4, Lcom/android/setupwizardlib/R$styleable;->SuwDividerItemDecoration_suwDividerCondition:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDivider(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v2}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerHeight(I)V

    invoke-virtual {p0, v3}, Lcom/android/setupwizardlib/DividerItemDecoration;->setDividerCondition(I)V

    return-void
.end method

.method public static getDefault(Landroid/content/Context;)Lcom/android/setupwizardlib/DividerItemDecoration;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/android/setupwizardlib/DividerItemDecoration;

    invoke-direct {v0, p0}, Lcom/android/setupwizardlib/DividerItemDecoration;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 7

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-nez v4, :cond_1

    return v3

    :cond_0
    iget v4, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    if-eq v4, v3, :cond_3

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    if-ge v1, v2, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForLayoutPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/setupwizardlib/DividerItemDecoration;->isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result v6

    if-nez v6, :cond_2

    return v5

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v5
.end method


# virtual methods
.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerCondition()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    return v0
.end method

.method public getDividerHeight()I
    .locals 1

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    return v0
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    :goto_0
    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-void
.end method

.method protected isDividerAllowedAbove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    invoke-interface {v0}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedAbove()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected isDividerAllowedBelow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;

    invoke-interface {v0}, Lcom/android/setupwizardlib/DividerItemDecoration$DividedViewHolder;->isDividerAllowedBelow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 9

    iget-object v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v0

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_3

    invoke-virtual {p2, v4}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/android/setupwizardlib/DividerItemDecoration;->shouldDrawDividerBelow(Landroid/view/View;Landroid/support/v7/widget/RecyclerView;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v5}, Landroid/support/v4/view/ViewCompat;->getY(Landroid/view/View;)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    add-int v8, v6, v2

    invoke-virtual {v7, v3, v6, v1, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v7, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerIntrinsicHeight:I

    :goto_0
    iput-object p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerCondition(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerCondition:I

    return-void
.end method

.method public setDividerHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/setupwizardlib/DividerItemDecoration;->mDividerHeight:I

    return-void
.end method
