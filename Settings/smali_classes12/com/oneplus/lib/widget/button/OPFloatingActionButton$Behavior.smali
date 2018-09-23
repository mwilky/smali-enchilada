.class public Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;
.super Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;
.source "OPFloatingActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior<",
        "Lcom/oneplus/lib/widget/button/OPFloatingActionButton;",
        ">;"
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DEFAULT:Z = true


# instance fields
.field private mAutoHideEnabled:Z

.field private mInternalAutoHideListener:Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;

.field private mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OpFloatingActionButton_Behavior_Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpFloatingActionButton_Behavior_Layout_op_behavior_autoHide:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static isBottomSheet(Landroid/view/View;)Z
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    return v0
.end method

.method private offsetIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V
    .locals 7

    invoke-static {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    if-lez v1, :cond_5

    nop

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getRight()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    iget v6, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_0

    iget v3, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getLeft()I

    move-result v4

    iget v5, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    if-gt v4, v5, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    neg-int v3, v4

    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getBottom()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    iget v6, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-lt v4, v5, :cond_2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getTop()I

    move-result v4

    iget v5, v1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    if-gt v4, v5, :cond_3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    neg-int v2, v4

    :cond_3
    :goto_1
    if-eqz v2, :cond_4

    invoke-static {p2, v2}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    :cond_4
    if-eqz v3, :cond_5

    invoke-static {p2, v3}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    :cond_5
    return-void
.end method

.method private shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 4

    nop

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getAnchorId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getUserSetVisibility()I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 4

    invoke-direct {p0, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mTmpRect:Landroid/graphics/Rect;

    invoke-static {p1, p2, v0}, Lcom/oneplus/lib/design/widget/Utils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getMinimumHeightForVisibleOverlappingContent()I

    move-result v3

    if-gt v2, v3, :cond_2

    invoke-virtual {p3, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->shouldUpdateVisibility(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    nop

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->hide(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->show(Z)V

    :goto_0
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public bridge synthetic getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0
    .param p1    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public getInsetDodgeRect(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/Rect;)Z
    .locals 6
    .param p1    # Lcom/oneplus/lib/design/widget/CoordinatorLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/lib/widget/button/OPFloatingActionButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getLeft()I

    move-result v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getTop()I

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getRight()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->getBottom()I

    move-result v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v1, 0x1

    return v1
.end method

.method public isAutoHideEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return v0
.end method

.method public onAttachedToLayoutParams(Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;)V
    .locals 1
    .param p1    # Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-nez v0, :cond_0

    const/16 v0, 0x50

    iput v0, p1, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    :cond_0
    return-void
.end method

.method public bridge synthetic onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onDependentViewChanged(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/view/View;)Z
    .locals 1

    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v0, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    goto :goto_0

    :cond_0
    invoke-static {p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;I)Z
    .locals 5

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependencies(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/oneplus/lib/design/widget/AppBarLayout;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-direct {p0, p1, v4, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForAppBarLayout(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_0
    invoke-static {v3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->isBottomSheet(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, v3, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->updateFabVisibilityForBottomSheet(Landroid/view/View;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {p1, p2, p3}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->offsetIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V

    const/4 v1, 0x1

    return v1
.end method

.method public setAutoHideEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mAutoHideEnabled:Z

    return-void
.end method

.method setInternalAutoHideListener(Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;)V
    .locals 0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$Behavior;->mInternalAutoHideListener:Lcom/oneplus/lib/widget/button/OPFloatingActionButton$OnVisibilityChangedListener;

    return-void
.end method
