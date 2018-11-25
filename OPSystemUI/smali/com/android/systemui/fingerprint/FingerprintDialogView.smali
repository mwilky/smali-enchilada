.class public Lcom/android/systemui/fingerprint/FingerprintDialogView;
.super Landroid/widget/LinearLayout;
.source "FingerprintDialogView.java"


# instance fields
.field private final OP_DISPLAY_AOD_MODE:I

.field private final OP_DISPLAY_APPLY_HIDE_AOD:I

.field private final OP_DISPLAY_NOTIFY_PRESS:I

.field private final OP_DISPLAY_SET_DIM:I

.field private WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

.field private WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

.field private mAnimatingAway:Z

.field private final mAnimationTranslationOffset:F

.field private mAodIndicationTextView:Landroid/widget/TextView;

.field private mAodMode:I

.field private mBundle:Landroid/os/Bundle;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mDeviceInteractive:Z

.field private final mDialog:Landroid/widget/LinearLayout;

.field private mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

.field private mDimLayout:Landroid/view/ViewGroup;

.field private mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDimOnWindow:Z

.field private mDimView:Landroid/widget/ImageView;

.field private mDisplayOverLayOn:Z

.field private final mDisplayWidth:F

.field private final mErrorColor:I

.field private final mErrorText:Landroid/widget/TextView;

.field private mFaceUnlocked:Z

.field private final mFingerprintColor:I

.field private mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

.field private mGoingToSleep:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

.field private mIsKeyguardDone:Z

.field private mIsScreenOn:Z

.field private mIsScreenTurningOn:Z

.field private mLastState:I

.field private mLayout:Landroid/view/ViewGroup;

.field private final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOwnerString:Ljava/lang/String;

.field private mPm:Landroid/os/PowerManager;

.field private mPressTimeoutRunnable:Ljava/lang/Runnable;

.field private mPressedLayout:Landroid/view/ViewGroup;

.field private mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mScreenOffAuthenticating:Z

.field private mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private final mShowAnimationRunnable:Ljava/lang/Runnable;

.field private mShowDefaultDialog:Z

.field private mShowOnWindow:Z

.field private mShowingKeyguard:Z

.field private mShowingPressed:Z

.field private mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mSurfaceFlinger:Landroid/os/IBinder;

.field private final mTextColor:I

.field private mTransparentIconView:Landroid/view/View;

