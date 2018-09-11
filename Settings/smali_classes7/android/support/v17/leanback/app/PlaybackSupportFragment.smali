.class public Landroid/support/v17/leanback/app/PlaybackSupportFragment;
.super Landroid/support/v4/app/Fragment;
.source "PlaybackSupportFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;,
        Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;
    }
.end annotation


# static fields
.field private static final ANIMATING:I = 0x1

.field private static final ANIMATION_MULTIPLIER:I = 0x1

.field public static final BG_DARK:I = 0x1

.field public static final BG_LIGHT:I = 0x2

.field public static final BG_NONE:I = 0x0

.field static final BUNDLE_CONTROL_VISIBLE_ON_CREATEVIEW:Ljava/lang/String; = "controlvisible_oncreateview"

.field private static final DEBUG:Z = false

.field private static final IDLE:I = 0x0

.field private static final START_FADE_OUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PlaybackSupportFragment"


# instance fields
.field mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

.field private final mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

.field mAnimationTranslateY:I

.field mBackgroundType:I

.field mBackgroundView:Landroid/view/View;

.field mBgAlpha:I

.field mBgDarkColor:I

.field mBgFadeInAnimator:Landroid/animation/ValueAnimator;

.field mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mBgLightColor:I

.field final mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mControlVisible:Z

.field mControlVisibleBeforeOnCreateView:Z

.field mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

.field private final mFadeListener:Landroid/animation/Animator$AnimatorListener;

.field mFadingEnabled:Z

.field private final mHandler:Landroid/os/Handler;

.field mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

.field mInSeek:Z

.field mInputEventHandler:Landroid/view/View$OnKeyListener;

.field private mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

.field private mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

.field mMajorFadeTranslateY:I

.field mMinorFadeTranslateY:I

.field private final mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field private final mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

.field private final mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

.field private final mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

.field mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

.field mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

.field mOtherRowsCenterToBottom:I

.field mPaddingBottom:I

.field mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

.field mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

.field mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

.field mRootView:Landroid/view/View;

.field mRow:Landroid/support/v17/leanback/widget/Row;

.field mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

.field mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

.field mShowTimeMs:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 265
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 100
    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    .line 141
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 160
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 174
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Landroid/support/v17/leanback/app/PlaybackSupportFragment$1;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    .line 208
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    .line 216
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    .line 217
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 218
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    .line 224
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    .line 276
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    .line 285
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    .line 293
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    .line 526
    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 527
    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 825
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 1070
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 266
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setInitialDelay(J)V

    .line 267
    return-void
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment;
    .param p1, "x1"    # Z

    .line 84
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v17/leanback/app/PlaybackSupportFragment;Landroid/view/InputEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment;
    .param p1, "x1"    # Landroid/view/InputEvent;

    .line 84
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->onInterceptInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/support/v17/leanback/app/PlaybackSupportFragment;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment;
    .param p1, "x1"    # I

    .line 84
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setBgAlpha(I)V

    return-void
.end method

.method private enableVerticalGridAnimations(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 309
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 312
    :cond_0
    return-void
.end method

.method static endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "first"    # Landroid/animation/ValueAnimator;
    .param p1, "second"    # Landroid/animation/ValueAnimator;

    .line 651
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 652
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 653
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 656
    :cond_1
    :goto_0
    return-void
.end method

.method private static loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 503
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 504
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 505
    return-object v0
.end method

.method private loadBgAnimator()V
    .locals 4

    .line 509
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    .line 516
    .local v0, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 517
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 518
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 519
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 521
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 522
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 523
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 524
    return-void
.end method

.method private loadControlRowAnimator()V
    .locals 4

    .line 530
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    .line 551
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 552
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 553
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 554
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 556
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 558
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 559
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    return-void
.end method

.method private loadOtherRowAnimator()V
    .locals 4

    .line 563
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackSupportFragment;)V

    .line 581
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 582
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 583
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 584
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 586
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 587
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 588
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 589
    return-void
.end method

.method private onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 402
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 404
    .local v0, "controlsHidden":Z
    const/4 v2, 0x0

    .line 405
    .local v2, "consumeEvent":Z
    const/4 v3, 0x0

    .line 406
    .local v3, "keyCode":I
    const/4 v4, 0x0

    .line 408
    .local v4, "keyAction":I
    instance-of v5, p1, Landroid/view/KeyEvent;

    if-eqz v5, :cond_0

    .line 409
    move-object v5, p1

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 410
    move-object v5, p1

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 411
    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    if-eqz v5, :cond_0

    .line 412
    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Landroid/view/KeyEvent;

    invoke-interface {v5, v6, v3, v7}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 416
    :cond_0
    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/16 v5, 0x6f

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 448
    if-eqz v2, :cond_4

    .line 449
    if-nez v4, :cond_4

    .line 450
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->tickle()V

    goto :goto_0

    .line 424
    :pswitch_0
    if-eqz v0, :cond_1

    .line 425
    const/4 v2, 0x1

    .line 427
    :cond_1
    if-nez v4, :cond_4

    .line 428
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->tickle()V

    goto :goto_0

    .line 433
    :cond_2
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-eqz v5, :cond_3

    .line 435
    const/4 v1, 0x0

    return v1

    .line 439
    :cond_3
    if-nez v0, :cond_4

    .line 440
    const/4 v2, 0x1

    .line 442
    move-object v5, p1

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 443
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->hideControlsOverlay(Z)V

    .line 454
    :cond_4
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V
    .locals 1
    .param p0, "first"    # Landroid/animation/ValueAnimator;
    .param p1, "second"    # Landroid/animation/ValueAnimator;
    .param p2, "runAnimation"    # Z

    .line 634
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 636
    if-nez p2, :cond_1

    .line 637
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 640
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 641
    if-nez p2, :cond_1

    .line 642
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 645
    :cond_1
    :goto_0
    return-void
