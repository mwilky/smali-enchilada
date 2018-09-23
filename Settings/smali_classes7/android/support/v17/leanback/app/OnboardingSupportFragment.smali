.class public abstract Landroid/support/v17/leanback/app/OnboardingSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "OnboardingSupportFragment.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DESCRIPTION_START_DELAY_MS:J = 0x21L

.field private static final HEADER_ANIMATION_DURATION_MS:J = 0x1a1L

.field private static final HEADER_APPEAR_DELAY_MS:J = 0x1f4L

.field private static final HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final KEY_CURRENT_PAGE_INDEX:Ljava/lang/String; = "leanback.onboarding.current_page_index"

.field private static final KEY_ENTER_ANIMATION_FINISHED:Ljava/lang/String; = "leanback.onboarding.enter_animation_finished"

.field private static final KEY_LOGO_ANIMATION_FINISHED:Ljava/lang/String; = "leanback.onboarding.logo_animation_finished"

.field private static final LOGO_SPLASH_PAUSE_DURATION_MS:J = 0x535L

.field private static final SLIDE_DISTANCE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "OnboardingF"

.field private static sSlideDistance:I


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mArrowBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mArrowBackgroundColorSet:Z

.field private mArrowColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mArrowColorSet:Z

.field mCurrentPageIndex:I

.field mDescriptionView:Landroid/widget/TextView;

.field private mDescriptionViewTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDescriptionViewTextColorSet:Z

.field private mDotBackgroundColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mDotBackgroundColorSet:Z

.field mEnterAnimationFinished:Z

.field private mIconResourceId:I

.field mIsLtr:Z

.field mLogoAnimationFinished:Z

.field private mLogoResourceId:I

.field private mLogoView:Landroid/widget/ImageView;

.field private mMainIconView:Landroid/widget/ImageView;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mOnKeyListener:Landroid/view/View$OnKeyListener;

.field mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

.field mStartButton:Landroid/view/View;

.field private mStartButtonText:Ljava/lang/CharSequence;

.field private mStartButtonTextSet:Z

.field private mThemeWrapper:Landroid/view/ContextThemeWrapper;

.field mTitleView:Landroid/widget/TextView;

