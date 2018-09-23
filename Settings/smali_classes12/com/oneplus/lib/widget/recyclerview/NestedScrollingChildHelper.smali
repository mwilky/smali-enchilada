.class Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;
.super Ljava/lang/Object;
.source "NestedScrollingChildHelper.java"


# instance fields
.field private mIsNestedScrollingEnabled:Z

.field private mNestedScrollingParent:Landroid/view/ViewParent;

.field private mTempNestedScrollConsumed:[I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public dispatchNestedFling(FFZ)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2, p3}, Landroid/view/ViewParent;->onNestedFling(Landroid/view/View;FFZ)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/ViewParent;->onNestedPreFling(Landroid/view/View;FF)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_8

    aput v1, p4, v1

    aput v1, p4, v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, p4, v1

    aget v3, p4, v0

    :cond_2
    if-nez p3, :cond_4

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    if-nez v4, :cond_3

    const/4 v4, 0x2

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    :cond_3
    iget-object p3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mTempNestedScrollConsumed:[I

    :cond_4
    aput v1, p3, v1

    aput v1, p3, v0

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v4, v5, p1, p2, p3}, Landroid/view/ViewParent;->onNestedPreScroll(Landroid/view/View;II[I)V

    if-eqz p4, :cond_5

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p4}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p4, v1

    sub-int/2addr v4, v2

    aput v4, p4, v1

    aget v4, p4, v0

    sub-int/2addr v4, v3

    aput v4, p4, v0

    :cond_5
    aget v4, p3, v1

    if-nez v4, :cond_7

    aget v4, p3, v0

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    nop

    :cond_7
    :goto_1
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 10

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p5, :cond_4

    aput v1, p5, v1

    aput v1, p5, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p5, :cond_2

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v2, p5, v1

    aget v3, p5, v0

    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-interface/range {v4 .. v9}, Landroid/view/ViewParent;->onNestedScroll(Landroid/view/View;IIII)V

    if-eqz p5, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v4, p5}, Landroid/view/View;->getLocationInWindow([I)V

    aget v4, p5, v1

    sub-int/2addr v4, v2

    aput v4, p5, v1

    aget v1, p5, v0

    sub-int/2addr v1, v3

    aput v1, p5, v0

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->stopNestedScroll()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->stopNestedScroll()V

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mIsNestedScrollingEnabled:Z

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    :goto_0
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, v3, p1}, Landroid/view/ViewParent;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v2, v3, p1}, Landroid/view/ViewParent;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    return v1

    :cond_1
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_2

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->onStopNestedScroll(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->mNestedScrollingParent:Landroid/view/ViewParent;

    :cond_0
    return-void
.end method