.end method

.method private setBgAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 302
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    .line 303
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 306
    :cond_0
    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    .line 731
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 732
    return-void
.end method

.method private setupPresenter()V
    .locals 4

    .line 1058
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 1059
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    .line 1060
    .local v0, "selector":Landroid/support/v17/leanback/widget/PresenterSelector;
    if-nez v0, :cond_0

    .line 1061
    new-instance v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    move-object v0, v1

    .line 1062
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    .line 1063
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    goto :goto_0

    .line 1064
    :cond_0
    instance-of v1, v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    if-eqz v1, :cond_1

    .line 1065
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    .line 1068
    .end local v0    # "selector":Landroid/support/v17/leanback/widget/PresenterSelector;
    :cond_1
    :goto_0
    return-void
.end method

.method private setupRow()V
    .locals 3

    .line 1044
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    .line 1045
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 1046
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1047
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1049
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    .line 1051
    .end local v0    # "adapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_2

    .line 1052
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 1053
    .local v0, "adapter":Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    .line 1055
    .end local v0    # "adapter":Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    :cond_2
    :goto_1
    return-void
.end method

.method private startFadeTimer()V
    .locals 4

    .line 496
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 498
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 500
    :cond_0
    return-void
.end method

.method private stopFadeTimer()V
    .locals 2

    .line 490
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 493
    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 808
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 809
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgDarkColor:I

    .line 810
    .local v0, "color":I
    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 814
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgLightColor:I

    .line 815
    goto :goto_0

    .line 812
    :pswitch_1
    goto :goto_0

    .line 817
    :pswitch_2
    const/4 v0, 0x0

    .line 820
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 821
    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setBgAlpha(I)V

    .line 823
    .end local v0    # "color":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public fadeOut()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    .line 598
    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 177
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBackgroundType()I
    .locals 1

    .line 804
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    return v0
.end method

.method public getFadeCompleteListener()Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    return-object v0
.end method

.method public getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    .line 1175
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 270
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x0

    return-object v0

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 626
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    .line 627
    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 343
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 617
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    return v0
.end method

.method public isFadingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 359
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 3

    .line 1018
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    .line 1022
    return-void
.end method

