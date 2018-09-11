.class public Landroid/support/v17/leanback/app/PlaybackFragment;
.super Landroid/app/Fragment;
.source "PlaybackFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;,
        Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
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

.field private static final TAG:Ljava/lang/String; = "PlaybackFragment"


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

.field mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

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

.field mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

.field mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

.field private final mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

.field mShowTimeMs:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 272
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 105
    new-instance v0, Landroid/support/v17/leanback/app/ProgressBarManager;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    .line 146
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$1;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$1;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 165
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$2;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$2;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 179
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/support/v17/leanback/app/PlaybackFragment$1;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    .line 215
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    .line 223
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    .line 224
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 225
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    .line 231
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$3;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$3;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    .line 283
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$4;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$4;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    .line 292
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$5;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$5;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    .line 300
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$6;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$6;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    .line 533
    new-instance v0, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogDecelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 534
    new-instance v0, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;

    invoke-direct {v0, v2, v1}, Landroid/support/v17/leanback/animation/LogAccelerateInterpolator;-><init>(II)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    .line 832
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$10;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$10;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    .line 1077
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$11;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$11;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mChainedClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 273
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/app/ProgressBarManager;->setInitialDelay(J)V

    .line 274
    return-void
.end method

.method static synthetic access$100(Landroid/support/v17/leanback/app/PlaybackFragment;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackFragment;
    .param p1, "x1"    # Z

    .line 89
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->enableVerticalGridAnimations(Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v17/leanback/app/PlaybackFragment;Landroid/view/InputEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackFragment;
    .param p1, "x1"    # Landroid/view/InputEvent;

    .line 89
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->onInterceptInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/support/v17/leanback/app/PlaybackFragment;I)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v17/leanback/app/PlaybackFragment;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setBgAlpha(I)V

    return-void
.end method

.method private enableVerticalGridAnimations(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 316
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setAnimateChildLayout(Z)V

    .line 319
    :cond_0
    return-void
.end method

.method static endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p0, "first"    # Landroid/animation/ValueAnimator;
    .param p1, "second"    # Landroid/animation/ValueAnimator;

    .line 658
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 659
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 660
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 663
    :cond_1
    :goto_0
    return-void
.end method

.method private static loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 510
    invoke-static {p0, p1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 511
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 512
    return-object v0
.end method

.method private loadBgAnimator()V
    .locals 4

    .line 516
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$7;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$7;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 523
    .local v0, "listener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 524
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 525
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 526
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 528
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_bg_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 529
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 530
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 531
    return-void
.end method

.method private loadControlRowAnimator()V
    .locals 4

    .line 537
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$8;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$8;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 558
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 559
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 560
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 561
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 563
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 565
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 566
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogAccelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 567
    return-void
.end method

.method private loadOtherRowAnimator()V
    .locals 4

    .line 570
    new-instance v0, Landroid/support/v17/leanback/app/PlaybackFragment$9;

    invoke-direct {v0, p0}, Landroid/support/v17/leanback/app/PlaybackFragment$9;-><init>(Landroid/support/v17/leanback/app/PlaybackFragment;)V

    .line 588
    .local v0, "updateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    invoke-static {p0}, Landroid/support/v17/leanback/app/FragmentUtil;->getContext(Landroid/app/Fragment;)Landroid/content/Context;

    move-result-object v1

    .line 589
    .local v1, "context":Landroid/content/Context;
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_in:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    .line 590
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 591
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mLogDecelerateInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 593
    sget v2, Landroid/support/v17/leanback/R$animator;->lb_playback_controls_fade_out:I

    invoke-static {v1, v2}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadAnimator(Landroid/content/Context;I)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 594
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 595
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 596
    return-void
.end method

.method private onInterceptInputEvent(Landroid/view/InputEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 409
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 411
    .local v0, "controlsHidden":Z
    const/4 v2, 0x0

    .line 412
    .local v2, "consumeEvent":Z
    const/4 v3, 0x0

    .line 413
    .local v3, "keyCode":I
    const/4 v4, 0x0

    .line 415
    .local v4, "keyAction":I
    instance-of v5, p1, Landroid/view/KeyEvent;

    if-eqz v5, :cond_0

    .line 416
    move-object v5, p1

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 417
    move-object v5, p1

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    .line 418
    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    if-eqz v5, :cond_0

    .line 419
    iget-object v5, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v6

    move-object v7, p1

    check-cast v7, Landroid/view/KeyEvent;

    invoke-interface {v5, v6, v3, v7}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 423
    :cond_0
    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/16 v5, 0x6f

    if-eq v3, v5, :cond_2

    packed-switch v3, :pswitch_data_0

    .line 455
    if-eqz v2, :cond_4

    .line 456
    if-nez v4, :cond_4

    .line 457
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->tickle()V

    goto :goto_0

    .line 431
    :pswitch_0
    if-eqz v0, :cond_1

    .line 432
    const/4 v2, 0x1

    .line 434
    :cond_1
    if-nez v4, :cond_4

    .line 435
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->tickle()V

    goto :goto_0

    .line 440
    :cond_2
    iget-boolean v5, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v5, :cond_3

    .line 442
    const/4 v1, 0x0

    return v1

    .line 446
    :cond_3
    if-nez v0, :cond_4

    .line 447
    const/4 v2, 0x1

    .line 449
    move-object v5, p1

    check-cast v5, Landroid/view/KeyEvent;

    invoke-virtual {v5}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 450
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->hideControlsOverlay(Z)V

    .line 461
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

    .line 641
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 643
    if-nez p2, :cond_1

    .line 644
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    goto :goto_0

    .line 647
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 648
    if-nez p2, :cond_1

    .line 649
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->end()V

    .line 652
    :cond_1
    :goto_0
    return-void
.end method

.method private setBgAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .line 309
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    .line 310
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 313
    :cond_0
    return-void
.end method

.method private setupChildFragmentLayout()V
    .locals 1

    .line 738
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V

    .line 739
    return-void
.end method

.method private setupPresenter()V
    .locals 4

    .line 1065
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v0, :cond_1

    .line 1066
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    .line 1067
    .local v0, "selector":Landroid/support/v17/leanback/widget/PresenterSelector;
    if-nez v0, :cond_0

    .line 1068
    new-instance v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    move-object v0, v1

    .line 1069
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    .line 1070
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->setPresenterSelector(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    goto :goto_0

    .line 1071
    :cond_0
    instance-of v1, v0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    if-eqz v1, :cond_1

    .line 1072
    move-object v1, v0

    check-cast v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    invoke-virtual {v1, v2, v3}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    .line 1075
    .end local v0    # "selector":Landroid/support/v17/leanback/widget/PresenterSelector;
    :cond_1
    :goto_0
    return-void
.end method

.method private setupRow()V
    .locals 3

    .line 1051
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_1

    .line 1052
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    .line 1053
    .local v0, "adapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 1054
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 1056
    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;->replace(ILjava/lang/Object;)V

    .line 1058
    .end local v0    # "adapter":Landroid/support/v17/leanback/widget/ArrayObjectAdapter;
    :goto_0
    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    instance-of v0, v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    if-eqz v0, :cond_2

    .line 1059
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    check-cast v0, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;

    .line 1060
    .local v0, "adapter":Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;->set(ILjava/lang/Object;)V

    .line 1062
    .end local v0    # "adapter":Landroid/support/v17/leanback/widget/SparseArrayObjectAdapter;
    :cond_2
    :goto_1
    return-void
.end method

.method private startFadeTimer()V
    .locals 4

    .line 503
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 505
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    iget v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mShowTimeMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 507
    :cond_0
    return-void
.end method

.method private stopFadeTimer()V
    .locals 2

    .line 497
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 500
    :cond_0
    return-void
.end method

.method private updateBackground()V
    .locals 3

    .line 815
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 816
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgDarkColor:I

    .line 817
    .local v0, "color":I
    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 821
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgLightColor:I

    .line 822
    goto :goto_0

    .line 819
    :pswitch_1
    goto :goto_0

    .line 824
    :pswitch_2
    const/4 v0, 0x0

    .line 827
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 828
    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setBgAlpha(I)V

    .line 830
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

    .line 604
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    .line 605
    return-void
.end method

.method public getAdapter()Landroid/support/v17/leanback/widget/ObjectAdapter;
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    return-object v0
.end method

.method public getBackgroundType()I
    .locals 1

    .line 811
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    return v0
.end method

.method public getFadeCompleteListener()Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    return-object v0
.end method

.method public getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;
    .locals 1

    .line 1182
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mProgressBarManager:Landroid/support/v17/leanback/app/ProgressBarManager;

    return-object v0
.end method

.method getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;
    .locals 1

    .line 277
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    return-object v0

    .line 280
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/RowsFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    return-object v0
.end method

.method public hideControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 633
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    .line 634
    return-void
.end method

.method public isControlsOverlayAutoHideEnabled()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    return v0
.end method

.method public isControlsOverlayVisible()Z
    .locals 1

    .line 624
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    return v0
.end method

.method public isFadingEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isControlsOverlayAutoHideEnabled()Z

    move-result v0

    return v0
.end method

.method public notifyPlaybackRowChanged()V
    .locals 3

    .line 1025
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_0

    .line 1026
    return-void

    .line 1028
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/ObjectAdapter;->notifyItemRangeChanged(II)V

    .line 1029
    return-void
.end method

.method protected onBufferingStateChanged(Z)V
    .locals 1
    .param p1, "start"    # Z

    .line 1157
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    .line 1158
    .local v0, "progressBarManager":Landroid/support/v17/leanback/app/ProgressBarManager;
    if-eqz v0, :cond_1

    .line 1159
    if-eqz p1, :cond_0

    .line 1160
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->show()V

    goto :goto_0

    .line 1162
    :cond_0
    invoke-virtual {v0}, Landroid/support/v17/leanback/app/ProgressBarManager;->hide()V

    .line 1165
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 765
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 767
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_other_rows_center_to_bottom:I

    .line 768
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowsCenterToBottom:I

    .line 769
    nop

    .line 770
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_controls_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    .line 771
    nop

    .line 772
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgDarkColor:I

    .line 773
    nop

    .line 774
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$color;->lb_playback_controls_background_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgLightColor:I

    .line 775
    nop

    .line 776
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$integer;->lb_playback_controls_show_time_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mShowTimeMs:I

    .line 777
    nop

    .line 778
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_major_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMajorFadeTranslateY:I

    .line 779
    nop

    .line 780
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$dimen;->lb_playback_minor_fade_translate_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMinorFadeTranslateY:I

    .line 782
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadBgAnimator()V

    .line 783
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadControlRowAnimator()V

    .line 784
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->loadOtherRowAnimator()V

    .line 785
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 868
    sget v0, Landroid/support/v17/leanback/R$layout;->lb_playback_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    .line 869
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    sget v1, Landroid/support/v17/leanback/R$id;->playback_fragment_background:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    .line 870
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/app/RowsFragment;

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 872
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-nez v0, :cond_0

    .line 873
    new-instance v0, Landroid/support/v17/leanback/app/RowsFragment;

    invoke-direct {v0}, Landroid/support/v17/leanback/app/RowsFragment;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 874
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/R$id;->playback_controls_dock:I

    iget-object v2, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    .line 875
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 876
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 878
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-nez v0, :cond_1

    .line 879
    new-instance v0, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;

    new-instance v1, Landroid/support/v17/leanback/widget/ClassPresenterSelector;

    invoke-direct {v1}, Landroid/support/v17/leanback/widget/ClassPresenterSelector;-><init>()V

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/ArrayObjectAdapter;-><init>(Landroid/support/v17/leanback/widget/PresenterSelector;)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    goto :goto_0

    .line 881
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 883
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V

    .line 884
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnItemViewClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V

    .line 886
    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgAlpha:I

    .line 887
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->updateBackground()V

    .line 888
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapterListener:Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setExternalAdapterListener(Landroid/support/v17/leanback/widget/ItemBridgeAdapter$AdapterListener;)V

    .line 889
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getProgressBarManager()Landroid/support/v17/leanback/app/ProgressBarManager;

    move-result-object v0

    .line 890
    .local v0, "progressBarManager":Landroid/support/v17/leanback/app/ProgressBarManager;
    if-eqz v0, :cond_2

    .line 891
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/ProgressBarManager;->setRootView(Landroid/view/ViewGroup;)V

    .line 893
    :cond_2
    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .line 969
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 970
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostDestroy()V

    .line 972
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 973
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 962
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRootView:Landroid/view/View;

    .line 963
    iput-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundView:Landroid/view/View;

    .line 964
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 965
    return-void
.end method

.method protected onError(ILjava/lang/CharSequence;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "errorMessage"    # Ljava/lang/CharSequence;

    .line 1173
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 924
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostPause()V

    .line 927
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 929
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 933
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 934
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 478
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 480
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-eqz v0, :cond_0

    .line 482
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eqz v0, :cond_0

    .line 484
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->startFadeTimer()V

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnTouchInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnTouchInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnTouchInterceptListener;)V

    .line 490
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOnKeyInterceptListener:Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setOnKeyInterceptListener(Landroid/support/v17/leanback/widget/BaseGridView$OnKeyInterceptListener;)V

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_1

    .line 492
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostResume()V

    .line 494
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 906
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 907
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupChildFragmentLayout()V

    .line 908
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 909
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 910
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStart()V

    .line 912
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 916
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    invoke-virtual {v0}, Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;->onHostStop()V

    .line 919
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 920
    return-void
.end method

.method protected onVideoSizeChanged(II)V
    .locals 0
    .param p1, "videoWidth"    # I
    .param p2, "videoHeight"    # I

    .line 1149
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

    .line 466
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 469
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    .line 470
    iget-boolean v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    if-nez v1, :cond_0

    .line 471
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    .line 472
    iput-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 474
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

    .line 113
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;

    .line 115
    .local v0, "vh":Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    instance-of v1, v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getPresenter()Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 117
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ItemBridgeAdapter$ViewHolder;->getViewHolder()Landroid/support/v17/leanback/widget/Presenter$ViewHolder;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;

    .line 116
    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;->onReappear(Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;)V

    .line 119
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 1040
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    .line 1041
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupRow()V

    .line 1042
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    .line 1043
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenterAlignment()V

    .line 1045
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    if-eqz v0, :cond_0

    .line 1046
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRowsFragment:Landroid/support/v17/leanback/app/RowsFragment;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/app/RowsFragment;->setAdapter(Landroid/support/v17/leanback/widget/ObjectAdapter;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public setBackgroundType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 793
    packed-switch p1, :pswitch_data_0

    .line 803
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid background type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :pswitch_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    if-eq p1, v0, :cond_0

    .line 798
    iput p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBackgroundType:I

    .line 799
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->updateBackground()V

    .line 805
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

    .line 329
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    if-eq p1, v0, :cond_1

    .line 330
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadingEnabled:Z

    .line 331
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    .line 333
    if-eqz p1, :cond_0

    .line 335
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->startFadeTimer()V

    goto :goto_0

    .line 338
    :cond_0
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    .line 344
    :cond_1
    :goto_0
    return-void
.end method

.method public setFadeCompleteListener(Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 375
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mFadeCompleteListener:Landroid/support/v17/leanback/app/PlaybackFragment$OnFadeCompleteListener;

    .line 376
    return-void
.end method

.method public setFadingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->setControlsOverlayAutoHideEnabled(Z)V

    .line 359
    return-void
.end method

.method public setHostCallback(Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;)V
    .locals 0
    .param p1, "hostCallback"    # Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    .line 901
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mHostCallback:Landroid/support/v17/leanback/media/PlaybackGlueHost$HostCallback;

    .line 902
    return-void
.end method

.method public setOnItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 949
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mExternalItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 950
    return-void
.end method

.method public setOnItemViewSelectedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 941
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mExternalItemSelectedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewSelectedListener;

    .line 942
    return-void
.end method

.method public final setOnKeyInterceptListener(Landroid/view/View$OnKeyListener;)V
    .locals 0
    .param p1, "handler"    # Landroid/view/View$OnKeyListener;

    .line 391
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInputEventHandler:Landroid/view/View$OnKeyListener;

    .line 392
    return-void
.end method

.method public setOnPlaybackItemViewClickedListener(Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 957
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPlaybackItemClickedListener:Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    .line 958
    return-void
.end method

.method public setPlaybackRow(Landroid/support/v17/leanback/widget/Row;)V
    .locals 0
    .param p1, "row"    # Landroid/support/v17/leanback/widget/Row;

    .line 981
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mRow:Landroid/support/v17/leanback/widget/Row;

    .line 982
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupRow()V

    .line 983
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    .line 984
    return-void
.end method

.method public setPlaybackRowPresenter(Landroid/support/v17/leanback/widget/PlaybackRowPresenter;)V
    .locals 0
    .param p1, "presenter"    # Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 995
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPresenter:Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    .line 996
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setupPresenter()V

    .line 997
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setPlaybackRowPresenterAlignment()V

    .line 998
    return-void
.end method

.method setPlaybackRowPresenterAlignment()V
    .locals 7

    .line 1001
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1002
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAdapter:Landroid/support/v17/leanback/widget/ObjectAdapter;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/ObjectAdapter;->getPresenterSelector()Landroid/support/v17/leanback/widget/PresenterSelector;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    .line 1003
    .local v0, "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    if-eqz v0, :cond_1

    .line 1004
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 1005
    aget-object v3, v0, v2

    instance-of v3, v3, Landroid/support/v17/leanback/widget/PlaybackRowPresenter;

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    const-class v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    .line 1006
    invoke-virtual {v3, v4}, Landroid/support/v17/leanback/widget/Presenter;->getFacet(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1007
    new-instance v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-direct {v3}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;-><init>()V

    .line 1008
    .local v3, "itemAlignment":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    new-instance v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;-><init>()V

    .line 1010
    .local v4, "def":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffset(I)V

    .line 1011
    const/high16 v5, 0x42c80000    # 100.0f

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->setItemAlignmentOffsetPercent(F)V

    .line 1012
    const/4 v5, 0x1

    new-array v5, v5, [Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;

    aput-object v4, v5, v1

    invoke-virtual {v3, v5}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;->setAlignmentDefs([Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;)V

    .line 1014
    aget-object v5, v0, v2

    const-class v6, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v5, v6, v3}, Landroid/support/v17/leanback/widget/Presenter;->setFacet(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1004
    .end local v3    # "itemAlignment":Landroid/support/v17/leanback/widget/ItemAlignmentFacet;
    .end local v4    # "def":Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1019
    .end local v0    # "presenters":[Landroid/support/v17/leanback/widget/Presenter;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public setPlaybackSeekUiClient(Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;)V
    .locals 0
    .param p1, "client"    # Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 1116
    iput-object p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSeekUiClient:Landroid/support/v17/leanback/widget/PlaybackSeekUi$Client;

    .line 1117
    return-void
.end method

.method setSeekMode(Z)V
    .locals 5
    .param p1, "inSeek"    # Z

    .line 1124
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-ne v0, p1, :cond_0

    .line 1125
    return-void

    .line 1127
    :cond_0
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    .line 1128
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/VerticalGridView;->setSelectedPosition(I)V

    .line 1129
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v0, :cond_1

    .line 1130
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    .line 1133
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    .line 1134
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildCount()I

    move-result v0

    .line 1135
    .local v0, "count":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 1136
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1137
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    if-lez v4, :cond_3

    .line 1138
    iget-boolean v4, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mInSeek:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x4

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1135
    .end local v3    # "view":Landroid/view/View;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1141
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .line 723
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->setSelectedPosition(IZ)V

    .line 724
    return-void
.end method

.method public setSelectedPosition(IZ)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .line 730
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    iput p1, v0, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;->mPosition:I

    .line 731
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    iput-boolean p2, v0, Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;->mSmooth:Z

    .line 732
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mSetSelectionRunnable:Landroid/support/v17/leanback/app/PlaybackFragment$SetSelectionRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 735
    :cond_0
    return-void
.end method

.method setVerticalGridViewLayout(Landroid/support/v17/leanback/widget/VerticalGridView;)V
    .locals 4
    .param p1, "listview"    # Landroid/support/v17/leanback/widget/VerticalGridView;

    .line 742
    if-nez p1, :cond_0

    .line 743
    return-void

    .line 747
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    neg-int v0, v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffset(I)V

    .line 748
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignmentOffsetPercent(F)V

    .line 753
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowsCenterToBottom:I

    iget v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffset(I)V

    .line 754
    const/high16 v0, 0x42480000    # 50.0f

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setItemAlignmentOffsetPercent(F)V

    .line 758
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingTop()I

    move-result v1

    .line 759
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/VerticalGridView;->getPaddingRight()I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mPaddingBottom:I

    .line 758
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/support/v17/leanback/widget/VerticalGridView;->setPadding(IIII)V

    .line 760
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->setWindowAlignment(I)V

    .line 761
    return-void
.end method

.method public showControlsOverlay(Z)V
    .locals 1
    .param p1, "runAnimation"    # Z

    .line 613
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(ZZ)V

    .line 614
    return-void
.end method

.method showControlsOverlay(ZZ)V
    .locals 2
    .param p1, "show"    # Z
    .param p2, "animation"    # Z

    .line 673
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 674
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisibleBeforeOnCreateView:Z

    .line 675
    return-void

    .line 678
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    const/4 p2, 0x0

    .line 681
    :cond_1
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-ne p1, v0, :cond_3

    .line 682
    if-nez p2, :cond_2

    .line 684
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 685
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 686
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->endAll(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    .line 688
    :cond_2
    return-void

    .line 691
    :cond_3
    iput-boolean p1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    .line 692
    iget-boolean v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlVisible:Z

    if-nez v0, :cond_4

    .line 694
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    .line 697
    :cond_4
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 698
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getVerticalGridView()Landroid/support/v17/leanback/widget/VerticalGridView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMinorFadeTranslateY:I

    goto :goto_1

    :cond_6
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mMajorFadeTranslateY:I

    :goto_1
    iput v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mAnimationTranslateY:I

    .line 701
    if-eqz p1, :cond_7

    .line 702
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 703
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 705
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    goto :goto_2

    .line 707
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mBgFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 708
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mControlRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 710
    iget-object v0, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Landroid/support/v17/leanback/app/PlaybackFragment;->mOtherRowFadeOutAnimator:Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p2}, Landroid/support/v17/leanback/app/PlaybackFragment;->reverseFirstOrStartSecond(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Z)V

    .line 712
    :goto_2
    if-eqz p2, :cond_9

    .line 713
    invoke-virtual {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_8

    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_shown:I

    goto :goto_3

    :cond_8
    sget v1, Landroid/support/v17/leanback/R$string;->lb_playback_controls_hidden:I

    :goto_3
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/app/PlaybackFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 717
    :cond_9
    return-void
.end method

.method public tickle()V
    .locals 1

    .line 404
    invoke-direct {p0}, Landroid/support/v17/leanback/app/PlaybackFragment;->stopFadeTimer()V

    .line 405
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/app/PlaybackFragment;->showControlsOverlay(Z)V

    .line 406
    return-void
.end method
