.class public Lcom/android/settings/PreviewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "PreviewPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;
    }
.end annotation


# static fields
.field private static final CROSS_FADE_DURATION_MS:J = 0x190L

.field private static final FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationCounter:I

.field private mAnimationEndAction:Ljava/lang/Runnable;

.field private mIsLayoutRtl:Z

.field private mPreviewFrames:[Landroid/widget/FrameLayout;

.field private mViewStubInflated:[[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z[I[Landroid/content/res/Configuration;)V
    .locals 10

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    iput-boolean p2, p0, Lcom/android/settings/PreviewPagerAdapter;->mIsLayoutRtl:Z

    array-length v0, p3

    new-array v0, v0, [Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v0, p3

    array-length v1, p4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Z

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/settings/PreviewPagerAdapter;->mIsLayoutRtl:Z

    if-eqz v2, :cond_0

    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout;

    invoke-direct {v4, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v3, v3, v2

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move v3, v0

    :goto_2
    array-length v4, p4

    if-ge v3, v4, :cond_1

    aget-object v4, p4, v3

    invoke-virtual {p1, v4}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    new-instance v6, Landroid/view/ViewStub;

    invoke-direct {v6, v4}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    aget v7, p3, v1

    invoke-virtual {v6, v7}, Landroid/view/ViewStub;->setLayoutResource(I)V

    move v7, v1

    move v8, v3

    new-instance v9, Lcom/android/settings/PreviewPagerAdapter$1;

    invoke-direct {v9, p0, v7, v8}, Lcom/android/settings/PreviewPagerAdapter$1;-><init>(Lcom/android/settings/PreviewPagerAdapter;II)V

    invoke-virtual {v6, v9}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    iget-object v9, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v9, v9, v2

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PreviewPagerAdapter;)[[Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    return-object v0
.end method

.method static synthetic access$208(Lcom/android/settings/PreviewPagerAdapter;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic access$210(Lcom/android/settings/PreviewPagerAdapter;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/PreviewPagerAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/PreviewPagerAdapter;->runAnimationEndAction()V

    return-void
.end method

.method private runAnimationEndAction()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/PreviewPagerAdapter;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method private setVisibility(Landroid/view/View;IZ)V
    .locals 7

    if-nez p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez p3, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    sget-object v1, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_1

    :cond_2
    sget-object v1, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    :goto_1
    const/4 v2, 0x0

    const-wide/16 v3, 0x190

    if-nez p2, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/settings/PreviewPagerAdapter;->FADE_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/settings/PreviewPagerAdapter$2;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/PreviewPagerAdapter$2;-><init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/settings/PreviewPagerAdapter;->FADE_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/PreviewPagerAdapter$PreviewFrameAnimatorListener;-><init>(Lcom/android/settings/PreviewPagerAdapter;Lcom/android/settings/PreviewPagerAdapter$1;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/android/settings/PreviewPagerAdapter$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/PreviewPagerAdapter$3;-><init>(Lcom/android/settings/PreviewPagerAdapter;Landroid/view/View;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :goto_2
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v0, v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v0, v0, p2

    return-object v0
.end method

.method isAnimating()Z
    .locals 1

    iget v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method setAnimationEndAction(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/PreviewPagerAdapter;->mAnimationEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method setPreviewLayer(IIIZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    if-ltz p2, :cond_1

    invoke-virtual {v4, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v6, v6, p3

    aget-boolean v6, v6, p2

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    const/4 v7, 0x4

    if-ne v4, v6, :cond_0

    invoke-direct {p0, v5, v7, p4}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_1

    :cond_0
    invoke-direct {p0, v5, v7, v2}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    :cond_1
    :goto_1
    invoke-virtual {v4, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mPreviewFrames:[Landroid/widget/FrameLayout;

    aget-object v6, v6, p3

    if-ne v4, v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/PreviewPagerAdapter;->mViewStubInflated:[[Z

    aget-object v6, v6, p3

    aget-boolean v6, v6, p1

    if-nez v6, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/view/ViewStub;

    invoke-virtual {v6}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    invoke-direct {p0, v5, v2, p4}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v5, v2, v2}, Lcom/android/settings/PreviewPagerAdapter;->setVisibility(Landroid/view/View;IZ)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
