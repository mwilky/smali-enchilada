.class public final Landroid/support/v17/leanback/app/BackgroundManager;
.super Ljava/lang/Object;
.source "BackgroundManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;,
        Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;,
        Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;,
        Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;,
        Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;,
        Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;
    }
.end annotation


# static fields
.field private static final CHANGE_BG_DELAY_MS:I = 0x1f4

.field static final DEBUG:Z = false

.field private static final FADE_DURATION:I = 0x1f4

.field private static final FRAGMENT_TAG:Ljava/lang/String;

.field static final FULL_ALPHA:I = 0xff

.field static final TAG:Ljava/lang/String; = "BackgroundManager"


# instance fields
.field private final mAccelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private final mAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final mAnimator:Landroid/animation/ValueAnimator;

.field private mAttached:Z

.field private mAutoReleaseOnStop:Z

.field mBackgroundColor:I

.field mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgView:Landroid/view/View;

.field mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

.field private mChangeRunnablePending:Z

.field mContext:Landroid/app/Activity;

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private mFragmentState:Landroid/support/v17/leanback/app/BackgroundFragment;

.field mHandler:Landroid/os/Handler;

.field private mHeightPx:I

.field mImageInWrapperIndex:I

.field mImageOutWrapperIndex:I

.field private mLastSetTime:J

.field mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

.field private mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

.field private mThemeDrawableResourceId:I

