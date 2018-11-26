.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;
.implements Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;,
        Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$KeyLockMode;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field private static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field private static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field private static final FINGERPRINT_ACQUIRED_TOO_SIMILAR:I = 0x3ea

.field private static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final FINISH_DELAY:I = 0xfa

.field private static final HINT_TIMEOUT_DURATION:I = 0x9c4

.field private static final ICON_TOUCH_COUNT_SHOW_UNTIL_DIALOG_SHOWN:I = 0x3

.field private static final ICON_TOUCH_DURATION_UNTIL_DIALOG_SHOWN:J = 0x1f4L

.field private static final PAUSE_ENROLL_STATE:I = 0x9

.field private static final PROGRESS_BAR_MAX:I = 0x2710

.field private static final RESUME_ENROLL_STATE:I = 0x8

.field private static final RESUME_ENROLL_STATE_FOR_FINISH:I = 0xa

.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollEnrolling"

.field static final TAG_SIDECAR:Ljava/lang/String; = "sidecar"

.field private static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field callFingerprintServiceRunnable:Ljava/lang/Runnable;

.field private mAnimationCancelled:Z

.field private mConfirmCompleted:Z

.field private mCurrentProgress:I

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

.field private mEnrollState:I

.field private mEnrollSuccessCount:I

.field private mEnrollingAnim:Landroid/view/View;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mHasInputCompleted:Z

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mIconTouchCount:I

.field private mIndicatorBackgroundActivatedColor:I

.field private mIndicatorBackgroundRestingColor:I

.field private mIsEnrollPaused:Z

.field private mLaunchingFinish:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field protected mNeedHideNavBar:Z

.field private mNeedJumpToFingerprintSettings:Z

.field private mNextButton:Landroid/widget/Button;

.field protected mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

.field private mOnBackPress:Z

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private mScreenNavBarEnabled:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

.field protected mStartMessage:Landroid/widget/TextView;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mValidEnroll:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockUseRunnable:Ljava/lang/Runnable;

