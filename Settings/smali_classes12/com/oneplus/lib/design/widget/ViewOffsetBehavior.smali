.class Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "ViewOffsetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private mTempLeftRightOffset:I

.field private mTempTopBottomOffset:I

.field private mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    iput v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    return-void
.end method


# virtual methods
.method public getLeftAndRightOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->getLeftAndRightOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->getTopAndBottomOffset()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)V"
        }
    .end annotation

    invoke-virtual {p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    return-void
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/design/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->layoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)V

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-direct {v0, p2}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->onViewLayout()V

    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    iget v2, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    iput v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    :cond_1
    iget v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    iget v2, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    iput v1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setLeftAndRightOffset(I)Z

    move-result v0

    return v0

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempLeftRightOffset:I

    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mViewOffsetHelper:Lcom/oneplus/lib/design/widget/ViewOffsetHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    move-result v0

    return v0

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/ViewOffsetBehavior;->mTempTopBottomOffset:I

    const/4 v0, 0x0

    return v0
.end method
