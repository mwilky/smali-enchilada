.class public abstract Lcom/android/internal/widget/AbsActionBarView;
.super Landroid/view/ViewGroup;
.source "AbsActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field protected mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

.field protected mContentHeight:I

.field private mEatingHover:Z

.field private mEatingTouch:Z

.field protected mMenuView:Landroid/widget/ActionMenuView;

.field protected final mPopupContext:Landroid/content/Context;

.field protected mSplitActionBar:Z

.field protected mSplitView:Landroid/view/ViewGroup;

.field protected mSplitWhenNarrow:Z

.field protected final mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    iput-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101048d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mPopupContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method protected static next(IIZ)I
    .locals 1

    if-eqz p2, :cond_0

    sub-int v0, p0, p1

    goto :goto_0

    :cond_0
    add-int v0, p0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public animateToVisibility(I)V
    .locals 2

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setupAnimatorToVisibility(IJ)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public dismissPopupMenus()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    :cond_0
    return-void
.end method

.method public getAnimatedVisibility()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    return v0
.end method

.method public getContentHeight()I
    .locals 1

    iget v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowPending()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->isOverflowReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected measureChildView(Landroid/view/View;III)I
    .locals 1

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v0, p3}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p2, v0

    sub-int/2addr p2, p4

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->ActionBar:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x10102ce

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setContentHeight(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200fb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitToolbar(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v1, p1}, Landroid/widget/ActionMenuPresenter;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_1
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-ne v0, v2, :cond_1

    if-nez v3, :cond_1

    iput-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    :cond_1
    const/16 v2, 0xa

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingHover:Z

    :cond_3
    return v4
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    iput-boolean v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method protected positionChild(Landroid/view/View;IIIZ)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v2, p4, v1

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    if-eqz p5, :cond_0

    sub-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, v3, v2, p2, v4}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_0
    add-int v3, p2, v0

    add-int v4, v2, v1

    invoke-virtual {p1, p2, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    :goto_0
    if-eqz p5, :cond_1

    neg-int v3, v0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    return v3
.end method

.method public postShowOverflowMenu()V
    .locals 1

    new-instance v0, Lcom/android/internal/widget/AbsActionBarView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/AbsActionBarView$1;-><init>(Lcom/android/internal/widget/AbsActionBarView;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/AbsActionBarView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->requestLayout()V

    return-void
.end method

.method public setSplitToolbar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return-void
.end method

.method public setSplitView(Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    return-void
.end method

.method public setSplitWhenNarrow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitWhenNarrow:Z

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setupAnimatorToVisibility(IJ)Landroid/animation/Animator;
    .locals 7

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/internal/widget/AbsActionBarView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    invoke-virtual {v3, v2}, Landroid/widget/ActionMenuView;->setAlpha(F)V

    :cond_1
    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v1, [F

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v3, :cond_2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v4, v1, v0

    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v3

    :cond_2
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v2

    :cond_3
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v1, [F

    aput v2, v4, v0

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v4, Lcom/android/internal/widget/AbsActionBarView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    if-eqz v4, :cond_4

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Landroid/widget/ActionMenuView;

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v1, [F

    aput v2, v1, v0

    invoke-static {v5, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v4

    :cond_4
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mVisAnimListener:Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/AbsActionBarView$VisibilityAnimListener;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3
.end method

.method public showOverflowMenu()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Landroid/widget/ActionMenuPresenter;

    invoke-virtual {v0}, Landroid/widget/ActionMenuPresenter;->showOverflowMenu()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