.field private final mUpdateIconRunnable:Ljava/lang/Runnable;

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mWasForceRemoved:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field private final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ZLcom/android/systemui/fingerprint/FingerprintDialogImpl;)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_AOD_MODE:I

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_NOTIFY_PRESS:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_SET_DIM:I

    const/16 v0, 0xb

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->OP_DISPLAY_APPLY_HIDE_AOD:I

    const-string v0, "OPFingerprintView"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    const-string v0, "OPFingerprintVDDim"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    const-string v0, "OPFingerprintVDpressed"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayOverLayOn:Z

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$6;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$7;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v3, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$8;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    iput-boolean p3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    iput-object p4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    sget-object v3, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    const-string/jumbo v3, "window"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    nop

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    nop

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    nop

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0601b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFingerprintColor:I

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    iput v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    iget-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v5, :cond_0

    const v5, 0x7f0d0068

    goto :goto_0

    :cond_0
    const v5, 0x7f0d0133

    :goto_0
    invoke-virtual {v4, v5, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0d0130

    invoke-virtual {v4, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0d0131

    invoke-virtual {v4, v5, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSurfaceFlinger:Landroid/os/IBinder;

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02d2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02d6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconFlash:Lcom/android/systemui/fingerprint/CircleImageView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02d5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02d4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/CircleImageView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a02c2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    :cond_1
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getStatusBarKeyguardViewManager()Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a010f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0134

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$2;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a03c9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a0215

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v6, 0x7f0a0356

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v7, 0x7f0a009e

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v8, 0x7f0a009d

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    invoke-direct {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDismissesDialog(Landroid/view/View;)V

    new-instance v8, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$AY1LbNSslwKOa0l3N4uHVqoK1i4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v8, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;

    invoke-direct {v8, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wK2wxIkjVyYpIRuSqdrv9YicRNI;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintDialogView(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenTurningOn:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintDialogImpl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/CircleImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    return p1
.end method

.method static synthetic access$1702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFPIndicationText()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayHideAod(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2502(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateIconRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FingerprintDialogView;)F
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FingerprintDialogView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/systemui/fingerprint/FingerprintDialogView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    return p1
.end method

.method private getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    const v0, 0x7f080211

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    const v0, 0x7f080211

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    if-ne p2, v0, :cond_2

    const v0, 0x7f080210

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    const v0, 0x7f080210

    goto :goto_0

    :goto_1
    nop

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x901

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x900

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x902

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_2
    :goto_0
    const v1, 0x1000518

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, -0x2

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x1

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v5, 0x11

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    if-nez v3, :cond_4

    const-string v5, "com.oneplus.applocker"

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    move v2, v4

    :goto_2
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const v2, 0x50d0013

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    const-string v2, "FingerprintDialogView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomLayoutParams owner:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " title:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSystemUiVisibility()I

    move-result v2

    or-int/lit16 v2, v2, 0x402

    invoke-virtual {p0, v2}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setSystemUiVisibility(I)V

    return-object v0
.end method

.method private getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_DIM_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_HIGH_LIGHT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method private isKeyguard(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "forceShow-keyguard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static synthetic lambda$setDismissesDialog$2(Lcom/android/systemui/fingerprint/FingerprintDialogView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return v1
.end method

.method public static synthetic lambda$setDisplayAodMode$3(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4

    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set aod mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodMode:I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayDimMode$4(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4

    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set dim mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xa

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimOnWindow:Z

    const-string v1, "FingerPrintMode"

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string v1, "FingerPrintMode"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static synthetic lambda$setDisplayHideAod$6(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 4

    :try_start_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set hide aod mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0xb

    invoke-interface {v0, v1, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static synthetic lambda$setDisplayPressMode$5(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-ne v2, v1, :cond_1

    const-string v0, "FingerprintDialogView"

    const-string v2, "setDisplayPressMode: the same state"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set press mode to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_2

    if-ne p1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v2, 0x9

    invoke-interface {v0, v2, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private resetState()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->resetState()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    return-void
.end method

.method private setDismissesDialog(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setClickable(Z)V

    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$B8knj9fNUARFy_4W9AAQmquxejk;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private setDisplayAodMode(I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$iinQwULtuAjE9o2W9MjvSm6d430;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$iinQwULtuAjE9o2W9MjvSm6d430;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDisplayHideAod(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$-Yy718xw-H-3ufypLW2C4h3xjN0;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$-Yy718xw-H-3ufypLW2C4h3xjN0;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setDisplayPressMode(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$wc2kvQqJCIIcRwCbOYrLUK2Vd0w;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private shouldAnimateForTransition(II)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    return v0

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v1, :cond_1

    if-ne p2, v2, :cond_1

    return v1

    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    return v1

    :cond_2
    if-ne p1, v1, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    return v0

    :cond_3
    return v0
.end method

.method private shouldEnableHBM()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM since highlight icon is visible"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isGoingToSleep()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to going to sleep"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->isWakeAndUnlock()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to keyguard is occluded and device is interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_5

    const-string v0, "FingerprintDialogView"

    const-string v1, "force enable HBM in aod and fp is pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to device isn\'t interactive"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v0, :cond_7

    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to already face unlocked"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    return v2

    :cond_9
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to lockout"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a
    :goto_1
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM due to duraing fp wake and unlock"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    :goto_2
    const-string v0, "FingerprintDialogView"

    const-string v2, "don\'t enable HBM dim view is gone or not show on window"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private showTemporaryMessage(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private updateFPIndicationText()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_1

    const v1, 0x7f110353

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_2

    const v1, 0x7f110352

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v3, :cond_3

    const v1, 0x7f110354

    :cond_3
    :goto_0
    const-string v2, "FingerprintDialogView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateFPIndicationText: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private updateFingerprintIcon(I)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getAnimationForTransition(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "FingerprintDialogView"

    const-string v2, "Animation not found"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a0152

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_2

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldAnimateForTransition(II)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->forceAnimationOnUI()V

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_2
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    return-void
.end method


# virtual methods
.method public forceRemove()V
    .locals 2

    const-string v0, "FingerprintDialogView"

    const-string v1, "forceRemove"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setPressDimWindow(Z)V

    return-void
.end method

.method public bridge synthetic getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->WINDOW_FINGERPRINT_VIEW:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getCustomLayoutParams(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7de

    const/high16 v5, 0x1000000

    const/4 v6, -0x3

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "FingerprintDialogView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowToken:Landroid/os/IBinder;

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    return-object v0
.end method

.method public getOwnerString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x80000

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security quality:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    :cond_2
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1

    :cond_4
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object v1
.end method

.method public handleFpResultEvent()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_1

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleFpResultEvent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_0

    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    :cond_1
    return-void
.end method

.method public hideFingerprintPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFingerprintPressed = false, owner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_0

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    :goto_0
    return-void
.end method

.method public isAnimatingAway()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    return v0
.end method

.method public isDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    return v0
.end method

.method public isDialogShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    iget-boolean v0, v0, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->mDialogShowing:Z

    return v0
.end method

.method public notifyBrightnessChange()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->onBrightnessChange()V

    :cond_0
    return-void
.end method

.method public notifyFingerprintAuthenticated()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->stopAnimation()V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayAodMode(I)V

    :cond_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    :cond_1
    return-void
.end method

.method public notifyKeyguardDone()V
    .locals 3

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyKeyguardDone, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->handleFpResultEvent()V

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->hideFingerprintDialog()V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 12

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-string v0, "FingerprintDialogView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v1, 0x7f0a0412

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v2, 0x7f0a03e4

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a00fa

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v4, 0x7f0a009e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const v5, 0x7f0a009d

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDisplayWidth:F

    float-to-int v6, v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLastState:I

    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    iget-boolean v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "title"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v8, "subtitle"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v8, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v10, "description"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "negative_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    const-string v11, "positive_text"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    if-eqz v10, :cond_2

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    iput-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v6, :cond_4

    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateIconVisibility(Z)V

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v5, 0x5

    invoke-virtual {p0, v5}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    return-void

    :cond_4
    const-string v6, "FingerprintDialogView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mWasForceRemoved = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    const/4 v8, 0x0

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimationTranslationOffset:F

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/view/ViewGroup;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    iget-object v6, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setAlpha(F)V

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWasForceRemoved:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const-string v0, "FingerprintDialogView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->resetState()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onFingerprintEventCallback(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->onFingerprintEventCallback(II)V

    :cond_0
    return-void
.end method

.method public playAnimation(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "com.android.settings"

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenTurningOn:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->playAnimation(I)V

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-string v0, "FingerprintDialogView"

    const-string v1, "don\'t play animation due to going to sleep or screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public postTimeOutRunnable()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public removeTimeOutMessage()V
    .locals 2

    const-string v0, "FingerprintDialogView"

    const-string v1, "remove time out message"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected resetMessage()V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFingerprintIcon(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    const v1, 0x7f110279

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setDisplayDimMode(I)V
    .locals 1

    new-instance v0, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$8VfScsnOd98BYjKaRA_IRALOFY4;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fingerprint/-$$Lambda$FingerprintDialogView$8VfScsnOd98BYjKaRA_IRALOFY4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;I)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOwnerString(Ljava/lang/String;)V
    .locals 3

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fp client to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$5;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPressDimWindow(Z)V
    .locals 3

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPressDimWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getDimLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->getHighLightLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPressedLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public setTransparentIconView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mTransparentIconView:Landroid/view/View;

    return-void
.end method

.method public shouldHideDismissButton()Z
    .locals 3

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shouldHideDismissButton: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.oneplus.applocker"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "com.android.settings"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const-string v0, "com.oneplus.filemanager"

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public showErrorMessage(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public showFingerprintDialog(Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    move-object v1, p2

    check-cast v1, Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->forceShowDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V

    return-void
.end method

.method public showFingerprintPressed()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingPressed:Z

    if-eqz v0, :cond_1

    const-string v0, "FingerprintDialogView"

    const-string v1, "press state the same"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v0, :cond_2

    const-string v0, "FingerprintDialogView"

    const-string v1, "fp window not exist don\'t show pressed button"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "FingerprintDialogView"

    const-string v1, "fp is disabled currently"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showFingerprintPressed = true, owner:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconLayoutParams(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->playAnimation(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    return-void
.end method

.method public showHelpMessage(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->showTemporaryMessage(Ljava/lang/String;)V

    return-void
.end method

.method public startDismiss(Z)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAnimatingAway:Z

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$3;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;)V

    iget-boolean v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mLayout:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateFpDaemonStatus(I)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    new-instance v1, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView$4;-><init>(Lcom/android/systemui/fingerprint/FingerprintDialogView;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFpAnimationCtrl:Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayPressMode(I)V

    :cond_0
    return-void
.end method

.method public updateDimViewVisibility(Z)V
    .locals 3

    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateDimViewVisibility: show = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isScreenOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->setDisplayDimMode(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateFpDaemonStatus(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowDefaultDialog:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FingerprintDialogView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFpDaemonStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", showing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDimLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->shouldEnableHBM()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    return-void

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->updateDimViewVisibility(Z)V

    return-void

    :cond_2
    return-void
.end method

.method public updateIconVisibility(Z)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    :cond_0
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-eqz v2, :cond_17

    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    if-nez v2, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v2, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    iget-object v4, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v5

    iget-object v6, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isImeShow()Z

    move-result v6

    iget-object v7, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v7

    iget-object v8, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v8

    iget-object v9, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v9}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isQSExpanded()Z

    move-result v9

    iget-object v10, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isPreventModeActivte()Z

    move-result v10

    iget-object v11, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFacelockRecognizing()Z

    move-result v11

    iget-object v12, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v12}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isLaunchingCamera()Z

    move-result v12

    iget-object v13, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isShowing()Z

    move-result v13

    const-string v14, "FingerprintDialogView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIconVisibility: fp client = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", forceHide = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isBouncer = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isImeShow = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", showOnWindow = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", goingToSleep = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", screenOn = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isUnlockAllowed = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", interactive = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard visible = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isDreaming = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isOccluded = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFaceUnlocked = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSimPinSecure = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isQSExpanded = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLaunchingCamera = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isPreventActivte = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isShowing = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isLockOut = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFacelockRecognizing = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOffAuthenticating = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", visibility = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "0"

    const/4 v14, 0x4

    if-eqz v1, :cond_2

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "1"

    goto/16 :goto_3

    :cond_2
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowOnWindow:Z

    if-nez v15, :cond_3

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v15, v14}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "2"

    goto/16 :goto_3

    :cond_3
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-nez v15, :cond_4

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mGoingToSleep:Z

    if-eqz v15, :cond_5

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_14

    :cond_5
    if-nez v7, :cond_14

    if-nez v12, :cond_14

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v15, :cond_6

    if-nez v13, :cond_6

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-nez v15, :cond_14

    :cond_6
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v15, :cond_8

    if-nez v10, :cond_8

    if-eqz v9, :cond_7

    if-eqz v5, :cond_14

    :cond_7
    if-eqz v6, :cond_8

    if-eqz v5, :cond_8

    goto/16 :goto_2

    :cond_8
    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mFaceUnlocked:Z

    if-eqz v15, :cond_9

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "4"

    goto/16 :goto_3

    :cond_9
    const/4 v15, 0x4

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v14}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result v14

    if-eqz v14, :cond_b

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v15, :cond_a

    const/4 v15, 0x4

    goto :goto_0

    :cond_a
    const/4 v15, 0x0

    :goto_0
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "5"

    goto/16 :goto_3

    :cond_b
    if-nez v2, :cond_e

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsKeyguardDone:Z

    if-nez v14, :cond_e

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_c

    const-string v14, "forceShow-keyguard"

    iget-object v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    :cond_c
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    iget-boolean v15, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDeviceInteractive:Z

    if-eqz v15, :cond_d

    const/4 v15, 0x4

    goto :goto_1

    :cond_d
    const/4 v15, 0x0

    :goto_1
    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v3, "6"

    goto/16 :goto_3

    :cond_e
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_f

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v3, "7"

    goto/16 :goto_3

    :cond_f
    const/4 v15, 0x4

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14}, Lcom/android/systemui/fingerprint/CircleImageView;->getVisibility()I

    move-result v14

    if-ne v14, v15, :cond_15

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mOwnerString:Ljava/lang/String;

    invoke-direct {v0, v14}, Lcom/android/systemui/fingerprint/FingerprintDialogView;->isKeyguard(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-eqz v14, :cond_11

    if-eqz v11, :cond_11

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIsScreenOn:Z

    if-eqz v14, :cond_10

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mScreenOffAuthenticating:Z

    if-eqz v14, :cond_11

    :cond_10
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v3, "8-0"

    goto :goto_3

    :cond_11
    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-nez v14, :cond_12

    if-nez v8, :cond_12

    iget-boolean v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mShowingKeyguard:Z

    if-nez v14, :cond_15

    if-eqz v5, :cond_15

    :cond_12
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v3, "8-1"

    goto :goto_3

    :cond_13
    const/4 v15, 0x0

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v3, "8-2"

    goto :goto_3

    :cond_14
    :goto_2
    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDim:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/CircleImageView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mAodIndicationTextView:Landroid/widget/TextView;

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v14, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mDialogImpl:Lcom/android/systemui/fingerprint/FingerprintDialogImpl;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/android/systemui/fingerprint/FingerprintDialogImpl;->updateTransparentIconVisibility(I)V

    const-string v3, "3"

    :cond_15
    :goto_3
    sget-boolean v14, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_16

    const-string v14, "FingerprintDialogView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "caseLog: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void

    :cond_17
    :goto_4
    const/4 v15, 0x0

    const-string v1, "FingerprintDialogView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not update when icon null, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconNormal:Lcom/android/systemui/fingerprint/CircleImageView;

    const/4 v4, 0x1

    if-nez v3, :cond_18

    move v3, v4

    goto :goto_5

    :cond_18
    move v3, v15

    :goto_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/systemui/fingerprint/FingerprintDialogView;->mIconDisable:Lcom/android/systemui/fingerprint/CircleImageView;

    if-nez v3, :cond_19

    move v15, v4

    nop

    :cond_19
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
