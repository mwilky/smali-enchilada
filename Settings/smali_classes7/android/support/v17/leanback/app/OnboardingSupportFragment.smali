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

    .line 169
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 170
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 156
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 201
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    .line 205
    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    .line 209
    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    .line 213
    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    .line 217
    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    .line 227
    new-instance v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 242
    new-instance v0, Landroid/support/v17/leanback/app/OnboardingSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method private createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fadeIn"    # Z
    .param p3, "slideDirection"    # I
    .param p4, "startDelay"    # J

    .line 975
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

    .line 976
    .local v0, "isLtr":Z
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

    .line 981
    .local v3, "slideRight":Z
    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz p2, :cond_6

    .line 982
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_0

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 983
    .local v6, "fadeAnimator":Landroid/animation/Animator;
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

    .line 985
    .local v4, "slideAnimator":Landroid/animation/Animator;
    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 986
    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_APPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_6

    .line 988
    .end local v4    # "slideAnimator":Landroid/animation/Animator;
    .end local v6    # "fadeAnimator":Landroid/animation/Animator;
    :cond_6
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v5, [F

    fill-array-data v7, :array_1

    invoke-static {p1, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 989
    .restart local v6    # "fadeAnimator":Landroid/animation/Animator;
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

    .line 991
    .restart local v4    # "slideAnimator":Landroid/animation/Animator;
    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 992
    sget-object v7, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->HEADER_DISAPPEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v7}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 994
    :goto_6
    const-wide/16 v7, 0x1a1

    invoke-virtual {v6, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 995
    invoke-virtual {v6, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 996
    invoke-virtual {v4, v7, v8}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 997
    invoke-virtual {v4, p1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 998
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 999
    .local v7, "animator":Landroid/animation/AnimatorSet;
    new-array v5, v5, [Landroid/animation/Animator;

    aput-object v6, v5, v1

    aput-object v4, v5, v2

    invoke-virtual {v7, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1000
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-lez v1, :cond_8

    .line 1001
    invoke-virtual {v7, p4, p5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 1003
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
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .line 561
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
    .param p1, "previousPage"    # I

    .line 888
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 891
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 893
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    const/4 v1, 0x0

    .line 896
    .local v1, "fadeAnimator":Landroid/animation/Animator;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v3

    if-ge p1, v3, :cond_1

    .line 898
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x800003

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 899
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x21

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800005

    const-wide/16 v8, 0x1f4

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x215

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 907
    :cond_1
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x0

    const v7, 0x800005

    const-wide/16 v8, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 908
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x21

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    move-object v1, v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    const/4 v6, 0x1

    const v7, 0x800003

    const-wide/16 v8, 0x1f4

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 912
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    const-wide/16 v8, 0x215

    invoke-direct/range {v4 .. v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->createAnimator(Landroid/view/View;ZIJ)Landroid/animation/Animator;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v3

    .line 916
    .local v3, "currentPageIndex":I
    new-instance v4, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;

    invoke-direct {v4, p0, v3}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;I)V

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 924
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 926
    .local v4, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getCurrentPageIndex()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v2

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    .line 927
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 928
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_fade_out:I

    invoke-static {v4, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 930
    .local v2, "navigatorFadeOutAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 931
    new-instance v5, Landroid/support/v17/leanback/app/OnboardingSupportFragment$7;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 937
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_start_button_fade_in:I

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    .line 940
    .local v5, "buttonFadeInAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 941
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 942
    .end local v2    # "navigatorFadeOutAnimator":Landroid/animation/Animator;
    .end local v5    # "buttonFadeInAnimator":Landroid/animation/Animator;
    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v5

    sub-int/2addr v5, v2

    if-ne p1, v5, :cond_3

    .line 943
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v7}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    .line 944
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_fade_in:I

    invoke-static {v4, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 946
    .local v2, "navigatorFadeInAnimator":Landroid/animation/Animator;
    iget-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v2, v5}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 947
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 948
    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_start_button_fade_out:I

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    .line 950
    .local v5, "buttonFadeOutAnimator":Landroid/animation/Animator;
    iget-object v6, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 951
    new-instance v6, Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;

    invoke-direct {v6, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 957
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    .end local v2    # "navigatorFadeInAnimator":Landroid/animation/Animator;
    .end local v5    # "buttonFadeOutAnimator":Landroid/animation/Animator;
    :cond_3
    :goto_1
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 960
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 961
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 962
    iget v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v2, p1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChanged(II)V

    .line 963
    return-void
.end method

.method private resolveTheme()V
    .locals 7

    .line 543
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 544
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onProvideTheme()I

    move-result v1

    .line 545
    .local v1, "theme":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 548
    sget v2, Landroid/support/v17/leanback/R$attr;->onboardingTheme:I

    .line 549
    .local v2, "resId":I
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 550
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v4

    .line 552
    .local v4, "found":Z
    if-eqz v4, :cond_0

    .line 553
    new-instance v5, Landroid/view/ContextThemeWrapper;

    iget v6, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v5, v0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 555
    .end local v2    # "resId":I
    .end local v3    # "typedValue":Landroid/util/TypedValue;
    .end local v4    # "found":Z
    :cond_0
    goto :goto_0

    .line 556
    :cond_1
    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 558
    :goto_0
    return-void
.end method


# virtual methods
.method public final getArrowBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 506
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    return v0
.end method

.method public final getArrowColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 484
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    return v0
.end method

.method protected final getCurrentPageIndex()I
    .locals 1

    .line 830
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    return v0
.end method

.method public final getDescriptionViewTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 439
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    return v0
.end method

.method public final getDotBackgroundColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 460
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    return v0
.end method

.method public final getIconResourceId()I
    .locals 1

    .line 1021
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    return v0
.end method

.method public final getLogoResourceId()I
    .locals 1

    .line 580
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

    .line 514
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTitleViewTextColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 417
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    return v0
.end method

.method hideLogoView()V
    .locals 12

    .line 650
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 653
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    iget v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 657
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 659
    .local v0, "container":Landroid/view/View;
    nop

    .line 660
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 659
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 661
    .local v2, "inflater":Landroid/view/LayoutInflater;
    sget v3, Landroid/support/v17/leanback/R$id;->background_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 663
    .local v3, "backgroundContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, v3}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateBackgroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 664
    .local v4, "background":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 665
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 666
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 668
    :cond_1
    sget v5, Landroid/support/v17/leanback/R$id;->content_container:I

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 669
    .local v5, "contentContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, v5}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 670
    .local v6, "content":Landroid/view/View;
    if-eqz v6, :cond_2

    .line 671
    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 672
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 674
    :cond_2
    sget v7, Landroid/support/v17/leanback/R$id;->foreground_container:I

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 676
    .local v7, "foregroundContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v2, v7}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateForegroundView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 677
    .local v8, "foreground":Landroid/view/View;
    if-eqz v8, :cond_3

    .line 678
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 679
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 682
    :cond_3
    sget v9, Landroid/support/v17/leanback/R$id;->page_container:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 683
    sget v9, Landroid/support/v17/leanback/R$id;->content_container:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_4

    .line 685
    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v11

    invoke-virtual {v9, v11}, Landroid/support/v17/leanback/widget/PagingIndicator;->setPageCount(I)V

    .line 686
    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v11, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {v9, v11, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 688
    :cond_4
    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v11

    sub-int/2addr v11, v10

    if-ne v9, v11, :cond_5

    .line 689
    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    invoke-virtual {v9, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 691
    :cond_5
    iget-object v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v9, v1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setVisibility(I)V

    .line 694
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v9, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageDescription(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    return-void
.end method

.method protected final isLogoAnimationFinished()Z
    .locals 1

    .line 796
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    return v0
.end method

.method protected moveToNextPage()V
    .locals 2

    .line 296
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    .line 298
    return-void

    .line 300
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_1

    .line 301
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    .line 302
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V

    .line 304
    :cond_1
    return-void
.end method

.method protected moveToPreviousPage()V
    .locals 1

    .line 282
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_0

    .line 284
    return-void

    .line 286
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    if-lez v0, :cond_1

    .line 287
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    .line 288
    iget v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onPageChangedInternal(I)V

    .line 290
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

    .line 777
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

    .line 641
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

    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreateTitleAnimator()Landroid/animation/Animator;
    .locals 2

    .line 786
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$animator;->lb_onboarding_title_enter:I

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 310
    invoke-direct {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->resolveTheme()V

    .line 311
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getThemeInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 312
    .local v0, "localInflater":Landroid/view/LayoutInflater;
    sget v1, Landroid/support/v17/leanback/R$layout;->lb_onboarding_fragment:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 314
    .local v1, "view":Landroid/view/ViewGroup;
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

    .line 316
    sget v2, Landroid/support/v17/leanback/R$id;->page_indicator:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/PagingIndicator;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    .line 317
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 319
    sget v2, Landroid/support/v17/leanback/R$id;->button_start:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    .line 320
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mOnKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 322
    sget v2, Landroid/support/v17/leanback/R$id;->main_icon:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    .line 323
    sget v2, Landroid/support/v17/leanback/R$id;->logo:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    .line 324
    sget v2, Landroid/support/v17/leanback/R$id;->title:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    .line 325
    sget v2, Landroid/support/v17/leanback/R$id;->description:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    .line 327
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColorSet:Z

    if-eqz v2, :cond_1

    .line 328
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    :cond_1
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColorSet:Z

    if-eqz v2, :cond_2

    .line 331
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    :cond_2
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColorSet:Z

    if-eqz v2, :cond_3

    .line 334
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 336
    :cond_3
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColorSet:Z

    if-eqz v2, :cond_4

    .line 337
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 339
    :cond_4
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColorSet:Z

    if-eqz v2, :cond_5

    .line 340
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 342
    :cond_5
    iget-boolean v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonTextSet:Z

    if-eqz v2, :cond_6

    .line 343
    iget-object v2, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_6
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 346
    .local v2, "context":Landroid/content/Context;
    sget v3, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    if-nez v3, :cond_7

    .line 347
    const/high16 v3, 0x42700000    # 60.0f

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 348
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sput v3, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->sSlideDistance:I

    .line 350
    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 351
    return-object v1
.end method

.method protected onFinishFragment()V
    .locals 0

    .line 882
    return-void
.end method

.method protected onLogoAnimationFinished()V
    .locals 1

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startEnterAnimation(Z)V

    .line 709
    return-void
.end method

.method protected onPageChanged(II)V
    .locals 0
    .param p1, "newPage"    # I
    .param p2, "previousPage"    # I

    .line 971
    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    .line 539
    const/4 v0, -0x1

    return v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 392
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 393
    const-string v0, "leanback.onboarding.current_page_index"

    iget v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 394
    const-string v0, "leanback.onboarding.logo_animation_finished"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    const-string v0, "leanback.onboarding.enter_animation_finished"

    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 356
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 357
    if-nez p2, :cond_0

    .line 358
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    .line 359
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    .line 360
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    .line 361
    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v1, v0, v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->onPageSelected(IZ)V

    .line 362
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_0

    .line 374
    :cond_0
    const-string v0, "leanback.onboarding.current_page_index"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mCurrentPageIndex:I

    .line 375
    const-string v0, "leanback.onboarding.logo_animation_finished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    .line 376
    const-string v0, "leanback.onboarding.enter_animation_finished"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    .line 377
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    if-nez v0, :cond_1

    .line 380
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->startLogoAnimation()Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoAnimationFinished:Z

    .line 382
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    goto :goto_0

    .line 385
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onLogoAnimationFinished()V

    .line 388
    :cond_2
    :goto_0
    return-void
.end method

.method public setArrowBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 493
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColor:I

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowBackgroundColorSet:Z

    .line 495
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 496
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowBackgroundColor(I)V

    .line 498
    :cond_0
    return-void
.end method

.method public setArrowColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 471
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColor:I

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mArrowColorSet:Z

    .line 473
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setArrowColor(I)V

    .line 476
    :cond_0
    return-void
.end method

.method public setDescriptionViewTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 426
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColor:I

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionViewTextColorSet:Z

    .line 428
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 431
    :cond_0
    return-void
.end method

.method public setDotBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 447
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColor:I

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDotBackgroundColorSet:Z

    .line 449
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mPageIndicator:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/PagingIndicator;->setDotBackgroundColor(I)V

    .line 452
    :cond_0
    return-void
.end method

.method public final setIconResouceId(I)V
    .locals 2
    .param p1, "resourceId"    # I

    .line 1010
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mIconResourceId:I

    .line 1011
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1013
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mMainIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1015
    :cond_0
    return-void
.end method

.method public final setLogoResourceId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 571
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    .line 572
    return-void
.end method

.method public setStartButtonText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 524
    iput-object p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonTextSet:Z

    .line 526
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButton:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mStartButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 529
    :cond_0
    return-void
.end method

.method public setTitleViewTextColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 404
    iput p1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColor:I

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleViewTextColorSet:Z

    .line 406
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 409
    :cond_0
    return-void
.end method

.method protected final startEnterAnimation(Z)V
    .locals 6
    .param p1, "force"    # Z

    .line 721
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 722
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 723
    return-void

    .line 725
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->hideLogoView()V

    .line 726
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mEnterAnimationFinished:Z

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 727
    return-void

    .line 729
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v1, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_onboarding_page_indicator_enter:I

    invoke-static {v0, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    .line 732
    .local v2, "animator":Landroid/animation/Animator;
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

    .line 733
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateTitleAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 736
    if-eqz v2, :cond_3

    .line 738
    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 739
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateDescriptionAnimator()Landroid/animation/Animator;

    move-result-object v2

    .line 743
    if-eqz v2, :cond_4

    .line 745
    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 746
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateEnterAnimation()Landroid/animation/Animator;

    move-result-object v3

    .line 751
    .local v3, "customAnimator":Landroid/animation/Animator;
    if-eqz v3, :cond_5

    .line 752
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 757
    return-void

    .line 759
    :cond_6
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    .line 760
    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 761
    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 762
    iget-object v4, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v5, Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;

    invoke-direct {v5, p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 769
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 770
    return-void
.end method

.method startLogoAnimation()Z
    .locals 8

    .line 597
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 598
    .local v0, "context":Landroid/content/Context;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 599
    return v1

    .line 601
    :cond_0
    const/4 v2, 0x0

    .line 602
    .local v2, "animator":Landroid/animation/Animator;
    iget v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 603
    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 604
    iget-object v3, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    iget v5, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoResourceId:I

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 605
    sget v3, Landroid/support/v17/leanback/R$animator;->lb_onboarding_logo_enter:I

    invoke-static {v0, v3}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    .line 607
    .local v3, "inAnimator":Landroid/animation/Animator;
    sget v5, Landroid/support/v17/leanback/R$animator;->lb_onboarding_logo_exit:I

    invoke-static {v0, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v5

    .line 609
    .local v5, "outAnimator":Landroid/animation/Animator;
    const-wide/16 v6, 0x535

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 610
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    .line 611
    .local v6, "logoAnimator":Landroid/animation/AnimatorSet;
    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v3, v7, v1

    aput-object v5, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 612
    iget-object v7, p0, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 613
    move-object v2, v6

    .line 614
    .end local v3    # "inAnimator":Landroid/animation/Animator;
    .end local v5    # "outAnimator":Landroid/animation/Animator;
    .end local v6    # "logoAnimator":Landroid/animation/AnimatorSet;
    goto :goto_0

    .line 615
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment;->onCreateLogoAnimation()Landroid/animation/Animator;

    move-result-object v2

    .line 617
    :goto_0
    if-eqz v2, :cond_2

    .line 618
    new-instance v1, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;

    invoke-direct {v1, p0, v0}, Landroid/support/v17/leanback/app/OnboardingSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/OnboardingSupportFragment;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 627
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    .line 628
    return v4

    .line 630
    :cond_2
    return v1
.end method
