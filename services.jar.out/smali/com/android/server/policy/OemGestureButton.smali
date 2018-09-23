.class public Lcom/android/server/policy/OemGestureButton;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OemGestureButton$EdgeEffectView;,
        Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final EFFECT_DIST:[F

.field private static final FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator; = null

.field private static GESTURE_BUTTON_FOLLOW_FINGER:Z = false

.field private static final GESTURE_BUTTON_GUIDE_PAGE:Ljava/lang/String; = "com.android.settings/com.oneplus.settings.OPFullScreenGestureGuidePage"

.field private static final GESTURE_KEY_DISTANCE_THRESHOLD:I

.field private static final GESTURE_KEY_DISTANCE_TIMEOUT:I

.field private static final GESTURE_KEY_LONG_CLICK_MOVE:I

.field private static final GESTURE_KEY_LONG_CLICK_TIMEOUT:I

.field private static GESTURE_KEY_MAX_ANIM_DURATION:I = 0x0

.field private static final GESTURE_KEY_MAX_VELOCITY:F = 5000.0f

.field private static final GESTURE_KEY_MID_VELOCITY:F = 1000.0f

.field private static GESTURE_KEY_MIN_ANIM_DURATION:I = 0x0

.field private static IS_ANIM_TUNING:Z = false

.field static final IS_GESTURE_BUTTON_ENABLED:Z

.field private static final MID_SCALE_SIZE:F = 0.4f

.field private static final MIN_SCALE_SIZE:F = 0.3f

.field private static final NAV_BAR_BOTTOM:I = 0x0

.field private static final NAV_BAR_LEFT:I = 0x2

.field private static final NAV_BAR_RIGHT:I = 0x1

.field static final OP_LAUNCHER_GESTURE:Z

.field private static final SWIPE_TIMEOUT_MS:J = 0x190L

.field private static final TAG:Ljava/lang/String; = "OemGestureButton"

.field private static mCurrentFraction:F

.field static mDismissInputMethod:Z

.field private static mEffectParams:[F

.field static mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field static mGestureButtonEnabled:Z

.field public static mGestureButtonGoingHome:Z

.field static mGestureButtonGuide:Z

.field static mGestureButtonGuiding:Z

.field public static mGestureButtonMovingHome:Z

.field public static mIsAnimationStart:Z

.field public static mNeedRecoverAnimation:Z

.field private static mRecentMoveTolerance:F

.field private static mScaleRatio:F

.field private static mTargetAlpha:F


# instance fields
.field final GESTURE_KEY_ROUND_CORNER:F

.field mContext:Landroid/content/Context;

.field private mDownTime:F

.field mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

.field private mEffectHeight:I

.field private mEffectStage:I

.field private mFromX:F

.field private mFromY:F

.field private mGestureButtonAnimDuration:I

.field mGestureScreenShotView:Landroid/view/View;

.field mGestureScreenShotViewBG:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field mIgnoreNotch:Z

.field mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field private mIsKeyguardShowing:Z

.field private mLastKeyCode:I

.field private mLastX:F

.field private mLastY:F

.field private mLongClick:Z

.field private mMaxWaitTime:J

.field private mNavigationBarPosition:I

.field mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

.field mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

.field mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field private mPreparedKeycode:I

.field mPwm:Lcom/android/server/policy/PhoneWindowManager;

.field mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mScaleAlpha:F

.field private mScaleAnimationShowing:Z

.field private mScaleSize:F

.field mScreenDecor:Lcom/android/server/policy/ScreenDecor;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeLongFireable:Z

.field private mSwipeStartFromEdge:Z

.field private final mSwipeStartThreshold:I

.field private mTouchListener:Landroid/view/View$OnTouchListener;

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mWallpaperBitmap_0:Landroid/graphics/Bitmap;

.field mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x34

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const-string/jumbo v1, "persist.gesture_button.launcher"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->OP_LAUNCHER_GESTURE:Z

    const-string/jumbo v1, "persist.gesture_button.finger"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    sget-boolean v1, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "persist.gesture_button.debug"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    nop

    :cond_1
    :goto_0
    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    const-string/jumbo v0, "persist.gesture_button.tuning"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->IS_ANIM_TUNING:Z

    const-string/jumbo v0, "persist.gesture_button.anim_max_duration"

    const/16 v1, 0x177

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    const-string/jumbo v0, "persist.gesture_button.anim_min_duration"

    const/16 v1, 0x113

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mNeedRecoverAnimation:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mIsAnimationStart:Z

    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    const-string/jumbo v0, "persist.gesture_button.dis"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    const-string/jumbo v0, "persist.gesture_button.timeout"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    const-string/jumbo v0, "persist.gesture_button.long_click_move"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_MOVE:I

    const-string/jumbo v0, "persist.gesture_button.long_click_timeout"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_TIMEOUT:I

    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->EFFECT_DIST:[F

    sget-object v0, Lcom/android/server/policy/OemGestureButton;->EFFECT_DIST:[F

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F

    const/4 v0, 0x0

    sput v0, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    const v1, 0x3dcccccd    # 0.1f

    sput v1, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e4ccccd    # 0.2f

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const v1, 0x3e19999a    # 0.15f

    sput v1, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    sput v4, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3f19999a    # 0.6f

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f000000    # 0.5f
        0x3f333333    # 0.7f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    const/16 v1, 0xe1

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    const-string/jumbo v1, "persist.gesture_button.round_px"

    const/16 v2, 0x50

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_ROUND_CORNER:F

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    iput-boolean v1, v0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    iput-boolean v1, v0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iput v2, v0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    iput v1, v0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput-boolean v1, v0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    new-instance v1, Lcom/android/server/policy/OemGestureButton$5;

    invoke-direct {v1, v0}, Lcom/android/server/policy/OemGestureButton$5;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mTouchListener:Landroid/view/View$OnTouchListener;

    const-string v1, "OemGestureButton"

    const-string v2, "OemGestureButton init"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    const/16 v4, 0x32

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    const/16 v4, 0x40

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "OemGestureButtonThread"

    const/4 v6, -0x8

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v0, v7}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v5, Landroid/os/HandlerThread;

    const-string v7, "OemGestureBtnRegionThread"

    invoke-direct {v5, v7, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v7, Landroid/os/HandlerThread;

    const-string v8, "OemGestureBtnAnimThread"

    invoke-direct {v7, v8, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    move-object v6, v7

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    new-instance v7, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v0, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonAnimHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7e1

    const v15, 0x1000508

    const/16 v16, -0x2

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v8, 0x1

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v8, 0x50d0013

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "GestureScreenshot"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x12

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v7, v7, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v8, Lcom/android/server/policy/OemGestureButton$1;

    invoke-direct {v8, v0}, Lcom/android/server/policy/OemGestureButton$1;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v7, v8}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->startScaleDownAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/policy/OemGestureButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mLastKeyCode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/policy/OemGestureButton;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->triggerGestureVirtualKeypress(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->dismissInputMethod()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/policy/OemGestureButton;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/policy/OemGestureButton;F)F
    .locals 0

    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/policy/OemGestureButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/policy/OemGestureButton;IIFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/OemGestureButton;->toggleRecentAppsWithGesture(IIFF)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->showScreenShot()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/policy/OemGestureButton;)F
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/policy/OemGestureButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/OemGestureButton;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/OemGestureButton;)Landroid/view/WindowManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateGestureButtonRegion()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/policy/OemGestureButton;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->startScaleUpAnimation(Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/OemGestureButton;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/policy/OemGestureButton;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/policy/OemGestureButton;->mMaxWaitTime:J

    return-wide p1
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/OemGestureButton;)Landroid/view/animation/Animation;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->createScaleDownAnimationLocked()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/OemGestureButton;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/policy/OemGestureButton;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return p1
.end method

.method static synthetic access$708(Lcom/android/server/policy/OemGestureButton;)I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectStage:I

    return v0
.end method

.method static synthetic access$800()[F
    .locals 1

    sget-object v0, Lcom/android/server/policy/OemGestureButton;->mEffectParams:[F

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/policy/OemGestureButton;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    return v0
.end method

.method private checkAllBlack(Landroid/graphics/Bitmap;)Z
    .locals 10

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v0, v0, [I

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 v2, 0x1

    aget v3, v0, v1

    nop

    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_2

    aget v4, v0, v1

    if-eq v4, v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2
.end method

.method private createScaleDownAnimationLocked()Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/ScaleAnimation;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v2, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v2, v0

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v4, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v4, v0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    sget-object v1, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    sget v4, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    sget-object v3, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v3, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    move-object v1, v3

    return-object v1
.end method

.method private dismissInputMethod()V
    .locals 2

    const-string v0, "OemGestureButton"

    const-string v1, "dismissInputMethod"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    const-class v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    :cond_1
    return-void
.end method

.method private getRoundRectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v1, -0xbdbdbe

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_ROUND_CORNER:F

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_ROUND_CORNER:F

    invoke-virtual {v1, v3, v5, v6, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, p1, v2, v2, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private handleTouch(Landroid/view/MotionEvent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v3, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "OemGestureButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " onTouch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " rawX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " rawY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " pos="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v5, 0x5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eq v2, v5, :cond_2c

    const/16 v9, 0x1f4

    const/4 v10, 0x6

    const/4 v11, 0x4

    const/4 v12, 0x2

    packed-switch v2, :pswitch_data_0

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v5, :cond_30

    const-string v5, "OemGestureButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :pswitch_0
    sget-boolean v9, Lcom/android/server/policy/OemGestureButton;->OP_LAUNCHER_GESTURE:Z

    if-eqz v9, :cond_3

    iget-boolean v9, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v9, :cond_3

    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v9, v8, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    return-void

    :cond_3
    iget-boolean v9, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    if-ne v9, v6, :cond_4

    goto/16 :goto_e

    :cond_4
    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v9, :cond_5

    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    sub-float/2addr v9, v4

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    goto :goto_0

    :cond_5
    iget v9, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    sub-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    sget v15, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_MOVE:I

    int-to-float v15, v15

    cmpg-float v15, v9, v15

    if-gez v15, :cond_6

    sget v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_LONG_CLICK_TIMEOUT:I

    int-to-long v7, v5

    cmp-long v5, v13, v7

    if-lez v5, :cond_30

    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    goto/16 :goto_e

    :cond_6
    iget-object v15, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v15, :cond_7

    iget-object v15, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    invoke-virtual {v15, v12, v5}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_7

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_7
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/high16 v12, 0x43c80000    # 400.0f

    if-nez v5, :cond_c

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v15, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v15, v15

    cmpl-float v5, v5, v15

    if-lez v5, :cond_b

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v11, :cond_a

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v12

    if-gez v5, :cond_9

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_gesture_button_guide_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_8
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    :cond_9
    :goto_1
    return-void

    :cond_a
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    sub-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    sget v7, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_b
    const/4 v6, 0x5

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    goto :goto_3

    :cond_c
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v15, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v15, v15

    cmpl-float v5, v5, v15

    if-lez v5, :cond_10

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v11, :cond_f

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    iget v6, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    sub-float/2addr v5, v6

    cmpg-float v5, v5, v12

    if-gez v5, :cond_e

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v5, :cond_d

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "op_gesture_button_guide_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_d
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    :cond_e
    :goto_2
    return-void

    :cond_f
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sget v6, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    sget v7, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_DISTANCE_TIMEOUT:I

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_10
    const/4 v6, 0x5

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    :cond_11
    :goto_3
    iput v3, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    goto/16 :goto_e

    :pswitch_1
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->OP_LAUNCHER_GESTURE:Z

    if-eqz v5, :cond_12

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v5, :cond_12

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_12

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return-void

    :cond_12
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mLongClick:Z

    sput-boolean v7, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v11, 0x5

    invoke-virtual {v5, v11}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-eqz v5, :cond_14

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "op_gesture_button_guide_state"

    iget v10, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v10, v8, :cond_13

    move v10, v6

    goto :goto_4

    :cond_13
    nop

    move v10, v8

    :goto_4
    invoke-static {v5, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    :cond_14
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v9, "op_gesture_button_guide_state"

    const/4 v10, -0x1

    invoke-static {v5, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_c

    :cond_15
    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-eqz v5, :cond_2c

    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_16

    const-string v5, "OemGestureButton"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Start send mPreparedKeycode="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-virtual {v5, v7, v9}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_18

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    if-nez v5, :cond_17

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/OemGestureButton;->dismissInputMethod()V

    :cond_17
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v9, Lcom/android/server/policy/OemGestureButton$4;

    invoke-direct {v9, v0}, Lcom/android/server/policy/OemGestureButton$4;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v5, v9}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    :cond_18
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v5, :cond_1c

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v5, :cond_1c

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v9, 0x3e8

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v9, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v11, v5, v9

    if-lez v11, :cond_19

    move v11, v5

    goto :goto_5

    :cond_19
    move v11, v9

    :goto_5
    const v13, 0x459c4000    # 5000.0f

    cmpl-float v13, v11, v13

    if-lez v13, :cond_1a

    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    iput v12, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    goto :goto_6

    :cond_1a
    const/high16 v13, 0x447a0000    # 1000.0f

    cmpl-float v13, v11, v13

    if-lez v13, :cond_1b

    sget v13, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    sget v14, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    add-int/2addr v13, v14

    div-int/2addr v13, v12

    iput v13, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    goto :goto_6

    :cond_1b
    sget v12, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    iput v12, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    :goto_6
    iget-object v12, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v12, 0x0

    iput-object v12, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget-boolean v12, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v12, :cond_1c

    const-string v12, "OemGestureButton"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "velocityX="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " velocityY="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v14, " mGestureButtonAnimDuration="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_c

    :pswitch_2
    sput-boolean v7, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/16 v10, 0xbb

    if-nez v5, :cond_20

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v5, v13

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_1d

    return-void

    :cond_1d
    iput v3, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpg-float v5, v5, v13

    if-ltz v5, :cond_1f

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v13, v12

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_1e

    goto :goto_7

    :cond_1e
    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto :goto_9

    :cond_1f
    :goto_7
    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v5, :cond_26

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v11, v12

    div-int/2addr v11, v8

    int-to-float v11, v11

    cmpl-float v5, v5, v11

    if-lez v5, :cond_26

    iput v10, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto :goto_9

    :cond_20
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v5, v6, :cond_21

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v5, v13

    int-to-float v5, v5

    cmpg-float v5, v3, v5

    if-ltz v5, :cond_22

    :cond_21
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v5, v12, :cond_23

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-lez v5, :cond_23

    :cond_22
    return-void

    :cond_23
    iput v3, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iput v4, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpg-float v5, v5, v13

    if-ltz v5, :cond_25

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iget v13, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v13, v12

    div-int/2addr v13, v8

    int-to-float v13, v13

    cmpl-float v5, v5, v13

    if-lez v5, :cond_24

    goto :goto_8

    :cond_24
    iput v8, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    goto :goto_9

    :cond_25
    :goto_8
    iput v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v5, :cond_26

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    mul-int/2addr v11, v12

    div-int/2addr v11, v8

    int-to-float v11, v11

    cmpl-float v5, v5, v11

    if-lez v5, :cond_26

    iput v10, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    :cond_26
    :goto_9
    iput-boolean v6, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    sget-boolean v5, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_27

    const-string v5, "OemGestureButton"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Start from edge mPreparedKeycode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->OP_LAUNCHER_GESTURE:Z

    if-eqz v5, :cond_28

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v5, :cond_28

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_28

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    return-void

    :cond_28
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v5, :cond_29

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v6

    goto :goto_a

    :cond_29
    move v5, v7

    :goto_a
    iput-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mIsKeyguardShowing:Z

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_2b

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-nez v5, :cond_2b

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    check-cast v5, Lcom/android/server/policy/OemPhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/OemPhoneWindowManager;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-virtual {v5, v7, v9}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    sput-boolean v7, Lcom/android/server/policy/OemGestureButton;->mDismissInputMethod:Z

    sput-boolean v6, Lcom/android/server/policy/OemGestureButton;->mGestureButtonMovingHome:Z

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v5, :cond_2a

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_b

    :cond_2a
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    :goto_b
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_2b
    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromY:F

    iput v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastY:F

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mFromX:F

    iput v5, v0, Lcom/android/server/policy/OemGestureButton;->mLastX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    long-to-float v5, v5

    iput v5, v0, Lcom/android/server/policy/OemGestureButton;->mDownTime:F

    goto/16 :goto_e

    :cond_2c
    :goto_c
    :pswitch_3
    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->OP_LAUNCHER_GESTURE:Z

    if-eqz v5, :cond_2d

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    if-eqz v5, :cond_2d

    iget v5, v0, Lcom/android/server/policy/OemGestureButton;->mPreparedKeycode:I

    if-ne v5, v8, :cond_2d

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/OemGestureButton;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    return-void

    :cond_2d
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v5, :cond_2f

    iget-boolean v5, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    if-nez v5, :cond_2e

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    if-eqz v5, :cond_2e

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v8, 0x9

    invoke-virtual {v5, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    goto :goto_d

    :cond_2e
    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v5, v0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    :cond_2f
    :goto_d
    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartFromEdge:Z

    iput-boolean v7, v0, Lcom/android/server/policy/OemGestureButton;->mSwipeLongFireable:Z

    sget-boolean v5, Lcom/android/server/policy/OemGestureButton;->IS_ANIM_TUNING:Z

    if-eqz v5, :cond_30

    const-string/jumbo v5, "persist.gesture_button.targetalpha"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    const v8, 0x3c23d70a    # 0.01f

    mul-float/2addr v5, v8

    sput v5, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    const-string/jumbo v5, "persist.gesture_button.scaleratio"

    const/16 v9, 0xa

    invoke-static {v5, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sput v5, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const-string/jumbo v9, "persist.gesture_button.interpolator1"

    const/16 v10, 0x28

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    const-string/jumbo v10, "persist.gesture_button.interpolator2"

    invoke-static {v10, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v8

    const-string/jumbo v10, "persist.gesture_button.interpolator3"

    const/16 v11, 0x14

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v8

    const-string/jumbo v11, "persist.gesture_button.interpolator4"

    const/16 v12, 0x64

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v8

    invoke-direct {v5, v9, v7, v10, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v5, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const-string/jumbo v5, "persist.gesture_button.mCurrentFraction"

    const/16 v7, 0xf

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sput v5, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    const-string/jumbo v5, "persist.gesture_button.anim_max_duration"

    const/16 v7, 0x177

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MAX_ANIM_DURATION:I

    const-string/jumbo v5, "persist.gesture_button.anim_min_duration"

    const/16 v7, 0x113

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/android/server/policy/OemGestureButton;->GESTURE_KEY_MIN_ANIM_DURATION:I

    const-string/jumbo v5, "persist.gesture_button.mRecentMoveTolerance"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    sput v5, Lcom/android/server/policy/OemGestureButton;->mRecentMoveTolerance:F

    :cond_30
    :goto_e
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static isEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

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

.method static isGuiding()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    return v0
.end method

.method private isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v0, "net.oneplus.launcher"

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.launcher.Launcher"

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "net.oneplus.launcher/net.oneplus.quickstep.RecentsActivity"

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static notifyCallbacksLocked()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "notifyCallbacksLocked."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendGestureMotionEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->sendGestureMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private showScreenShot()V
    .locals 14

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->GESTURE_BUTTON_FOLLOW_FINGER:Z

    if-nez v0, :cond_0

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for not follow finger."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->isHomeOrRecent(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for keyguard locked."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for window animating."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "showScreenShot: skip screenshot for docked stack."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-eqz v0, :cond_5

    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showScreenShot: skip screenshot for landscape pos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x5090009

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    const v4, 0x5070032

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    new-instance v4, Landroid/graphics/Rect;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    const/4 v6, 0x0

    invoke-direct {v4, v6, v6, v2, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    if-eqz v5, :cond_6

    iget-object v7, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v7, v6, v5, v6, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    new-instance v8, Landroid/graphics/Rect;

    iget v9, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v10, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    invoke-direct {v8, v6, v5, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v4, v8

    :cond_6
    iget v7, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    sub-int v8, v6, v5

    const/4 v9, 0x0

    const v10, 0x186a0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v6, v4

    invoke-static/range {v6 .. v12}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_7
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    const/4 v7, 0x0

    const v8, 0x186a0

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v4 .. v10}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_8
    iget v5, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    iget v8, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v9, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    const/4 v10, 0x0

    const v11, 0x186a0

    const/4 v12, 0x0

    const/4 v13, 0x3

    move-object v7, v4

    invoke-static/range {v7 .. v13}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_9
    :goto_0
    if-eqz v2, :cond_d

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotViewBG:Landroid/widget/ImageView;

    invoke-direct {p0, v2}, Lcom/android/server/policy/OemGestureButton;->getRoundRectBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    const-string v1, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showScreenShot for + "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " rect="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " mDisplayRotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget v6, v6, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mNavigationBarPosition="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_b
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7f6

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_d
    iput-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    const-string v1, "OemGestureButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showScreenShot: cannot take screenshot for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    :goto_2
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showScreenShot: skip screenshot for Home or Recents. focus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " topFull="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_f
    :goto_3
    return-void
.end method

.method private startScaleDownAnimation(Landroid/widget/ImageView;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    const/4 v5, 0x0

    aput v4, v3, v5

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v6, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v4, v6

    aput v4, v3, v0

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v2, [F

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v6, v4, v5

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    sget v7, Lcom/android/server/policy/OemGestureButton;->mScaleRatio:F

    mul-float/2addr v6, v7

    aput v6, v4, v0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    aput v7, v6, v5

    sget v7, Lcom/android/server/policy/OemGestureButton;->mTargetAlpha:F

    aput v7, v6, v0

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v5

    aput-object v1, v6, v0

    aput-object v4, v6, v2

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/server/policy/OemGestureButton$2;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$2;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonAnimDuration:I

    int-to-long v5, v2

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget v2, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    sget-object v2, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v2, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startScaleDownAnimation: mScaleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startScaleUpAnimation(Landroid/widget/ImageView;)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAnimationShowing:Z

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    iget v4, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    const/4 v5, 0x0

    aput v4, v3, v5

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v3, v0

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v2, [F

    iget v7, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    aput v7, v6, v5

    aput v4, v6, v0

    invoke-static {v3, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v7, v2, [F

    iget v8, p0, Lcom/android/server/policy/OemGestureButton;->mScaleAlpha:F

    aput v8, v7, v5

    aput v4, v7, v0

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v5

    aput-object v1, v6, v0

    aput-object v4, v6, v2

    invoke-static {p1, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/server/policy/OemGestureButton$3;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$3;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v5, 0x96

    invoke-virtual {v0, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget v2, Lcom/android/server/policy/OemGestureButton;->mCurrentFraction:F

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    sget-object v2, Lcom/android/server/policy/OemGestureButton;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    const-string v2, "OemGestureButton"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startScaleUpAnimation: mScaleSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/policy/OemGestureButton;->mScaleSize:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private toggleRecentAppsWithGesture(IIFF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentAppsWithGesture(IIFF)V

    :cond_0
    return-void
.end method

.method private triggerGestureVirtualKeypress(I)V
    .locals 17

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    new-instance v16, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v12, 0x48

    const v13, 0x10000101

    move-object/from16 v1, v16

    move-wide v2, v14

    move-wide v4, v14

    move/from16 v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    invoke-virtual {v0, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateGestureButtonRegion()V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-virtual {v0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    :cond_1
    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "updateGestureButtonRegion: not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7de

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x118

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "GestureButtonRegion"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateWindowParams()V

    new-instance v0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->updateWindowParams()V

    invoke-direct {p0}, Lcom/android/server/policy/OemGestureButton;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGestureButtonRegion: mNavigationBarPosition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mSwipeStartThreshold="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateWindowParams()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v1, -0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x50

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    :goto_0
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/policy/OemGestureButton;->mEffectHeight:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_1
    return-void
.end method

.method private updateWindows(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_1

    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eqz v2, :cond_0

    const-string v2, "com.android.settings/com.oneplus.settings.OPFullScreenGestureGuidePage"

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    sput-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuiding:Z

    :cond_1
    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "buttons_show_on_screen_navkeys"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "buttons_show_on_screen_navkeys"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1

    if-eqz p2, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/policy/OemGestureButton;->updateWindows(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_0
    return-void
.end method

.method isGestureButtonRegion(II)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mEdgeEffectView:Lcom/android/server/policy/OemGestureButton$EdgeEffectView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mRegionWindowParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isGestureButtonRegion: x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pos="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v0, v3

    if-lt p2, v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget v3, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1

    :cond_4
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mSwipeStartThreshold:I

    if-gt p1, v0, :cond_5

    move v1, v2

    nop

    :cond_5
    return v1

    :cond_6
    return v1
.end method

.method isScreenShotShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mGestureScreenShotView:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method navigationBarPosition(III)V
    .locals 4

    const/4 v0, 0x0

    if-le p1, p2, :cond_1

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    if-eq v0, v1, :cond_2

    const-string v1, "OemGestureButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update mNavigationBarPosition to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/server/policy/OemGestureButton;->mNavigationBarPosition:I

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/OemGestureButton;->handleTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method preloadWallapepr(Landroid/graphics/Bitmap;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v2, Lcom/android/server/policy/OemGestureButton$6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/OemGestureButton$6;-><init>(Lcom/android/server/policy/OemGestureButton;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method preloadWallapepr(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    :cond_0
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v1, v2, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal;->isAnimating()Z

    move-result v1

    if-nez v1, :cond_1

    sput-object v0, Lcom/android/server/policy/OemGestureButton;->mFocusWin:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureBtnRegionHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    new-instance v2, Lcom/android/server/policy/OemGestureButton$7;

    invoke-direct {v2, p0}, Lcom/android/server/policy/OemGestureButton$7;-><init>(Lcom/android/server/policy/OemGestureButton;)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method setBackgoundWallpaper()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mWallpaperBitmap_0:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method public setIgnoreNotchWallpaper()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OemGestureButton"

    const-string/jumbo v1, "setIgnoreNotchWallpaper"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/policy/OemGestureButton;->mScreenWidth:I

    iget v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-object v1, v1, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/OemGestureButton;->mScreenDecor:Lcom/android/server/policy/ScreenDecor;

    iget-object v1, v1, Lcom/android/server/policy/ScreenDecor;->upExpandBitmap_0:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton;->mPreLoadWallpaperBitmap_0:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {v2, v1, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    iput-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotchWallpaperBitmap_0:Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton;->setBackgoundWallpaper()V

    return-void
.end method

.method public updateNotchSettings(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateNotchSettings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/policy/OemGestureButton;->mIgnoreNotch:Z

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mOemGestureButtonHandler:Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemGestureButton$OemGestureButtonHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method updateSettings(ZZ)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    if-ne v0, p1, :cond_0

    sget-boolean v0, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    if-eq v0, p2, :cond_1

    :cond_0
    sput-boolean p1, Lcom/android/server/policy/OemGestureButton;->mGestureButtonEnabled:Z

    sput-boolean p2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGuide:Z

    const-string v0, "OemGestureButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSettings: enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " guide="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton;->mPwm:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/policy/OemGestureButton;->updateWindows(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_1
    return-void
.end method