.field overlayLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNeedHideNavBar:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNeedJumpToFingerprintSettings:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    iput v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$9;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$10;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$11;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$11;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$12;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$13;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$13;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Lcom/airbnb/lottie/LottieAnimationView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/16 v1, 0x1a

    const-string v2, "FingerprintEnrollEnrolling"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private animateFlash()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundRestingColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIndicatorBackgroundActivatedColor:I

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateProgress(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const-string v1, "progress"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private changeEnrollStateByFocusChanged(Z)V
    .locals 5

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/16 v1, 0x9

    :goto_0
    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    const-string v2, "FingerprintEnrollEnrolling"

    const-string v3, "changeEnrollStateByFocusChanged "

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "FingerprintEnrollEnrolling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method

.method private clearError()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintEnrollEnrolling$aLk12WuaBTV2piitP3fdnB0w-eM;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private delayCallFingerprintService()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private disableRecentAndHomeKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1200000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private disableRecentKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private enableRecentAndHomeKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private enableRecentKey()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_0
    return-void
.end method

.method private enrollAnimMatchDifferentDpi()V
    .locals 5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhuyang--fingerprint:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const v1, 0x7f0a01f0

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollingAnim:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollingAnim:Landroid/view/View;

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x1a4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_navigation_bar_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v2, 0x1e0

    if-le v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_navigation_bar_type"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_2

    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollingAnim:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private fadeIn(Landroid/view/View;)V
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private fadeOut(Landroid/view/View;)V
    .locals 3

    const-string v0, "alpha"

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getHeadView()Landroid/widget/TextView;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-object v0
.end method

.method private getProgress(II)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    mul-int/2addr v1, v0

    add-int/lit8 v2, p1, 0x1

    div-int/2addr v1, v2

    return v1
.end method

.method private initFingerPrintEnrollView()V
    .locals 2

    const v0, 0x7f0a03a7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getHeadView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTitleView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setSubTitleView(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideHeaderView()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setOnOPFingerComfirmListener(Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView$OnOPFingerComfirmListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    :cond_0
    const v0, 0x10c000f

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public static synthetic lambda$clearError$0(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private launchFinish([B)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->set1(Landroid/content/Context;I)I

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "prox_wake_enabled"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v2, "pick_up_phone_show"

    invoke-static {v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "doze_enabled"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x26000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string v1, "needJumpToFingerprintSettings"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNeedJumpToFingerprintSettings:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->startActivity(Landroid/content/Intent;)V

    const v1, 0x7f01004e

    const v2, 0x7f01004f

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    return-void
.end method

.method private pauseEnroll()V
    .locals 5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->fadeOut(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v1, 0x9

    :try_start_0
    invoke-interface {v0, v1}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    const-string v1, "FingerprintEnrollEnrolling"

    const-string v2, "pauseEnroll "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintEnrollEnrolling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method private resumeEnroll(ZI)V
    .locals 5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->fadeIn(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->fadeOut(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showContinueView()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1

    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/fingerprint/IFingerprintService;->updateStatus(I)I

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollState:I

    const-string v1, "FingerprintEnrollEnrolling"

    const-string v2, "resumeEnroll "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintEnrollEnrolling"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 3

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    move v0, v2

    if-eq p1, v0, :cond_2

    nop

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_fingerprint_enrolling"

    nop

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method private showContinueView()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07012e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 3

    invoke-static {p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showIconTouchDialog()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showScreenNavBar(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "buttons_show_on_screen_navkeys"

    nop

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private startIconAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    return-void
.end method

.method private updateDescription()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const v0, 0x7f120fcd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f120fca

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(IZ)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateProgress(ZII)V
    .locals 8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    add-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, p3

    const/16 v3, 0x64

    mul-int/2addr v1, v3

    add-int/lit8 v4, p2, 0x1

    div-int/2addr v1, v4

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    const/4 v5, 0x0

    if-le v1, v4, :cond_1

    if-gt p3, p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    iget v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-virtual {v4, v6, v1, v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    add-int/2addr v6, v2

    invoke-virtual {v4, v6, v1, v5}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->doRecognition(IIZ)V

    :goto_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->getFingerprintScaleAnimStep(Landroid/content/Context;)I

    move-result v4

    iget v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    if-ne v6, v4, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->pauseEnroll()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setTipsContinueContent()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showContinueView()V

    goto :goto_1

    :cond_2
    if-eq p2, v0, :cond_3

    if-nez p3, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "oneplus--setTipsCompletedContent"

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-lt v1, v3, :cond_4

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0xfa

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->acquireWakeLock()V

    :cond_6
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mWakeLockUseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "screen_off_timeout"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public disableAllKey()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    :cond_0
    return-void
.end method

.method public enableAllKey()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mLaunchingFinish:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setFingerprintEnrolling(Z)V

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showScreenNavBar(Z)V

    :cond_1
    return-void
.end method

.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf0

    return v0
.end method

.method public onBackPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    :cond_0
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a035d

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a04f6

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->resumeEnroll(ZI)V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f13014d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isInMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const v0, 0x7f120aa0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "needJumpToFingerprintSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNeedJumpToFingerprintSettings:Z

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v3, 0x7f120a42

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    if-eq v3, v4, :cond_4

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    :goto_0
    goto :goto_1

    :cond_4
    const v3, 0x7f0d0154

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    if-eq v3, v4, :cond_6

    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->overlayLayoutId:I

    goto :goto_0

    :cond_6
    const v3, 0x7f0d0148

    goto :goto_0

    :cond_7
    const v3, 0x7f0d0093

    :goto_1
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enrollAnimMatchDifferentDpi()V

    const v4, 0x7f120fca

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setHeaderText(I)V

    const v4, 0x7f0a0512

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    const v4, 0x7f0a0474

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    const v4, 0x7f0a01d6

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const-class v4, Landroid/os/Vibrator;

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v4

    if-eqz v4, :cond_8

    const v4, 0x7f0a035d

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNextButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    const v4, 0x7f0a03a6

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v4, v2}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    :cond_8
    const v4, 0x7f0a04f6

    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_9

    move v5, v2

    goto :goto_2

    :cond_9
    move v5, v1

    :goto_2
    iput-boolean v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->initFingerPrintEnrollView()V

    const-string v5, "statusbar"

    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/StatusBarManager;

    iput-object v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mStatusBarManager:Landroid/app/StatusBarManager;

    nop

    nop

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "buttons_show_on_screen_navkeys"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_a

    move v1, v2

    nop

    :cond_a
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mScreenNavBarEnabled:Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mNeedHideNavBar:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableAllKey()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableRecentAndHomeKey()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableRecentKey()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableAllKey()V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEdgeEnrollAnimView:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_3
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onDestroy()V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "FingerprintEnrollEnrolling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errMsgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const v0, 0x7f120b0d

    goto :goto_0

    :cond_0
    const v0, 0x7f120fb9

    nop

    :goto_0
    nop

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 5

    const-string v0, "FingerprintEnrollEnrolling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentHelp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " helpMsgId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->setEnrollAnimVisibility(Z)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const v2, 0x7f120b13

    const/16 v3, 0x44c

    const/16 v4, 0x3ea

    if-nez v0, :cond_2

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const v0, 0x7f120cb9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    const-string v0, "FingerprintEnrollEnrolling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FINGERPRINT_ACQUIRED_TOO_SIMILAR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eq p1, v1, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f120cb9

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    const v0, 0x7f120b12

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_6
    const v0, 0x7f120b10

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_7
    const v0, 0x7f120b11

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 3

    const-string v0, "FingerprintEnrollEnrolling"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentProgressChange--mValidEnroll:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mValidEnroll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " steps:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " remaining:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->updateProgress(ZII)V

    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onEnterAnimationComplete()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return-void
.end method

.method public onOPFingerComfirmClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v1, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    return v0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onPause()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mCurrentProgress:I

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mEnrollSuccessCount:I

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableRecentAndHomeKey()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableRecentKey()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->enableAllKey()V

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->releaseWakeLock()V

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->hideWarningTips()V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->resumeEnroll(ZI)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->finish()V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->disableRecentAndHomeKey()V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->disableRecentKey()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->disableAllKey()V

    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOPFingerPrintEnrollView:Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEnrollView;->resetWithoutAnimation()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHasInputCompleted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mConfirmCompleted:Z

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mOnBackPress:Z

    return-void
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStart()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->delayCallFingerprintService()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStop()V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->callFingerprintServiceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onWindowFocusChanged(Z)V

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->mIsEnrollPaused:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;->changeEnrollStateByFocusChanged(Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