.field private mWidthPx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    const-class v0, Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/v17/leanback/app/BackgroundManager;->FRAGMENT_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAutoReleaseOnStop:Z

    .line 412
    new-instance v1, Landroid/support/v17/leanback/app/BackgroundManager$1;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BackgroundManager$1;-><init>(Landroid/support/v17/leanback/app/BackgroundManager;)V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 438
    new-instance v1, Landroid/support/v17/leanback/app/BackgroundManager$2;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BackgroundManager$2;-><init>(Landroid/support/v17/leanback/app/BackgroundManager;)V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 563
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    .line 564
    invoke-static {}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->getInstance()Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    .line 565
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHeightPx:I

    .line 566
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mWidthPx:I

    .line 567
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    .line 569
    new-instance v1, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;

    invoke-direct {v1}, Landroid/support/v4/view/animation/FastOutLinearInInterpolator;-><init>()V

    .line 570
    .local v1, "defaultInterpolator":Landroid/view/animation/Interpolator;
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    const v3, 0x10a0005

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAccelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 572
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    const v3, 0x10a0006

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    .line 575
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    .line 576
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 577
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimationUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 578
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    invoke-virtual {p1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    new-array v0, v0, [I

    const/4 v3, 0x0

    const v4, 0x1010054

    aput v4, v0, v3

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 582
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    .line 583
    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    .line 586
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 588
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BackgroundManager;->createFragment(Landroid/app/Activity;)V

    .line 589
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method static synthetic access$000(Landroid/support/v17/leanback/app/BackgroundManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/BackgroundManager;

    .line 83
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    return v0
.end method

.method static createEmptyDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1062
    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/app/BackgroundManager$EmptyDrawable;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method

.method private createFragment(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 593
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/app/BackgroundManager;->FRAGMENT_TAG:Ljava/lang/String;

    .line 594
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/BackgroundFragment;

    .line 595
    .local v0, "fragment":Landroid/support/v17/leanback/app/BackgroundFragment;
    if-nez v0, :cond_0

    .line 596
    new-instance v1, Landroid/support/v17/leanback/app/BackgroundFragment;

    invoke-direct {v1}, Landroid/support/v17/leanback/app/BackgroundFragment;-><init>()V

    move-object v0, v1

    .line 597
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    sget-object v2, Landroid/support/v17/leanback/app/BackgroundManager;->FRAGMENT_TAG:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 599
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundFragment;->getBackgroundManager()Landroid/support/v17/leanback/app/BackgroundManager;

    move-result-object v1

    if-nez v1, :cond_1

    .line 604
    :goto_0
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/app/BackgroundFragment;->setBackgroundManager(Landroid/support/v17/leanback/app/BackgroundManager;)V

    .line 605
    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mFragmentState:Landroid/support/v17/leanback/app/BackgroundFragment;

    .line 606
    return-void

    .line 600
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Created duplicated BackgroundManager for same activity, please use getInstance() instead"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Landroid/app/Activity;)Landroid/support/v17/leanback/app/BackgroundManager;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 549
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget-object v1, Landroid/support/v17/leanback/app/BackgroundManager;->FRAGMENT_TAG:Ljava/lang/String;

    .line 550
    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/BackgroundFragment;

    .line 551
    .local v0, "fragment":Landroid/support/v17/leanback/app/BackgroundFragment;
    if-eqz v0, :cond_0

    .line 552
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundFragment;->getBackgroundManager()Landroid/support/v17/leanback/app/BackgroundManager;

    move-result-object v1

    .line 553
    .local v1, "manager":Landroid/support/v17/leanback/app/BackgroundManager;
    if-eqz v1, :cond_0

    .line 554
    return-object v1

    .line 559
    .end local v1    # "manager":Landroid/support/v17/leanback/app/BackgroundManager;
    :cond_0
    new-instance v1, Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-direct {v1, p0}, Landroid/support/v17/leanback/app/BackgroundManager;-><init>(Landroid/app/Activity;)V

    return-object v1
.end method

.method private getRunnableDelay()J
    .locals 4

    .line 884
    iget-wide v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLastSetTime:J

    const-wide/16 v2, 0x1f4

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private getThemeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 531
    const/4 v0, 0x0

    .line 532
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 533
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    iget v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->getThemeDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 535
    :cond_0
    if-nez v0, :cond_1

    .line 536
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v17/leanback/app/BackgroundManager;->createEmptyDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 538
    :cond_1
    return-object v0
.end method

.method private lazyInit()V
    .locals 3

    .line 789
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-eqz v0, :cond_0

    .line 790
    return-void

    .line 793
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    sget v1, Landroid/support/v17/leanback/R$drawable;->lb_background:I

    .line 794
    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 795
    .local v0, "layerDrawable":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->createTranslucentLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    .line 796
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->findWrapperIndexById(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    .line 797
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imageout:I

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->findWrapperIndexById(I)I

    move-result v1

    iput v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageOutWrapperIndex:I

    .line 798
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBgView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-static {v1, v2}, Landroid/support/v17/leanback/widget/BackgroundHelper;->setBackgroundPreservingAlpha(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 799
    return-void
.end method

.method private setDrawableInternal(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 864
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    if-eqz v0, :cond_2

    .line 868
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    if-eqz v0, :cond_1

    .line 869
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->sameDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    return-void

    .line 873
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 874
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    .line 877
    :cond_1
    new-instance v0, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;-><init>(Landroid/support/v17/leanback/app/BackgroundManager;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    .line 878
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnablePending:Z

    .line 880
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->postChangeRunnable()V

    .line 881
    return-void

    .line 865
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must attach before setting background drawable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private syncWithService()V
    .locals 3

    .line 638
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->getColor()I

    move-result v0

    .line 639
    .local v0, "color":I
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 644
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    iput v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    .line 645
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 646
    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 648
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->updateImmediate()V

    .line 649
    return-void
.end method

.method private updateImmediate()V
    .locals 3

    .line 802
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    if-nez v0, :cond_0

    .line 803
    return-void

    .line 805
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->lazyInit()V

    .line 807
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imagein:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    goto :goto_0

    .line 812
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->updateDrawable(ILandroid/graphics/drawable/Drawable;)Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    .line 814
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v1, Landroid/support/v17/leanback/R$id;->background_imageout:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    .line 815
    return-void
.end method


# virtual methods
.method public attach(Landroid/view/Window;)V
    .locals 1
    .param p1, "window"    # Landroid/view/Window;

    .line 656
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->attachToViewInternal(Landroid/view/View;)V

    .line 657
    return-void
.end method

.method public attachToView(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 672
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/BackgroundManager;->attachToViewInternal(Landroid/view/View;)V

    .line 676
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 678
    return-void
.end method

.method attachToViewInternal(Landroid/view/View;)V
    .locals 3
    .param p1, "sceneRoot"    # Landroid/view/View;

    .line 681
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    if-nez v0, :cond_0

    .line 684
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBgView:Landroid/view/View;

    .line 685
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    .line 686
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->syncWithService()V

    .line 687
    return-void

    .line 682
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already attached to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBgView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearDrawable()V
    .locals 1

    .line 860
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 861
    return-void
.end method

.method createTranslucentLayerDrawable(Landroid/graphics/drawable/LayerDrawable;)Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;
    .locals 5
    .param p1, "layerDrawable"    # Landroid/graphics/drawable/LayerDrawable;

    .line 394
    invoke-virtual {p1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    .line 395
    .local v0, "numChildren":I
    new-array v1, v0, [Landroid/graphics/drawable/Drawable;

    .line 396
    .local v1, "drawables":[Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 397
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v1, v3

    .line 396
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 399
    .end local v3    # "i":I
    :cond_0
    new-instance v3, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-direct {v3, p0, v1}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;-><init>(Landroid/support/v17/leanback/app/BackgroundManager;[Landroid/graphics/drawable/Drawable;)V

    .line 400
    .local v3, "result":Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;
    nop

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 401
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->setId(II)V

    .line 400
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 403
    .end local v2    # "i":I
    :cond_1
    return-object v3
.end method

.method detach()V
    .locals 2

    .line 702
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->release()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBgView:Landroid/view/View;

    .line 705
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    .line 707
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-virtual {v1}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->unref()V

    .line 709
    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    .line 711
    :cond_0
    return-void
.end method

.method public final getColor()I
    .locals 1
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    .line 962
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    return v0
.end method

.method public getDefaultDimLayer()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 760
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    sget v1, Landroid/support/v17/leanback/R$color;->lb_background_protection:I

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method getDefaultDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 523
    iget v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    if-eqz v0, :cond_0

    .line 524
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object v0

    .line 526
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getThemeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDimLayer()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 751
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 969
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getImageInWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    .locals 2

    .line 609
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageInWrapperIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method getImageOutWrapper()Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;
    .locals 2

    .line 614
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->mWrapper:[Landroid/support/v17/leanback/app/BackgroundManager$DrawableWrapper;

    iget v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mImageOutWrapperIndex:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public isAttached()Z
    .locals 1

    .line 693
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAttached:Z

    return v0
.end method

.method public isAutoReleaseOnStop()Z
    .locals 1

    .line 954
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAutoReleaseOnStop:Z

    return v0
.end method

.method onActivityStart()V
    .locals 0

    .line 623
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->updateImmediate()V

    .line 624
    return-void
.end method

.method onResume()V
    .locals 0

    .line 634
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->postChangeRunnable()V

    .line 635
    return-void
.end method

.method onStop()V
    .locals 1

    .line 627
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->isAutoReleaseOnStop()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->release()V

    .line 630
    :cond_0
    return-void
.end method

.method postChangeRunnable()V
    .locals 4

    .line 764
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnablePending:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 775
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mFragmentState:Landroid/support/v17/leanback/app/BackgroundFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 777
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->getAlpha()I

    move-result v0

    const/16 v1, 0xff

    if-ge v0, v1, :cond_3

    goto :goto_0

    .line 780
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getRunnableDelay()J

    move-result-wide v0

    .line 782
    .local v0, "delayMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLastSetTime:J

    .line 783
    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 784
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnablePending:Z

    .line 786
    .end local v0    # "delayMs":J
    :goto_0
    return-void

    .line 765
    :cond_4
    :goto_1
    return-void
.end method

.method public release()V
    .locals 4

    .line 722
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 724
    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mChangeRunnable:Landroid/support/v17/leanback/app/BackgroundManager$ChangeBackgroundRunnable;

    .line 726
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 727
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 729
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imagein:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    .line 731
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    sget v2, Landroid/support/v17/leanback/R$id;->background_imageout:I

    iget-object v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, v2, v3}, Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;->clearDrawable(ILandroid/content/Context;)V

    .line 732
    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    .line 734
    :cond_2
    iput-object v1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 735
    return-void
.end method

.method sameDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Z
    .locals 4
    .param p1, "first"    # Landroid/graphics/drawable/Drawable;
    .param p2, "second"    # Landroid/graphics/drawable/Drawable;

    .line 973
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    const/4 v1, 0x1

    if-ne p1, p2, :cond_1

    .line 977
    return v1

    .line 979
    :cond_1
    instance-of v2, p1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    if-eqz v2, :cond_2

    instance-of v2, p2, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    if-eqz v2, :cond_2

    .line 980
    move-object v2, p1

    check-cast v2, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    invoke-virtual {v2}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, p2

    check-cast v3, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    invoke-virtual {v3}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 981
    return v1

    .line 984
    :cond_2
    instance-of v2, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    instance-of v2, p2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 985
    move-object v2, p1

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    move-object v3, p2

    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 986
    return v1

    .line 989
    :cond_3
    return v0

    .line 974
    :cond_4
    :goto_0
    return v0
.end method

.method public setAutoReleaseOnStop(Z)V
    .locals 0
    .param p1, "autoReleaseOnStop"    # Z

    .line 947
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mAutoReleaseOnStop:Z

    .line 948
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 898
    if-nez p1, :cond_0

    .line 899
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 900
    return-void

    .line 903
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 910
    :cond_1
    const/4 v0, 0x0

    .line 912
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mWidthPx:I

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHeightPx:I

    if-eq v1, v2, :cond_4

    .line 913
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 914
    .local v1, "dwidth":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 918
    .local v2, "dheight":I
    iget v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHeightPx:I

    mul-int/2addr v3, v1

    iget v4, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mWidthPx:I

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_3

    .line 919
    iget v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mHeightPx:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .local v3, "scale":F
    goto :goto_0

    .line 921
    .end local v3    # "scale":F
    :cond_3
    iget v3, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mWidthPx:I

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 924
    .restart local v3    # "scale":F
    :goto_0
    iget v4, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mWidthPx:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    float-to-int v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 925
    .local v4, "subX":I
    const/4 v5, 0x0

    sub-int v6, v1, v4

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 927
    .local v5, "dx":I
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, v6

    .line 928
    invoke-virtual {v0, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 929
    neg-int v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 937
    .end local v1    # "dwidth":I
    .end local v2    # "dheight":I
    .end local v3    # "scale":F
    .end local v4    # "subX":I
    .end local v5    # "dx":I
    :cond_4
    new-instance v1, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;

    iget-object v2, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    .line 939
    .local v1, "bitmapDrawable":Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/BackgroundManager;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 940
    return-void

    .line 907
    .end local v0    # "matrix":Landroid/graphics/Matrix;
    .end local v1    # "bitmapDrawable":Landroid/support/v17/leanback/app/BackgroundManager$BitmapDrawable;
    :cond_5
    :goto_1
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 824
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->setColor(I)V

    .line 825
    iput p1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundColor:I

    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 827
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v0, :cond_0

    .line 828
    return-void

    .line 830
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->setDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 831
    return-void
.end method

.method public setDimLayer(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 743
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 842
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mService:Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/BackgroundManager$BackgroundContinuityService;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 843
    iput-object p1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 844
    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mLayerDrawable:Landroid/support/v17/leanback/app/BackgroundManager$TranslucentLayerDrawable;

    if-nez v0, :cond_0

    .line 845
    return-void

    .line 847
    :cond_0
    if-nez p1, :cond_1

    .line 848
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/BackgroundManager;->getDefaultDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/app/BackgroundManager;->setDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 850
    :cond_1
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/BackgroundManager;->setDrawableInternal(Landroid/graphics/drawable/Drawable;)V

    .line 852
    :goto_0
    return-void
.end method

.method public setThemeDrawableResourceId(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .line 665
    iput p1, p0, Landroid/support/v17/leanback/app/BackgroundManager;->mThemeDrawableResourceId:I

    .line 666
    return-void
.end method