.field private mTitleViewTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mTitleViewTextColorSet:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;
    .locals 10

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const v3, 0x800005

    if-eq p3, v3, :cond_3

    :cond_1
    if-nez v0, :cond_2

    const v3, 0x800003

    if-eq p3, v3, :cond_3

    :cond_2
    const/4 v3, 0x5

    if-ne p3, v3, :cond_4

    :cond_3
    move v3, v2

    goto :goto_1

    :cond_4
    move v3, v1

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_6

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v5, [F

    if-eqz v3, :cond_5

    sget v9, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    :goto_2
    int-to-float v9, v9

    goto :goto_3

    :cond_5
    sget v9, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    neg-int v9, v9

    goto :goto_2

    :goto_3
    aput v9, v8, v1

    aput v4, v8, v2

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    :cond_6
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v8, v5, [F

    aput v4, v8, v1

    if-eqz v3, :cond_7

    sget v4, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    :goto_4
    int-to-float v4, v4

    goto :goto_5

    :cond_7
    sget v4, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    neg-int v4, v4

    goto :goto_4

    :goto_5
    aput v4, v8, v2

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :goto_6
    const-wide/16 v7, 0x1a1

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v6, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v4, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_8

    invoke-virtual {v7, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    :cond_8
    return-object v7

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    if-nez v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1, v0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private onPageChangedInternal(I)V
    .locals 10

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v3

    if-ge p1, v3, :cond_1

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x800003

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x21

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800005

    const-wide/16 v8, 0x1f4

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x215

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x800005

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x21

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800003

    const-wide/16 v8, 0x1f4

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x215

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v3

    new-instance v4, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;

    invoke-direct {v4, p0, v3}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;I)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_fade_out:I

    invoke-static {v4, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v5, Landroid/support/v17/leanback/app/OnboardingSupportFragment$7;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_start_button_fade_in:I

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne p1, v5, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v7}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_fade_in:I

    invoke-static {v4, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_start_button_fade_out:I

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    iget-object v6, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    new-instance v6, Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    iget v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v2, p1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChanged(II)V

    return-void
.end method

.method private resolveTheme()V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onProvideTheme()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget v2, Landroid/support/v17/leanback/R$attr;->onboardingTheme:I

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    :goto_0
    return-void
.end method


# virtual methods
.method public final getArrowBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    return v0
.end method

.method public final getArrowColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    return v0
.end method

.method protected final getCurrentPageIndex()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    return v0
.end method

.method public final getDescriptionViewTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    return v0
.end method

.method public final getDotBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    return v0
.end method

.method public final getIconResourceId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    return v0
.end method

.method public final getLogoResourceId()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    return v0
.end method

.method protected abstract getPageCount()I
.end method

.method protected abstract getPageDescription(I)Ljava/lang/CharSequence;
.end method

.method protected abstract getPageTitle(I)Ljava/lang/CharSequence;
.end method

.method public final getStartButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleViewTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    return v0
.end method

.method hideLogoView()V
    .locals 12

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    nop

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/R$id;->background_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    sget v5, Landroid/support/v17/leanback/R$id;->content_container:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v5}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    sget v7, Landroid/support/v17/leanback/R$id;->foreground_container:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {p0, v2, v7}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_3
    sget v9, Landroid/support/v17/leanback/R$id;->page_container:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    sget v9, Landroid/support/v17/leanback/R$id;->content_container:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/support/v17/leanback/widget/PagingIndicator;->setPageCount(I)V

    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v11, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {v9, v11, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    :cond_4
    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v11

    sub-int/2addr v11, v10

    if-ne v9, v11, :cond_5

    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v9, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageDescription(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final isLogoAnimationFinished()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    return v0
.end method

.method protected moveToNextPage()V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected moveToPreviousPage()V
    .locals 1

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V

    :cond_1
    return-void
.end method

.method protected abstract onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected abstract onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected onCreateDescriptionAnimator()Landroid/animation/Animator;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$animator;->lb_onboarding_description_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateEnterAnimation()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method protected onCreateLogoAnimation()Landroid/animation/Animator;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateTitleAnimator()Landroid/animation/Animator;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$animator;->lb_onboarding_title_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-direct {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->resolveTheme()V

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$layout;->lb_onboarding_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    iput-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIsLtr:Z

    sget v2, Landroid/support/v17/leanback/R$id;->page_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PagingIndicator;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v2, Landroid/support/v17/leanback/R$id;->button_start:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    sget v2, Landroid/support/v17/leanback/R$id;->main_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    sget v2, Landroid/support/v17/leanback/R$id;->logo:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    sget v2, Landroid/support/v17/leanback/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    sget v2, Landroid/support/v17/leanback/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColorSet:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColorSet:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColorSet:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_3
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColorSet:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_4
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColorSet:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_5
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonTextSet:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    if-nez v3, :cond_7

    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    return-object v1
.end method

.method protected onFinishFragment()V
    .locals 0

    return-void
.end method

.method protected onLogoAnimationFinished()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startEnterAnimation(Z)V

    return-void
.end method

.method protected onPageChanged(II)V
    .locals 0

    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "leanback.onboarding.current_page_index"

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "leanback.onboarding.logo_animation_finished"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "leanback.onboarding.enter_animation_finished"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    if-nez p2, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v1, v0, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    :cond_0
    const-string v0, "leanback.onboarding.current_page_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    const-string v0, "leanback.onboarding.logo_animation_finished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    const-string v0, "leanback.onboarding.enter_animation_finished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startLogoAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    :cond_0
    return-void
.end method

.method public setDescriptionViewTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public final setIconResouceId(I)V
    .locals 2

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public final setLogoResourceId(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    return-void
.end method

.method public setStartButtonText(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonTextSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTitleViewTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColorSet:Z

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method protected final startEnterAnimation(Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->hideLogoView()V

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sget v2, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    :goto_0
    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateTitleAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateDescriptionAnimator()Landroid/animation/Animator;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateEnterAnimation()Landroid/animation/Animator;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method startLogoAnimation()Z
    .locals 8

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    iget v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    sget v3, Landroid/support/v17/leanback/R$animator;->lb_onboarding_logo_enter:I

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_logo_exit:I

    invoke-static {v0, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    const-wide/16 v6, 0x535

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v7, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    move-object v2, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateLogoAnimation()Landroid/animation/Animator;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    new-instance v1, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    return v4

    :cond_2
    return v1
.end method