.method protected onBufferingStateChanged(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 1150
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    .line 1151
    .local v0, "progressBarManager":Landroid/support/v17/leanback/app/ProgressBarManager;
    if-eqz v0, :cond_1

    .line 1152
    if-eqz p1, :cond_0

    .line 1153
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->show()V

    goto :goto_0

    .line 1155
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->hide()V

    .line 1158
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 758
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 760
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    .line 761
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowsCenterToBottom:I

    .line 762
    nop

    .line 763
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    .line 764
    nop

    .line 765
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgDarkColor:I

    .line 766
    nop

    .line 767
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgLightColor:I

    .line 768
    nop

    .line 769
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mShowTimeMs:I

    .line 770
    nop

    .line 771
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMajorFadeTranslateY:I

    .line 772
    nop

    .line 773
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMinorFadeTranslateY:I

    .line 775
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadBgAnimator()V

    .line 776
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadControlRowAnimator()V

    .line 777
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->loadOtherRowAnimator()V

    .line 778
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 861
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_playback_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    .line 862
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->playback_fragment_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    .line 863
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 865
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsSupportFragment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 867
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    .line 868
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 871
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    .line 872
    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    goto :goto_0

    .line 874
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 876
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 877
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 879
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgAlpha:I

    .line 880
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->updateBackground()V

    .line 881
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 882
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    .line 883
    .local v0, "progressBarManager":Landroid/support/v17/leanback/app/ProgressBarManager;
    if-eqz v0, :cond_2

    .line 884
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 886
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 962
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    .line 965
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 966
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 955
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRootView:Landroid/view/View;

    .line 956
    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundView:Landroid/view/View;

    .line 957
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 958
    return-void
.end method

.method protected onError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;

    .line 1166
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 917
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 918
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    .line 920
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 926
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 927
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 471
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 473
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 475
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    .line 477
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->startFadeTimer()V

    .line 482
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    .line 483
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    .line 484
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    .line 487
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 899
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 900
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupChildFragmentLayout()V

    .line 901
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 902
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    .line 905
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 909
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    .line 912
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 913
    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 1142
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

    .line 459
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 462
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    .line 463
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    if-nez v1, :cond_0

    .line 464
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    .line 465
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 467
    :cond_0
    return-void
.end method

.method public resetFocus()V
    .locals 3
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 110
    .local v0, "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 112
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 111
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 1033
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 1034
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupRow()V

    .line 1035
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupPresenter()V

    .line 1036
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenterAlignment()V

    .line 1038
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRowsSupportFragment:Landroid/support/v17/leanback/app/RowsSupportFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsSupportFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 1041
    :cond_0
    return-void
.end method

.method public setBackgroundType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 786
    packed-switch p1, :pswitch_data_0

    .line 796
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid background type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 790
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    if-eq p1, v0, :cond_0

    .line 791
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBackgroundType:I

    .line 792
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->updateBackground()V

    .line 798
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setControlsOverlayAutoHideEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 322
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_1

    .line 323
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadingEnabled:Z

    .line 324
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 325
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    .line 326
    if-eqz p1, :cond_0

    .line 328
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->startFadeTimer()V

    goto :goto_0

    .line 331
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    .line 337
    :cond_1
    :goto_0
    return-void
.end method

.method public setFadeCompleteListener(Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 368
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackSupportFragment$OnFadeCompleteListener;

    .line 369
    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setControlsOverlayAutoHideEnabled(Z)V

    .line 352
    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0
    .param p1, "hostCallback"    # Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    .line 894
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    .line 895
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 942
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 943
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 934
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 935
    return-void
.end method

.method public final setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "handler"    # Landroid/view/View$OnKeyListener;

    .line 384
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    .line 385
    return-void
.end method

.method public setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 950
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 951
    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 0
    .param p1, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 974
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 975
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupRow()V

    .line 976
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupPresenter()V

    .line 977
    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 988
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 989
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setupPresenter()V

    .line 990
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setPlaybackRowPresenterAlignment()V

    .line 991
    return-void
.end method

.method setPlaybackRowPresenterAlignment()V
    .locals 7

    .line 994
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    .line 996
    .local v0, "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    if-eqz v0, :cond_1

    .line 997
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 998
    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 999
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1000
    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 1001
    .local v3, "itemAlignment":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    new-instance v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 1003
    .local v4, "def":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 1004
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 1005
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v4, v5, v1

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 1007
    aget-object v5, v0, v2

    const-class v6, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v5, v6, v3}, Landroid/support/v17/leanback/widget/Presenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 997
    .end local v3    # "itemAlignment":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    .end local v4    # "def":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1012
    .end local v0    # "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0
    .param p1, "client"    # Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 1109
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 1110
    return-void
.end method

.method setSeekMode(Z)V
    .locals 5
    .param p1, "inSeek"    # Z

    .line 1117
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-ne v0, p1, :cond_0

    .line 1118
    return-void

    .line 1120
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    .line 1121
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 1122
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-eqz v0, :cond_1

    .line 1123
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    .line 1126
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    .line 1127
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    .line 1128
    .local v0, "count":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1129
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1130
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1131
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mInSeek:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1128
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 716
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->setSelectedPosition(IZ)V

    .line 717
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 723
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mPosition:I

    .line 724
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    iput-boolean p2, v0, Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;->mSmooth:Z

    .line 725
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackSupportFragment$SetSelectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 728
    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 4
    .param p1, "listview"    # Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 735
    if-nez p1, :cond_0

    .line 736
    return-void

    .line 740
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 741
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 746
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 747
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 751
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingTop()I

    move-result v1

    .line 752
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mPaddingBottom:I

    .line 751
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    .line 753
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 754
    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 606
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(ZZ)V

    .line 607
    return-void
.end method

.method showControlsOverlay(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "animation"    # Z

    .line 666
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 667
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 668
    return-void

    .line 671
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 672
    const/4 p2, 0x0

    .line 674
    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-ne p1, v0, :cond_3

    .line 675
    if-nez p2, :cond_2

    .line 677
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 678
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 679
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 681
    :cond_2
    return-void

    .line 684
    :cond_3
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    .line 685
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlVisible:Z

    if-nez v0, :cond_4

    .line 687
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    .line 690
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 691
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMinorFadeTranslateY:I

    goto :goto_1

    :cond_6
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mMajorFadeTranslateY:I

    :goto_1
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mAnimationTranslateY:I

    .line 694
    if-eqz p1, :cond_7

    .line 695
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 696
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 698
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    goto :goto_2

    .line 700
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 701
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 703
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 705
    :goto_2
    if-eqz p2, :cond_9

    .line 706
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_8

    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    goto :goto_3

    :cond_8
    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 710
    :cond_9
    return-void
.end method

.method public tickle()V
    .locals 1

    .line 397
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->stopFadeTimer()V

    .line 398
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackSupportFragment;->showControlsOverlay(Z)V

    .line 399
    return-void
.end method
