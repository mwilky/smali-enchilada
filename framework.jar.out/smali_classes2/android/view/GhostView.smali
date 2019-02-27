.class public Landroid/view/GhostView;
.super Landroid/view/View;
.source "GhostView.java"


# instance fields
.field private mBeingMoved:Z

.field private mReferences:I

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iput-object p0, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setTransitionVisibility(I)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;

    move-result-object v0

    return-object v0
.end method

.method public static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroid/view/GhostView;
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v0

    iget-object v1, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    iget-object v2, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    if-eq v5, v1, :cond_0

    iget v3, v2, Landroid/view/GhostView;->mReferences:I

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    :cond_0
    if-nez v2, :cond_2

    if-nez p2, :cond_1

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object p2, v4

    invoke-static {p0, p1, p2}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    :cond_1
    new-instance v4, Landroid/view/GhostView;

    invoke-direct {v4, p0}, Landroid/view/GhostView;-><init>(Landroid/view/View;)V

    move-object v2, v4

    invoke-virtual {v2, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    invoke-static {p1, v4}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    invoke-static {p1, v2}, Landroid/view/GhostView;->copySize(Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v6, v5}, Landroid/view/GhostView;->moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I

    move-result v6

    iget-object v7, v0, Landroid/view/ViewGroupOverlay;->mOverlayViewGroup:Landroid/view/ViewOverlay$OverlayViewGroup;

    invoke-static {v7, v4, v2, v5, v6}, Landroid/view/GhostView;->insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V

    iput v3, v2, Landroid/view/GhostView;->mReferences:I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v2, p2}, Landroid/view/GhostView;->setMatrix(Landroid/graphics/Matrix;)V

    :cond_3
    :goto_0
    iget v4, v2, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v2, Landroid/view/GhostView;->mReferences:I

    return-object v2

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private static copySize(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setLeft(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setTop(I)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setRight(I)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBottom(I)V

    return-void
.end method

.method public static getGhost(Landroid/view/View;)Landroid/view/GhostView;
    .locals 1

    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    return-object v0
.end method

.method private static getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    move v0, p3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-gt v0, v1, :cond_1

    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/GhostView;

    iget-object v5, v4, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v5, p2}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-static {p1, p2}, Landroid/view/GhostView;->isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v2, -0x1

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    return v0
.end method

.method private static getParents(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1, p1}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static insertIntoOverlay(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/GhostView;Ljava/util/ArrayList;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/GhostView;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p2, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroid/view/GhostView;->getParents(Landroid/view/View;Ljava/util/ArrayList;)V

    invoke-static {p0, v0, p3, p4}, Landroid/view/GhostView;->getInsertIndex(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;I)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private static isGhostWrapper(Landroid/view/View;)Z
    .locals 4

    instance-of v0, p0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Landroid/view/GhostView;

    return v2

    :cond_0
    return v1
.end method

.method private static isOnTop(Landroid/view/View;Landroid/view/View;)Z
    .locals 8

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->buildOrderedChildList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x1

    nop

    :goto_1
    if-ge v3, v1, :cond_5

    if-eqz v4, :cond_1

    invoke-virtual {v0, v1, v3}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v6

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    if-nez v2, :cond_2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    :goto_3
    if-ne v7, p0, :cond_3

    const/4 v5, 0x0

    goto :goto_4

    :cond_3
    if-ne v7, p1, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_6
    return v5
.end method

.method private static isOnTop(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eq v4, v5, :cond_1

    invoke-static {v4, v5}, Landroid/view/GhostView;->isOnTop(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method private static moveGhostViewsToTop(Landroid/view/ViewGroup;Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    add-int/lit8 v1, v0, -0x1

    add-int/lit8 v2, v0, -0x2

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    add-int/lit8 v1, v0, -0x2

    :goto_2
    const/4 v2, 0x1

    if-ltz v1, :cond_5

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/GhostView;->isGhostWrapper(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/GhostView;

    iput-boolean v2, v4, Landroid/view/GhostView;->mBeingMoved:Z

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iput-boolean v5, v4, Landroid/view/GhostView;->mBeingMoved:Z

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, -0x1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_3
    move v2, v3

    if-ltz v2, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v2, -0x1

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :goto_4
    return v1
.end method

.method public static removeGhost(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/GhostView;->mReferences:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/view/GhostView;->mReferences:I

    iget v1, v0, Landroid/view/GhostView;->mReferences:I

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/GhostView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/view/GhostView;->mBeingMoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionVisibility(I)V

    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/view/DisplayListCanvas;

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View;->mRecreateDisplayList:Z

    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->updateDisplayListIfDirty()Landroid/view/RenderNode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/RenderNode;->isValid()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertReorderBarrier()V

    invoke-virtual {v0, v1}, Landroid/view/DisplayListCanvas;->drawRenderNode(Landroid/view/RenderNode;)V

    invoke-virtual {v0}, Landroid/view/DisplayListCanvas;->insertInorderBarrier()V

    :cond_0
    return-void
.end method

.method public setMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Landroid/view/GhostView;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0, p1}, Landroid/view/RenderNode;->setAnimationMatrix(Landroid/graphics/Matrix;)Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mGhostView:Landroid/view/GhostView;

    if-ne v0, p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/GhostView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    :cond_1
    return-void
.end method
