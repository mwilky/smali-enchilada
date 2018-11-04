.class public Lcom/android/server/policy/PhoneWindowManager;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;,
        Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;,
        Lcom/android/server/policy/PhoneWindowManager$HdmiControl;,
        Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;,
        Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;,
        Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;,
        Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;,
        Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;
    }
.end annotation


# static fields
.field public static mDoublePressHomeCustomApp:Ljava/lang/String;

.field public static mLongPressHomeCustomApp:Ljava/lang/String;

.field public static mDoublePressBackCustomApp:Ljava/lang/String;

.field public static mLongPressBackCustomApp:Ljava/lang/String;

.field public static mDoublePressRecentCustomApp:Ljava/lang/String;

.field public static mLongPressRecentCustomApp:Ljava/lang/String;

.field public static mLongPressFingerprintCustomApp:Ljava/lang/String;

.field private static final ACTION_WIFI_DISPLAY_VIDEO:Ljava/lang/String; = "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

.field static final ALTERNATE_CAR_MODE_NAV_SIZE:Z = false

.field private static AUTHENTICATE_FACEUNLOCK:I = 0x0

.field private static AUTHENTICATE_FINGERPRINT:I = 0x0

.field private static final AUTH_BEGIN:I = 0x1

.field private static final AUTH_SUCCEEDED:I = 0x2

.field private static final AUTH_SUCCEEDED_SHOW_TOP:I = 0x3

.field private static final BRIGHTNESS_STEPS:I = 0xa

.field private static final BUGREPORT_TV_GESTURE_TIMEOUT_MILLIS:J = 0x3e8L

.field static DEBUG:Z = false

.field static DEBUG_INPUT:Z = false

.field static DEBUG_KEYGUARD:Z = false

.field static DEBUG_LAYOUT:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field static DEBUG_SPLASH_SCREEN:Z = false

.field static DEBUG_WAKEUP:Z = false

.field private static DOUBLE_CLICK_VOLUME_DEBOUNCE_DELAY_MILLIS:J = 0x0L

.field static final DOUBLE_TAP_HOME_NOTHING:I = 0x0

.field static final DOUBLE_TAP_HOME_RECENT_SYSTEM_UI:I = 0x1

.field static final ENABLE_DESK_DOCK_HOME_CAPTURE:Z = false

.field static final ENABLE_VR_HEADSET_HOME_CAPTURE:Z = true

.field private static final IS_SUPPORT_VIBRATION_INTENSITY:Z

.field private static final KEYGUARD_FINGERPRINT_AUTHENTICATE_TIMEOUT_DURATION:I = 0x3e8

.field protected static final KEYGUARD_SCREENSHOT_CHORD_DELAY_MULTIPLIER:F = 1.5625f

.field static final LAST_LONG_PRESS_HOME_BEHAVIOR:I = 0x2

.field static final LONG_PRESS_BACK_GO_TO_VOICE_ASSIST:I = 0x1

.field static final LONG_PRESS_BACK_NOTHING:I = 0x0

.field static final LONG_PRESS_HOME_ALL_APPS:I = 0x1

.field static final LONG_PRESS_HOME_ASSIST:I = 0x2

.field static final LONG_PRESS_HOME_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final LONG_PRESS_POWER_GO_TO_VOICE_ASSIST:I = 0x4

.field static final LONG_PRESS_POWER_NOTHING:I = 0x0

.field static final LONG_PRESS_POWER_SHUT_OFF:I = 0x2

.field static final LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM:I = 0x3

.field private static final MSG_ACCESSIBILITY_SHORTCUT:I = 0x14

.field private static final MSG_ACCESSIBILITY_TV:I = 0x16

.field private static final MSG_BACK_LONG_PRESS:I = 0x12

.field private static final MSG_BUGREPORT_TV:I = 0x15

.field private static final MSG_DISABLE_POINTER_LOCATION:I = 0x2

.field private static final MSG_DISPATCH_BACK_KEY_TO_AUTOFILL:I = 0x17

.field private static final MSG_DISPATCH_MEDIA_KEY_REPEAT_WITH_WAKE_LOCK:I = 0x4

.field private static final MSG_DISPATCH_MEDIA_KEY_WITH_WAKE_LOCK:I = 0x3

.field private static final MSG_DISPATCH_SHOW_GLOBAL_ACTIONS:I = 0xa

.field private static final MSG_DISPATCH_SHOW_RECENTS:I = 0x9

.field private static final MSG_DISPOSE_INPUT_CONSUMER:I = 0x13

.field private static final MSG_ENABLE_POINTER_LOCATION:I = 0x1

.field private static final MSG_HANDLE_ALL_APPS:I = 0x19

.field private static final MSG_HIDE_BOOT_MESSAGE:I = 0xb

.field private static final MSG_KEYGUARD_DRAWN_COMPLETE:I = 0x5

.field private static final MSG_KEYGUARD_DRAWN_TIMEOUT:I = 0x6

.field private static final MSG_KEYGUARD_FP_AUTHENTICATED_TIMEOUT:I = 0x66

.field private static final MSG_KEYGUARD_FP_STATE_CHANGE:I = 0x65

.field private static final MSG_LAUNCH_ASSIST:I = 0x1a

.field private static final MSG_LAUNCH_ASSIST_LONG_PRESS:I = 0x1b

.field private static final MSG_LAUNCH_VOICE_ASSIST_WITH_WAKE_LOCK:I = 0xc

.field private static final MSG_NOTIFY_USER_ACTIVITY:I = 0x1d

.field private static final MSG_POWER_DELAYED_PRESS:I = 0xd

.field private static final MSG_POWER_LONG_PRESS:I = 0xe

.field private static final MSG_POWER_VERY_LONG_PRESS:I = 0x1c

.field private static final MSG_REQUEST_TRANSIENT_BARS:I = 0x10

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_NAVIGATION:I = 0x1

.field private static final MSG_REQUEST_TRANSIENT_BARS_ARG_STATUS:I = 0x0

.field private static final MSG_RINGER_TOGGLE_CHORD:I = 0x1e

.field private static final MSG_SHOW_PICTURE_IN_PICTURE_MENU:I = 0x11

.field private static final MSG_SYSTEM_KEY_PRESS:I = 0x18

.field private static final MSG_UPDATE_DREAMING_SLEEP_TOKEN:I = 0xf

.field private static final MSG_WINDOW_MANAGER_DRAWN_COMPLETE:I = 0x7

.field static final MULTI_PRESS_POWER_BRIGHTNESS_BOOST:I = 0x2

.field static final MULTI_PRESS_POWER_NOTHING:I = 0x0

.field static final MULTI_PRESS_POWER_THEATER_MODE:I = 0x1

.field static final NAV_BAR_OPAQUE_WHEN_FREEFORM_OR_DOCKED:I = 0x0

.field static final NAV_BAR_TRANSLUCENT_WHEN_FREEFORM_OPAQUE_OTHERWISE:I = 0x1

.field private static final OEM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OEM_VMEDUA_PLAYER_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANIC_GESTURE_EXPIRATION:J = 0x7530L

.field static final PENDING_KEY_NULL:I = -0x1

.field private static final POWER_KEY_RECOVER_DURATION:I = 0x9c4

.field private static final POWER_LONGPRESS_CHORD_DELAY_MULTIPLIER:F = 2.5f

.field static final PRINT_ANIM:Z = false

.field private static SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J = 0x0L

.field private static SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS_Power:J = 0x0L

.field private static final SCREENSHOT_DELAY_MULTIPLIER:F = 0.375f

.field private static final SCROLL_BOOST_SS_ENABLE:Z

.field static final SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME:I = 0x5

.field static final SHORT_PRESS_POWER_GO_HOME:I = 0x4

.field static final SHORT_PRESS_POWER_GO_TO_SLEEP:I = 0x1

.field static final SHORT_PRESS_POWER_NOTHING:I = 0x0

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP:I = 0x2

.field static final SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME:I = 0x3

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP:I = 0x0

.field static final SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME:I = 0x1

.field static final SHORT_PRESS_WINDOW_NOTHING:I = 0x0

.field static final SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE:I = 0x1

.field static SHOW_SPLASH_SCREENS:Z = false

.field public static final SYSTEM_DIALOG_REASON_ASSIST:Ljava/lang/String; = "assist"

.field public static final SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS:Ljava/lang/String; = "globalactions"

.field public static final SYSTEM_DIALOG_REASON_HOME_KEY:Ljava/lang/String; = "homekey"

.field public static final SYSTEM_DIALOG_REASON_KEY:Ljava/lang/String; = "reason"

.field public static final SYSTEM_DIALOG_REASON_RECENT_APPS:Ljava/lang/String; = "recentapps"

.field public static final SYSTEM_DIALOG_REASON_SCREENSHOT:Ljava/lang/String; = "screenshot"

.field static final SYSTEM_UI_CHANGING_LAYOUT:I = -0x3fff7ff2

.field private static final SYSUI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final SYSUI_SCREENSHOT_ERROR_RECEIVER:Ljava/lang/String; = "com.android.systemui.screenshot.ScreenshotServiceErrorReceiver"

.field private static final SYSUI_SCREENSHOT_SERVICE:Ljava/lang/String; = "com.android.systemui.screenshot.TakeScreenshotService"

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0xdac

.field private static final USER_ACTIVITY_NOTIFICATION_DELAY:I = 0xc8

.field static final VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS:I = 0x1

.field static final VERY_LONG_PRESS_POWER_NOTHING:I = 0x0

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field static final WAITING_FOR_DRAWN_TIMEOUT:I = 0x3e8

.field protected static final WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

.field static localLOGV:Z

.field private static final mIsCustomFP:Z

.field static final mTmpContentFrame:Landroid/graphics/Rect;

.field static final mTmpDecorFrame:Landroid/graphics/Rect;

.field private static final mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

.field static final mTmpDisplayFrame:Landroid/graphics/Rect;

.field static final mTmpNavigationFrame:Landroid/graphics/Rect;

.field static final mTmpOutsetFrame:Landroid/graphics/Rect;

.field static final mTmpOverscanFrame:Landroid/graphics/Rect;

.field static final mTmpParentFrame:Landroid/graphics/Rect;

.field private static final mTmpRect:Landroid/graphics/Rect;

.field static final mTmpStableFrame:Landroid/graphics/Rect;

.field static final mTmpVisibleFrame:Landroid/graphics/Rect;

.field static sApplicationLaunchKeyCategories:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mA11yShortcutChordVolumeUpKeyConsumed:Z

.field private mA11yShortcutChordVolumeUpKeyTime:J

.field private mA11yShortcutChordVolumeUpKeyTriggered:Z

.field mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

.field private mAccessibilityTvKey1Pressed:Z

.field private mAccessibilityTvKey2Pressed:Z

.field private mAccessibilityTvScheduled:Z

.field private final mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

.field mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field mAllowAllRotations:I

.field mAllowLockscreenWhenOn:Z

.field mAllowStartActivityForLongPressOnPowerDuringSetup:Z

.field private mAllowTheaterModeWakeFromCameraLens:Z

.field private mAllowTheaterModeWakeFromKey:Z

.field private mAllowTheaterModeWakeFromLidSwitch:Z

.field private mAllowTheaterModeWakeFromMotion:Z

.field private mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

.field private mAllowTheaterModeWakeFromPowerKey:Z

.field private mAllowTheaterModeWakeFromWakeGesture:Z

.field private mAodShowing:Z

.field mAppOpsManager:Landroid/app/AppOpsManager;

.field mAudioManagerInternal:Landroid/media/AudioManagerInternal;

.field mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

.field volatile mAwake:Z

.field volatile mBackKeyHandled:Z

.field volatile mBeganFromNonInteractive:Z

.field mBootMessageNeedsHiding:Z

.field mBootMsgDialog:Landroid/app/ProgressDialog;

.field mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mBugreportTvKey1Pressed:Z

.field private mBugreportTvKey2Pressed:Z

.field private mBugreportTvScheduled:Z

.field mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

.field mCalendarDateVibePattern:[J

.field volatile mCameraGestureTriggeredDuringGoingToSleep:Z

.field mCameraLensCoverState:I

.field mCarDockEnablesAccelerometer:Z

.field mCarDockIntent:Landroid/content/Intent;

.field mCarDockRotation:I

.field private final mClearHideNavigationFlag:Ljava/lang/Runnable;

.field mConsumeSearchKeyUp:Z

.field mContext:Landroid/content/Context;

.field mCurrentAppOrientation:I

.field protected mCurrentUserId:I

.field mDefaultHomeApp:Ljava/lang/String;

.field mDemoHdmiRotation:I

.field mDemoHdmiRotationLock:Z

.field mDemoRotation:I

.field mDemoRotationLock:Z

.field mDeskDockEnablesAccelerometer:Z

.field mDeskDockIntent:Landroid/content/Intent;

.field mDeskDockRotation:I

.field private volatile mDismissImeOnBackKeyPressed:Z

.field mDisplay:Landroid/view/Display;

.field protected mDisplayRotation:I

.field mDockLayer:I

.field mDockMode:I

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field mDockTop:I

.field final mDockedStackBounds:Landroid/graphics/Rect;

.field private mDoubleClickVolumeKeyReleaseTime:J

.field mDoublePressOnPowerBehavior:I

.field private mDoubleTapOnHomeBehavior:I

.field mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

.field mDreamReceiver:Landroid/content/BroadcastReceiver;

.field mDreamingLockscreen:Z

.field mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mDreamingSleepTokenNeeded:Z

.field private mEnableCarDockHomeCapture:Z

.field mEnableShiftMenuBugReports:Z

.field volatile mEndCallKeyHandled:Z

.field private final mEndCallLongPress:Ljava/lang/Runnable;

.field mEndcallBehavior:I

.field private mExtEventObserver:Landroid/os/UEventObserver;

.field private final mFallbackActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/KeyCharacterMap$FallbackAction;",
            ">;"
        }
    .end annotation
.end field

.field mFingerprintForShotEnabled:Z

.field mFocusedApp:Landroid/view/IApplicationToken;

.field mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mForceClearedSystemUiFlags:I

.field private mForceDefaultOrientation:Z

.field mForceShowSystemBars:Z

.field mForceStatusBar:Z

.field mForceStatusBarFromKeyguard:Z

.field private mForceStatusBarTransparent:Z

.field mForcingShowNavBar:Z

.field mForcingShowNavBarLayer:I

.field mGestureBtnVibePattern:[J

.field mGlobalActions:Lcom/android/server/policy/GlobalActions;

.field private mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

.field private mGoToSleepOnButtonPressTheaterMode:Z

.field volatile mGoingToSleep:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private mHandleVolumeKeysInWM:Z

.field mHandler:Landroid/os/Handler;

.field private mHasFeatureLeanback:Z

.field private mHasFeatureWatch:Z

.field mHasNavigationBar:Z

.field mHasSoftInput:Z

.field mHaveBuiltInKeyboard:Z

.field mHavePendingMediaKeyRepeatWithWakeLock:Z

.field mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

.field mHdmiPlugged:Z

.field private final mHiddenNavPanic:Ljava/lang/Runnable;

.field mHideNavigationBar:Z

.field mHomeConsumed:Z

.field mHomeDoubleTapPending:Z

.field private final mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

.field mHomeIntent:Landroid/content/Intent;

.field mHomePressed:Z

.field private mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

.field mIncallBackBehavior:I

.field mIncallPowerBehavior:I

.field mInitialMetaState:I

.field mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

.field mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

.field mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

.field private mIsFingerprintEnabled:Z

.field mIsIgnoreCameraNotch:Z

.field mIsNeedToHideNavBar:Z

.field private mIsPerfBoostFlingAcquired:Z

.field mIsPreventMode:Z

.field private mKeyguardBound:Z

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field mKeyguardDrawComplete:Z

.field final mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

.field private mKeyguardDrawnOnce:Z

.field volatile mKeyguardOccluded:Z

.field private mKeyguardOccludedChanged:Z

.field mLandscapeRotation:I

.field mLanguageSwitchKeyPressed:Z

.field final mLastDockedStackBounds:Landroid/graphics/Rect;

.field mLastDockedStackSysUiFlags:I

.field mLastFocusNeedsMenu:Z

.field mLastFullscreenStackSysUiFlags:I

.field mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mLastNavigationBar:I

.field final mLastNonDockedStackBounds:Landroid/graphics/Rect;

.field private mLastShowingDream:Z

.field mLastSystemUiFlags:I

.field private mLastWindowSleepTokenNeeded:Z

.field mLidControlsScreenLock:Z

.field mLidControlsSleep:Z

.field mLidKeyboardAccessibility:I

.field mLidNavigationAccessibility:I

.field mLidOpenRotation:I

.field mLidState:I

.field private final mLock:Ljava/lang/Object;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mLockPatternVibePattern:[J

.field mLockScreenTimeout:I

.field mLockScreenTimerActive:Z

.field mLockSensorForAppLaunched:Z

.field private final mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

.field mLogger:Lcom/android/internal/logging/MetricsLogger;

.field mLongPressOnBackBehavior:I

.field mLongPressOnFingerprintBehavior:I

.field private mLongPressOnHomeBehavior:I

.field mLongPressOnPowerBehavior:I

.field mLongPressVibePattern:[J

.field mMetaState:I

.field mMultiuserReceiver:Landroid/content/BroadcastReceiver;

.field mNavBarOpacityMode:I

.field volatile mNavBarVirtualKeyHapticFeedbackEnabled:Z

.field private final mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

.field mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mNavigationBarCanMove:Z

.field private final mNavigationBarController:Lcom/android/server/policy/BarController;

.field mNavigationBarHeightForRotationDefault:[I

.field mNavigationBarHeightForRotationInCarMode:[I

.field mNavigationBarPosition:I

.field mNavigationBarWidthForRotationDefault:[I

.field mNavigationBarWidthForRotationInCarMode:[I

.field final mNonDockedStackBounds:Landroid/graphics/Rect;

.field private mNotifyUserActivity:Z

.field mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

.field mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

.field mOrientationSensorEnabled:Z

.field mPendingCapsLockToggle:Z

.field private mPendingKeyguardOccluded:Z

.field mPendingMetaAction:Z

.field private mPendingPanicGestureUptime:J

.field volatile mPendingWakeKey:I

.field mPerfBoostDrag:Landroid/util/BoostFramework;

.field mPerfBoostFling:Landroid/util/BoostFramework;

.field mPerfBoostPrefling:Landroid/util/BoostFramework;

.field private volatile mPersistentVrModeEnabled:Z

.field final mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

.field volatile mPictureInPictureVisible:Z

.field mPointerLocationMode:I

.field mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

.field mPortraitRotation:I

.field mPowerKeyAssistantEnable:Z

.field volatile mPowerKeyHandled:Z

.field volatile mPowerKeyPressCounter:I

.field mPowerKeyTempFunction:I

.field mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPreShowSurface:Z

.field mPreloadedRecentApps:Z

.field mQuickPayWhich:I

.field mRecentAppsHeldModifiers:I

.field volatile mRecentsVisible:Z

.field private final mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

.field volatile mRequestedOrGoingToSleep:Z

.field mResettingSystemUiFlags:I

.field private mRingerToggleChord:I

.field mSafeMode:Z

.field mSafeModeEnabledVibePattern:[J

.field mScreenDecor:Lcom/android/server/policy/ScreenDecor;

.field private final mScreenDecorWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/policy/WindowManagerPolicy$WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

.field private mScreenMagnificationActive:Z

.field mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

.field mScreenOnEarly:Z

.field mScreenOnFully:Z

.field mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

.field private mScreenshotChordEnabled:Z

.field private mScreenshotChordPowerKeyTime:J

.field private mScreenshotChordPowerKeyTriggered:Z

.field private mScreenshotChordVolumeDownKeyConsumed:Z

.field private mScreenshotChordVolumeDownKeyTime:J

.field private mScreenshotChordVolumeDownKeyTriggered:Z

.field private mScreenshotChordVolumeUpKeyConsumed:Z

.field private mScreenshotChordVolumeUpKeyTime:J

.field private mScreenshotChordVolumeUpKeyTriggered:Z

.field private mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field protected final mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

.field mSearchKeyShortcutPending:Z

.field mSearchManager:Landroid/app/SearchManager;

.field mSeascapeRotation:I

.field final mServiceAquireLock:Ljava/lang/Object;

.field mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

.field mShortPressOnPowerBehavior:I

.field mShortPressOnSleepBehavior:I

.field mShortPressOnWindowBehavior:I

.field private mShortcutKeyServices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/internal/policy/IShortcutService;",
            ">;"
        }
    .end annotation
.end field

.field mShortcutManager:Lcom/android/server/policy/ShortcutManager;

.field mShowRotationSuggestions:I

.field mShowingDream:Z

.field mStartWhenUnlock:Z

.field mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private final mStatusBarController:Lcom/android/server/policy/StatusBarController;

.field private final mStatusBarHeightForRotation:[I

.field mStatusBarLayer:I

.field mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field mSupportAutoRotation:Z

.field private mSupportLongPressPowerWhenNonInteractive:Z

.field mSystemBooted:Z

.field mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mSystemNavigationKeysEnabled:Z

.field mSystemReady:Z

.field private final mTmpBoolean:Landroid/util/MutableBoolean;

.field mTmpDeviceId:I

.field mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field private mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mTranslucentDecorEnabled:Z

.field mTriplePressOnPowerBehavior:I

.field mUiMode:I

.field mUiModeManager:Landroid/app/IUiModeManager;

.field mUndockedHdmiRotation:I

.field final mUpdateRotationTrueRunnable:Ljava/lang/Runnable;

.field mUpsideDownRotation:I

.field mUseTvRouting:Z

.field mUserRotation:I

.field mUserRotationMode:I

.field mVeryLongPressOnPowerBehavior:I

.field mVeryLongPressTimeout:I

.field mVibrateOnTouchIntensity:I

.field mVibrator:Landroid/os/Vibrator;

.field mVrHeadsetHomeIntent:Landroid/content/Intent;

.field volatile mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

.field mWakeGestureEnabledSetting:Z

.field mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

.field private mWifiDisplayConnected:Z

.field private mWifiDisplayCustomRotation:I

.field mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

.field mWindowManager:Landroid/view/IWindowManager;

.field final mWindowManagerDrawCallback:Ljava/lang/Runnable;

.field mWindowManagerDrawComplete:Z

.field mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

.field mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mHandler"
    .end annotation
.end field

.field private mWindowSleepTokenNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    sput-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    const-string v2, "com.oneplus.deskclock"

    const-string v3, "com.android.deskclock"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->OEM_PACKAGE_LIST:Ljava/util/List;

    const-string v3, "com.qiyi.video"

    const-string v4, "com.sohu.sohuvideo"

    const-string v5, "com.baidu.video"

    const-string v6, "com.tencent.qqlive"

    const-string/jumbo v7, "tv.pps.mobile"

    const-string v8, "com.tudou.android"

    const-string v9, "com.youku.phone"

    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->OEM_VMEDUA_PLAYER_PACKAGE_LIST:Ljava/util/List;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_BROWSER"

    const/16 v4, 0x40

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_EMAIL"

    const/16 v4, 0x41

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_CONTACTS"

    const/16 v4, 0xcf

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_CALENDAR"

    const/16 v4, 0xd0

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_MUSIC"

    const/16 v4, 0xd1

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    const-string v3, "android.intent.category.APP_CALCULATOR"

    const/16 v4, 0xd2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    const-string/jumbo v2, "vendor.perf.gestureflingboost.enable"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z

    new-array v2, v1, [I

    const/16 v3, 0x27

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    const-wide/16 v2, 0x2bc

    sput-wide v2, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    const-wide/16 v2, 0x1f4

    sput-wide v2, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS_Power:J

    const-wide/16 v2, 0x7d0

    sput-wide v2, Lcom/android/server/policy/PhoneWindowManager;->DOUBLE_CLICK_VOLUME_DEBOUNCE_DELAY_MILLIS:J

    new-array v2, v1, [I

    const/16 v3, 0x47

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    sput v1, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FINGERPRINT:I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FACEUNLOCK:I

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7d3
        0x7da
    .end array-data
.end method

.method public constructor <init>()V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNavigationBar:I

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/PhoneWindowManager$1;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpdateRotationTrueRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockSensorForAppLaunched:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostDrag:Landroid/util/BoostFramework;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostFling:Landroid/util/BoostFramework;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPerfBoostPrefling:Landroid/util/BoostFramework;

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrateOnTouchIntensity:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v4, 0x4

    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    new-array v5, v4, [I

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationInCarMode:[I

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationInCarMode:[I

    new-instance v4, Landroid/util/LongSparseArray;

    invoke-direct {v4}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$2;

    invoke-direct {v4, p0}, Lcom/android/server/policy/PhoneWindowManager$2;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$3;

    invoke-direct {v4, p0}, Lcom/android/server/policy/PhoneWindowManager$3;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mQuickPayWhich:I

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/policy/LogDecelerateInterpolator;

    const/16 v4, 0x64

    invoke-direct {v1, v4, v3}, Lcom/android/server/policy/LogDecelerateInterpolator;-><init>(II)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyAssistantEnable:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPreventMode:Z

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTempFunction:I

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStartWhenUnlock:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$4;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$5;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$5;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$6;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$6;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    new-instance v0, Lcom/android/server/policy/StatusBarController;

    invoke-direct {v0}, Lcom/android/server/policy/StatusBarController;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    new-instance v0, Lcom/android/server/policy/BarController;

    const-string v5, "NavigationBar"

    const/high16 v6, 0x8000000

    const/high16 v7, 0x20000000

    const/high16 v8, -0x80000000

    const/4 v9, 0x2

    const/high16 v10, 0x8000000

    const v11, 0x8000

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$7;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$7;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$qkEs_boDTAbqA6wKqcLwnsgoklc;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$qkEs_boDTAbqA6wKqcLwnsgoklc;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SMVPfeuVGHeByGLchxVc-pxEEMw;

    invoke-direct {v0, p0}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$SMVPfeuVGHeByGLchxVc-pxEEMw;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$8;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$8;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$9;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$9;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$15;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$15;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$16;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$16;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$17;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$17;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$18;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$18;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$19;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$19;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$20;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$20;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-direct {v0, p0}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->enablePointerLocation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->disablePointerLocation()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerVeryLongPress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->updateDreamingSleepToken(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenuInternal()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->backLongPress()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->accessibilityShortcutActivated()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->requestFullBugreport()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/accessibility/AccessibilityShortcutController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/PhoneWindowManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/policy/PhoneWindowManager;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleAuthStateChange(ZII)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBar(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleRingerChordGesture()V

    return-void
.end method

.method static synthetic access$2500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/policy/PhoneWindowManager;JZLjava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/policy/PhoneWindowManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->sendProposedRotationChangeToStatusBarInternal(IZ)V

    return-void
.end method

.method static synthetic access$3102(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/internal/util/ScreenshotHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTopAppGame()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/policy/PhoneWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPerfBoostFlingAcquired:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/policy/PhoneWindowManager;IJ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->handleStartTransitionForKeyguardLw(IJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishWindowsDrawn()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mClearHideNavigationFlag:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/policy/PhoneWindowManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v0

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/policy/PhoneWindowManager;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    return-wide p1
.end method

.method static synthetic access$4300(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/BarController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/server/policy/PhoneWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/android/server/policy/PhoneWindowManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->handleHideBootMessage()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistLongPressAction()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/PhoneWindowManager;JZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPressWithAssistant()V

    return-void
.end method

.method private accessibilityShortcutActivated()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->performAccessibilityShortcut()V

    sget-boolean v0, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "[Accessibility] accessibilityShortcutActivated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V
    .locals 4

    sget-object v0, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {p2, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    new-instance v3, Landroid/view/View;

    invoke-direct {v3, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private static allowAllRotationsToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "true"

    return-object v0

    :pswitch_1
    const-string v0, "false"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "unknown"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    goto :goto_0

    :cond_0
    invoke-interface {p1, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private applyLidSwitchState()V
    .locals 4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lockDeviceNow()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    return-void

    :cond_0
    and-int/lit16 v0, p2, 0x400

    if-eqz v0, :cond_1

    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    iget-object v0, p4, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method private areTranslucentBarsAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    return v0
.end method

.method private static awakenDreams()V
    .locals 2

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->awaken()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private backLongPress()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    :pswitch_1
    nop

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private bindKeyguard()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardBound:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->bindService(Landroid/content/Context;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 5

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private canHideNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method private canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 5

    nop

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    nop

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    xor-int v4, v0, v3

    if-nez v4, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private cancelPendingAccessibilityShortcutAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelPendingBackKeyAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private cancelPendingPowerKeyAction()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyAssistantEnable:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTempFunction:I

    if-ne v0, v1, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTempFunction:I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method private cancelPendingRingerToggleChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private cancelPendingScreenshotChordAction()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelPreloadRecentApps()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->cancelPreloadRecentApps()V

    :cond_0
    return-void
.end method

.method static chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    if-ne p3, v1, :cond_0

    invoke-static {p2, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz p0, :cond_2

    if-ne p1, p0, :cond_2

    if-eqz v1, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    return-object p1

    :cond_4
    invoke-static {p1, v0}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v0

    if-eqz v0, :cond_5

    return-object p2

    :cond_5
    return-object p1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    move-object v0, p2

    nop

    :cond_7
    return-object v0
.end method

.method private clearClearableFlagsLw()V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v0, v0, 0x7

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V

    :cond_0
    return-void
.end method

.method private configureNavBarOpacity(IZZZ)I
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_4

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarTranslucentFlag(I)I

    move-result p1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->setNavBarOpaqueFlag(I)I

    move-result p1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7fffffff

    and-int/2addr p1, v0

    :cond_5
    return p1
.end method

.method private disablePointerLocation()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    :cond_0
    return-void
.end method

.method private dismissKeyboardShortcutsMenu()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->dismissKeyboardShortcutsMenu()V

    :cond_0
    return-void
.end method

.method private dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v7, 0x1005

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v8

    const/16 v1, 0xa4

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v2, -0x1

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    const-string v3, "Error dispatching volume down in dispatchTvAudioEvent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "WindowManager"

    const-string v3, "Error dispatching volume up in dispatchTvAudioEvent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v1

    const/16 v2, 0x65

    const/high16 v3, -0x80000000

    const-string v6, "WindowManager"

    move v4, v7

    move-object v5, v8

    invoke-interface/range {v1 .. v6}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "WindowManager"

    const-string v3, "Error dispatching mute in dispatchTvAudioEvent."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private disposeInputConsumer(Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;->dismiss()V

    :cond_0
    return-void
.end method

.method private static doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "DOUBLE_TAP_HOME_RECENT_SYSTEM_UI"

    return-object v0

    :pswitch_1
    const-string v0, "DOUBLE_TAP_HOME_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2}, Lcom/android/server/policy/StatusBarController;->isTransparentAllowed(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-nez p2, :cond_1

    return v0

    :cond_1
    nop

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x80000000

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    move v2, v0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    nop

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x20000

    and-int/2addr v3, v4

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    if-nez v3, :cond_5

    if-eqz v2, :cond_4

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p1

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    nop

    :cond_5
    :goto_2
    return v0
.end method

.method private enablePointerLocation()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/widget/PointerLocationView;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PointerLocationView;->setPrintCoords(Z)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    const/16 v1, 0x7df

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x518

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v1, "PointerLocation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationView:Lcom/android/internal/widget/PointerLocationView;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_1
    return-void
.end method

.method private static endcallBehaviorToString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "home|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string/jumbo v1, "sleep|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_2

    const-string v2, "<nothing>"

    return-object v2

    :cond_2
    const/4 v2, 0x0

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private finishKeyguardDrawn()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private finishPowerKeyPress()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private finishScreenTurningOn()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finishScreenTurningOn: mAwake="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnEarly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mScreenOnFully="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyguardDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mWindowManagerDrawComplete="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyguardDelegate.isShowing()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mKeyguardDelegate.isFingerprintAuthenticating()= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v2, "Finished screen turning on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v4, 0x0

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v3, :cond_4

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->hideBootMessages()V

    goto :goto_0

    :cond_4
    move v2, v4

    :cond_5
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;->onScreenOn()V

    :cond_6
    if-eqz v2, :cond_7

    :try_start_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->enableScreenIfNeeded()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    :try_start_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method private finishWindowsDrawn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    return-void

    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getAccessibilityShortcutTimeout()J
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_shortcut_dialog_shown"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeout()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getAccessibilityShortcutKeyTimeoutAfterConfirmation()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method static getAudioService()Landroid/media/IAudioService;
    .locals 3

    const-string v0, "audio"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Unable to find IAudioService interface."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getAvailableAssistantComponent()Landroid/content/ComponentName;
    .locals 7

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    nop

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v3, v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    nop

    if-eqz v3, :cond_0

    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v4, :cond_0

    return-object v1

    :cond_0
    const-string v4, "WindowManager"

    const-string v5, "Maybe assist not available now"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "WindowManager"

    const-string v6, "Assist not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    :goto_0
    nop

    return-object v2
.end method

.method private getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v2, 0x0

    return-object v2

    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    return-object v2
.end method

.method static getDreamManager()Landroid/service/dreams/IDreamManager;
    .locals 1

    const-string v0, "dreams"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    return-object v0
.end method

.method private getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "hdmi_control"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/hdmi/HdmiControlManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiControlManager;->getPlaybackClient()Landroid/hardware/hdmi/HdmiPlaybackClient;

    move-result-object v2

    :cond_1
    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    invoke-direct {v3, v2, v1}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;-><init>(Landroid/hardware/hdmi/HdmiPlaybackClient;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiControl:Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    return-object v0
.end method

.method private getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I
    .locals 4

    const/4 v0, 0x0

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x200

    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x20000

    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v3

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v2, v3, :cond_3

    :cond_2
    or-int/lit16 v0, v0, 0x400

    :cond_3
    return v0
.end method

.method private getKeyguardDrawnTimeout()J
    .locals 3

    const-class v0, Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x3e8

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1388

    :goto_0
    return-wide v1
.end method

.method static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->convertToLongArray([I)[J

    move-result-object v0

    return-object v0
.end method

.method private getMaxMultiPressPowerCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private getNavigationBarHeight(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getNavigationBarWidth(II)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    aget v0, v0, p1

    return v0
.end method

.method private getResolvedLongPressOnPowerBehavior()I
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isLongPressOnPowerOffEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    return v0
.end method

.method private getRingerToggleChordDelay()J
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private getScreenshotChordLongPressDelay()J
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc80000    # 1.5625f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0

    :cond_0
    const/high16 v0, 0x3ec00000    # 0.375f

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v1

    long-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method private getSearchManager()Landroid/app/SearchManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "search"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSearchManager:Landroid/app/SearchManager;

    return-object v0
.end method

.method private getVibrationEffect(I)Landroid/os/VibrationEffect;
    .locals 5

    const/16 v0, 0x2711

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureBtnVibePattern:[J

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :pswitch_3
    invoke-static {v0, v3}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    goto :goto_0

    :pswitch_5
    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :pswitch_6
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    goto :goto_0

    :cond_0
    :pswitch_7
    invoke-static {v3}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :pswitch_8
    const/4 v0, 0x5

    invoke-static {v0}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    nop

    :goto_0
    nop

    array-length v4, v0

    if-nez v4, :cond_2

    return-object v2

    :cond_2
    array-length v2, v0

    const/4 v4, -0x1

    if-ne v2, v1, :cond_3

    aget-wide v1, v0, v3

    invoke-static {v1, v2, v4}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :cond_3
    invoke-static {v0, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private goToSleep(JII)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method private handleAuthStateChange(ZII)V
    .locals 6

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/16 v1, 0x66

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-ne p3, v2, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_a

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FP_ACCELERATE: showLw top, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_2
    monitor-exit v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    nop

    const/4 v0, 0x3

    if-ne p3, v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v0

    if-nez v0, :cond_8

    sget v0, Lcom/android/server/policy/PhoneWindowManager;->AUTHENTICATE_FINGERPRINT:I

    if-ne p2, v0, :cond_8

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FP_ACCELERATE: showLw top 2, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->showLw(Z)Z

    :cond_5
    monitor-exit v0

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :cond_6
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_7

    const-string v2, "WindowManager"

    const-string v4, "FP_ACCELERATE: hidelw"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2, v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hideLw(Z)Z

    monitor-exit v0

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishScreenTurningOn()V

    :cond_a
    :goto_1
    return-void
.end method

.method private handleDoubleTapOnHome()V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_0
    return-void
.end method

.method private handleHideBootMessage()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMessageNeedsHiding:Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string/jumbo v1, "handleHideBootMessage: dismissing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBootMsgDialog:Landroid/app/ProgressDialog;

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handleLongPressOnHome(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined home long press behavior: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchAllAppsAction()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleRingerChordGesture()V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAudioManagerInternal()Landroid/media/AudioManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    const-string/jumbo v1, "volume_hush"

    invoke-virtual {v0, v1}, Landroid/media/AudioManagerInternal;->silenceRingerModeInternal(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "hush_gesture_used"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v1, 0x5a0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    return-void
.end method

.method private handleStartTransitionForKeyguardLw(IJ)I
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "transition/occluded changed occluded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v2, "Starting keyguard exit animation"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->startKeyguardExitAnimation(JJ)V

    :cond_3
    return v1
.end method

.method private hasLongPressOnBackBehavior()Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasLongPressOnPowerBehavior()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hasVeryLongPressOnPowerBehavior()Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private hideRecentApps(ZZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->hideRecentApps(ZZ)V

    :cond_0
    return-void
.end method

.method private static incallBackBehaviorToString(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hangup"

    return-object v0

    :cond_0
    const-string v0, "<nothing>"

    return-object v0
.end method

.method private static incallPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    const-string/jumbo v0, "hangup"

    return-object v0

    :cond_0
    const-string/jumbo v0, "sleep"

    return-object v0
.end method

.method private interceptAccessibilityGestureTv(IZ)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    if-ne p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    const/16 v1, 0x16

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    return v0
.end method

.method private interceptAccessibilityShortcutChord()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    sget-wide v4, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    sget-wide v4, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAccessibilityShortcutTimeout()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private interceptBackKeyDown()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "key_back_down"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnBackBehavior()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private interceptBackKeyUp(Landroid/view/KeyEvent;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingBackKeyAction()V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->silenceRinger()V

    const/4 v2, 0x0

    return v2

    :cond_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v2

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return v0
.end method

.method private interceptBugreportGestureTv(IZ)Z
    .locals 4

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iput-boolean p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey1Pressed:Z

    const/16 v1, 0x15

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvKey2Pressed:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBugreportTvScheduled:Z

    return v0
.end method

.method private interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z
    .locals 5

    invoke-virtual {p0, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    return v3

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v7

    move v3, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onPowerKeyDown(ZJZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHiddenNavPanic:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v3, v2}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-nez v2, :cond_3

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->silenceRinger()V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    :cond_5
    :goto_0
    const-class v4, Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/GestureLauncherService;

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/scene/OimcBrickModeObserver;->isOn()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_7

    const-string v6, "WindowManager"

    const-string/jumbo v7, "mCameraGestureTriggered blocked by brick mode!"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    invoke-virtual {v4, p1, p2, v6}, Lcom/android/server/GestureLauncherService;->interceptPowerKeyDown(Landroid/view/KeyEvent;ZLandroid/util/MutableBoolean;)Z

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpBoolean:Landroid/util/MutableBoolean;

    iget-boolean v6, v6, Landroid/util/MutableBoolean;->value:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    if-eqz v6, :cond_7

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    :cond_7
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    const/4 v6, 0x0

    if-nez v3, :cond_9

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v7, :cond_9

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v7, :cond_9

    if-eqz v5, :cond_8

    goto :goto_2

    :cond_8
    move v7, v6

    goto :goto_3

    :cond_9
    :goto_2
    move v7, v1

    :goto_3
    iput-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-nez v7, :cond_15

    const/16 v7, 0x1c

    const/16 v8, 0xe

    if-eqz p2, :cond_f

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v9

    if-eqz v9, :cond_15

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v9

    and-int/lit16 v9, v9, 0x80

    if-eqz v9, :cond_a

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto/16 :goto_7

    :cond_a
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v9, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyAssistantEnable:Z

    if-eqz v9, :cond_b

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAvailableAssistantComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startVoiceAssistDelay()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDeviceId:I

    goto :goto_5

    :cond_b
    const-string/jumbo v9, "sys.debug.watchdog"

    invoke-static {v9, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v9}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_c

    const/high16 v9, 0x40200000    # 2.5f

    iget-object v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    long-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-long v9, v9

    goto :goto_4

    :cond_c
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v9

    :goto_4
    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_5

    :cond_d
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v9, 0xbb8

    invoke-virtual {v6, v8, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_5
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v9, v7

    invoke-virtual {v1, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    goto/16 :goto_7

    :cond_f
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v9

    invoke-direct {p0, v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    if-eqz v6, :cond_12

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasLongPressOnPowerBehavior()Z

    move-result v6

    if-eqz v6, :cond_12

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_10

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_6

    :cond_10
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v9

    invoke-virtual {v8, v6, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->hasVeryLongPressOnPowerBehavior()Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    int-to-long v9, v9

    invoke-virtual {v8, v7, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_11
    :goto_6
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_7

    :cond_12
    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyAssistantEnable:Z

    if-eqz v6, :cond_13

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAvailableAssistantComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_13

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startVoiceAssistDelay()V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    iput v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDeviceId:I

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    goto :goto_7

    :cond_13
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v6

    if-gt v6, v1, :cond_14

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    goto :goto_7

    :cond_14
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    :cond_15
    :goto_7
    return-void
.end method

.method private interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p3, :cond_1

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    if-nez v2, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getMaxMultiPressPowerCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    if-ge v5, v0, :cond_2

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v6, p2, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_2
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyPressCounter:I

    invoke-direct {p0, v3, v4, p2, v1}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JZI)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishPowerKeyPress()V

    return-void
.end method

.method private interceptRingerToggleChord()V
    .locals 6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    sget-wide v4, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    sget-wide v4, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1e

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getRingerToggleChordDelay()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method private interceptScreenshotChord()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS_Power:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS_Power:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    iget-wide v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTime:J

    iget-wide v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyConsumed:Z

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method private interceptSystemNavigationKey(Landroid/view/KeyEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendFingerprintGesture(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    :cond_1
    return-void
.end method

.method private isAnyPortrait(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p1, v0, :cond_0

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

.method static isDockSideAllowed(IIIZ)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    if-eqz p3, :cond_4

    if-ne p0, v1, :cond_1

    if-eq p2, v0, :cond_2

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    if-ne p2, v1, :cond_3

    :cond_2
    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1

    :cond_4
    if-ne p0, p1, :cond_5

    return v1

    :cond_5
    if-ne p0, v1, :cond_6

    if-ne p1, v0, :cond_6

    return v1

    :cond_6
    return v2
.end method

.method private isHidden(I)Z
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    if-ne v1, v2, :cond_1

    move v0, v2

    nop

    :cond_1
    return v0

    :pswitch_1
    if-nez v1, :cond_2

    move v0, v2

    nop

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isImmersiveMode(I)Z
    .locals 2

    const/16 v0, 0x1800

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_0

    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    and-int/lit16 v1, p1, 0x1800

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isNavBarEmpty(I)Z
    .locals 3

    const/high16 v0, 0x1600000

    const/high16 v1, 0x1600000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRoundWindow()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

    return v0
.end method

.method private isStatusBarKeyguard()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTheaterModeEnabled()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "theater_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isTopAppGame()Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-interface {v2, v4, v3, v0}, Landroid/app/IActivityManager;->getFilteredTasks(III)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->category:I

    if-eqz v5, :cond_1

    iget v5, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    :goto_1
    move v1, v0

    :cond_2
    nop

    return v1

    :catch_0
    move-exception v2

    return v0
.end method

.method private isTvUserSetupComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tv_user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private static isValidGlobalKey(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x1

    return v0

    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xdf
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isWakeKeyWhenScreenOff(I)Z
    .locals 3

    const/16 v0, 0x1b

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa4

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xde

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    return v2

    :cond_0
    :pswitch_0
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1

    :cond_2
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static synthetic lambda$beginLayoutLw$2(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;
    .locals 1

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager$HideNavInputEventReceiver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "WindowSleepToken"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    return-void
.end method

.method private launchAllAppsAction()V
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ALL_APPS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x100000

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private launchAssistLongPressAction()V
    .locals 4

    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist long press action."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p7

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    return v5

    :cond_0
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v4}, Lcom/android/server/policy/BarController;->isTransientShowing()Z

    move-result v4

    iget v6, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-direct {v0, v8, v7, v6}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v10

    iput v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    iget v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_9

    iget v11, v10, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v12

    sub-int/2addr v11, v12

    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move v13, v7

    const/4 v7, 0x0

    invoke-virtual {v12, v7, v11, v8, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v5, :cond_1

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v5, :cond_2

    :cond_1
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    :cond_2
    if-eqz v4, :cond_3

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_1

    :cond_3
    if-eqz p4, :cond_5

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_4

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v5, :cond_7

    :cond_4
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v11, v7, Landroid/graphics/Rect;->bottom:I

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_5
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    if-eqz v3, :cond_6

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_0

    :cond_6
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :cond_7
    :goto_1
    if-eqz p4, :cond_8

    if-nez p5, :cond_8

    if-nez p6, :cond_8

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v5}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    :cond_8
    nop

    move v14, v8

    move v12, v13

    goto/16 :goto_4

    :cond_9
    move v13, v7

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v7, 0x2

    if-ne v5, v7, :cond_f

    iget v5, v10, Landroid/graphics/Rect;->right:I

    invoke-direct {v0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v7

    sub-int/2addr v5, v7

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    move v14, v8

    move v12, v13

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v7, :cond_a

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v7, :cond_a

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v7, :cond_b

    :cond_a
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->right:I

    iput v5, v7, Landroid/graphics/Rect;->right:I

    :cond_b
    if-eqz v4, :cond_c

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_2

    :cond_c
    const/4 v8, 0x1

    if-eqz p4, :cond_d

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->right:I

    iput v5, v7, Landroid/graphics/Rect;->right:I

    iput v5, v9, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_d
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_2
    if-eqz p4, :cond_e

    if-nez p5, :cond_e

    if-nez p6, :cond_e

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->right:I

    :cond_e
    goto :goto_4

    :cond_f
    move v14, v8

    move v12, v13

    iget v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v7, 0x1

    if-ne v5, v7, :cond_14

    iget v5, v10, Landroid/graphics/Rect;->left:I

    invoke-direct {v0, v6, v2}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v7

    add-int/2addr v5, v7

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v11, v5, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v7, :cond_10

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v7, :cond_10

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v7, :cond_11

    :cond_10
    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    :cond_11
    if-eqz v4, :cond_12

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    goto :goto_3

    :cond_12
    const/4 v8, 0x1

    if-eqz p4, :cond_13

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v8}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    iput v5, v8, Landroid/graphics/Rect;->left:I

    iput v5, v7, Landroid/graphics/Rect;->left:I

    iput v5, v9, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_13
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7, v3}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    :goto_3
    if-eqz p4, :cond_14

    if-nez p5, :cond_14

    if-nez p6, :cond_14

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->wasRecentlyTranslucent()Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iput v5, v7, Landroid/graphics/Rect;->left:I

    :cond_14
    :goto_4
    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v5

    iput v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-object v16, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v17, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v18, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v7, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    sget-object v20, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    sget-object v22, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v25, 0x0

    move-object v15, v5

    move-object/from16 v19, v7

    move-object/from16 v21, p3

    move-object/from16 v23, v8

    move-object/from16 v24, v11

    invoke-interface/range {v15 .. v25}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/policy/BarController;->setContentFrame(Landroid/graphics/Rect;)V

    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_15

    const-string v5, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mNavigationBar frame: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v5}, Lcom/android/server/policy/BarController;->checkHiddenLw()Z

    move-result v5

    return v5
.end method

.method private layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v4, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_0
    if-ltz v6, :cond_9

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-ne v8, v2, :cond_8

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v15, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/16 v18, 0x0

    move-object v8, v7

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p3

    move-object/from16 v12, p3

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v17, v15

    move-object/from16 v15, p3

    move-object/from16 v16, p3

    invoke-interface/range {v8 .. v18}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gtz v9, :cond_4

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_4

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v4, :cond_2

    iget v9, v8, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->left:I

    goto/16 :goto_1

    :cond_2
    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-lt v9, v5, :cond_3

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    iget v10, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->top:I

    goto/16 :goto_1

    :cond_3
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on left or top of display. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    iget v9, v8, Landroid/graphics/Rect;->right:I

    if-lt v9, v5, :cond_7

    iget v9, v8, Landroid/graphics/Rect;->bottom:I

    if-lt v9, v4, :cond_7

    iget v9, v8, Landroid/graphics/Rect;->top:I

    if-gtz v9, :cond_5

    iget v9, v8, Landroid/graphics/Rect;->left:I

    iget v10, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_5
    iget v9, v8, Landroid/graphics/Rect;->left:I

    if-gtz v9, :cond_6

    iget v9, v8, Landroid/graphics/Rect;->top:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v3, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_6
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on right or bottom of display. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "layoutScreenDecorWindows: Ignoring decor win="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " not docked on one of the sides of the display. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " displayWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " displayHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_1
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_9
    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v4, p4

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v14, p3

    invoke-virtual {v14, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v13, p2

    invoke-virtual {v13, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    move-object/from16 v12, p5

    invoke-virtual {v12, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v15, 0x0

    move-object v6, v13

    move-object v7, v14

    move-object v8, v12

    move-object v9, v12

    move-object v10, v12

    move-object/from16 v11, p6

    move-object/from16 v13, p5

    move-object v14, v2

    invoke-interface/range {v5 .. v15}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v7, v1, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    aget v6, v6, v7

    add-int/2addr v5, v6

    iput v5, v2, Landroid/graphics/Rect;->top:I

    iget-object v2, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, v2, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->top:I

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/StatusBarController;->setContentFrame(Landroid/graphics/Rect;)V

    const/high16 v2, 0x4000000

    and-int v2, p7, v2

    const/4 v5, 0x1

    if-eqz v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    const v6, 0x40000008    # 2.000002f

    and-int v6, p7, v6

    if-eqz v6, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v3

    :goto_1
    if-nez p8, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v8

    and-int/2addr v6, v8

    :cond_3
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v8

    if-eqz v8, :cond_5

    if-nez v2, :cond_5

    iget-object v8, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v9, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_4

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Status bar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "dock=%s content=%s cur=%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v3

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v5

    const/4 v3, 0x2

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v3

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v6, :cond_5

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->wasRecentlyTranslucent()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/graphics/Rect;->top:I

    :cond_5
    iget-object v3, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDockTop:I

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->checkHiddenLw()Z

    move-result v3

    return v3
.end method

.method private layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private static longPressOnBackBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LONG_PRESS_BACK_GO_TO_VOICE_ASSIST"

    return-object v0

    :pswitch_1
    const-string v0, "LONG_PRESS_BACK_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static longPressOnHomeBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LONG_PRESS_HOME_ASSIST"

    return-object v0

    :pswitch_1
    const-string v0, "LONG_PRESS_HOME_ALL_APPS"

    return-object v0

    :pswitch_2
    const-string v0, "LONG_PRESS_HOME_NOTHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static longPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF_NO_CONFIRM"

    return-object v0

    :pswitch_1
    const-string v0, "LONG_PRESS_POWER_SHUT_OFF"

    return-object v0

    :pswitch_2
    const-string v0, "LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    :pswitch_3
    const-string v0, "LONG_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static multiPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "MULTI_PRESS_POWER_BRIGHTNESS_BOOST"

    return-object v0

    :pswitch_1
    const-string v0, "MULTI_PRESS_POWER_THEATER_MODE"

    return-object v0

    :pswitch_2
    const-string v0, "MULTI_PRESS_POWER_NOTHING"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private navigationBarPosition(III)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v0, :cond_1

    if-le p1, p2, :cond_1

    const/4 v0, 0x3

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x4

    return v0
.end method

.method private oemIsActionPassToUser()Z
    .locals 3

    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string/jumbo v2, "oemIsActionPassToUser: No focused window"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->OEM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string/jumbo v2, "oemIsActionPassToUser: detect power key in deskclock, pass to application"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1
.end method

.method private offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v0, v1, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenVisibleInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Input method: mDockBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mContentBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mCurBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private offsetVoiceInputWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenContentInsetsLw()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget-object v2, p2, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private powerLongPress()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getResolvedLongPressOnPowerBehavior()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v3

    :goto_0
    move v1, v3

    if-nez v1, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_1
    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    :pswitch_1
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    const-string/jumbo v1, "globalactions"

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_2

    :pswitch_2
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    invoke-virtual {p0, v1, v3, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_2

    :pswitch_3
    nop

    :cond_3
    :goto_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerLongPressWithAssistant()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyAssistantEnable:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTempFunction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isPocketModeActive()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPreventMode:Z

    :cond_1
    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTempFunction:I

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPreventMode:Z

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string/jumbo v3, "under keyguard secure"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAvailableAssistantComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAvailableAssistantComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.google.android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/internal/app/AssistUtils;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    nop

    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->launchVoiceAssistFromKeyguard()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/oneplus/odm/insight/AssistantEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/AssistantEventCollector;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/oneplus/odm/insight/AssistantEventCollector;->collectOpenAssistantEvent(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStartWhenUnlock:Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, v2, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    :cond_6
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTmpDeviceId:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/oneplus/odm/insight/AssistantEventCollector;->getInstance(Landroid/content/Context;)Lnet/oneplus/odm/insight/AssistantEventCollector;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/oneplus/odm/insight/AssistantEventCollector;->collectOpenAssistantEvent(I)V

    :cond_7
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPreventMode:Z

    if-eqz v2, :cond_8

    const/high16 v2, 0x3fc00000    # 1.5f

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    goto :goto_1

    :cond_8
    const-wide/16 v2, 0x9c4

    :goto_1
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_5

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsPreventMode:Z

    if-nez v0, :cond_d

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAvailableAssistantComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_d

    :try_start_0
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_a

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "focus window = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getAvailableAssistantComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z

    goto :goto_2

    :cond_b
    const-string v0, "WindowManager"

    const-string v1, "Focus app token is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Exception when kill assist package"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStartWhenUnlock:Z

    :goto_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    goto :goto_5

    :cond_e
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->powerLongPress()V

    :cond_f
    :goto_5
    return-void
.end method

.method private powerMultiPressAction(JZI)V
    .locals 4

    packed-switch p4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "WindowManager"

    const-string v1, "Starting brightness boost."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p3, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager;->boostScreenBrightness(J)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "Ignoring toggling theater mode - device not setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v2, "Toggling theater mode off."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "theater_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-nez p3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->wakeUpFromPowerKey(J)V

    goto :goto_0

    :cond_2
    const-string v0, "WindowManager"

    const-string v2, "Toggling theater mode on."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "theater_mode_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    const/4 v0, 0x4

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_2
    nop

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerPress(JZI)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Suppressed redundant power key press while already in the process of turning the screen on."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "powerPress: eventTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " interactive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " beganFromNonInteractive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mShortPressOnPowerBehavior="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-ne p4, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/PhoneWindowManager;->powerMultiPressAction(JZI)V

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBeganFromNonInteractive:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_3

    const-class v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mInputMethodManagerInternal:Landroid/view/inputmethod/InputMethodManagerInternal;

    invoke-interface {v0}, Landroid/view/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressPowerGoHome()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    goto :goto_0

    :pswitch_5
    nop

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private powerVeryLongPress()V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    goto :goto_0

    :pswitch_1
    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readCameraLensCoverState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getCameraLensCoverState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method private readConfigurationDependentBehaviors()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    const/4 v3, 0x2

    if-le v1, v3, :cond_1

    :cond_0
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    :cond_1
    const v1, 0x10e003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v3, 0x1

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-le v1, v3, :cond_3

    :cond_2
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    :cond_3
    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    :cond_4
    const v1, 0x10e0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarOpacityMode:I

    return-void
.end method

.method private readRotation(I)I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    return v1

    :cond_1
    const/4 v1, 0x2

    return v1

    :cond_2
    const/4 v1, 0x1

    return v1

    :cond_3
    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method private reportScreenStateToVrManager(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/vr/VrManagerInternal;->onScreenStateChanged(Z)V

    return-void
.end method

.method private requestFullBugreport()V
    .locals 3

    const-string v0, "1"

    const-string/jumbo v1, "ro.debuggable"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "development_settings_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->requestBugReport(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Error taking bugreport"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    return-void
.end method

.method private requestTransientBars(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v1}, Lcom/android/server/policy/StatusBarController;->checkShowTransientBarLw()Z

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2}, Lcom/android/server/policy/BarController;->checkShowTransientBarLw()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v2}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_9

    :cond_2
    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v3, :cond_4

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string v3, "WindowManager"

    const-string v4, "Not showing transient bar, wrong swipe target"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v0

    return-void

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p2, :cond_6

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v3, ""

    :goto_1
    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->OEM_VMEDUA_PLAYER_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const-string/jumbo v5, "requesting transient StatusBar"

    invoke-interface {v4, v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reSetEventDispatching(Ljava/lang/String;)V

    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    :cond_7
    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v3}, Lcom/android/server/policy/BarController;->showTransient()V

    :cond_8
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->confirmCurrentPrompt()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    :cond_9
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private selectDockedDividerAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 10

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getDockedDividerInsetsLw()I

    move-result v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2

    :cond_0
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-ge v2, v6, :cond_2

    :cond_1
    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v2, v5, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    if-gt v2, v6, :cond_3

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    if-le v6, v7, :cond_4

    move v6, v5

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    if-eqz v6, :cond_6

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    if-lez v7, :cond_5

    iget v7, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    if-lt v7, v8, :cond_6

    :cond_5
    move v7, v5

    goto :goto_2

    :cond_6
    move v7, v4

    :goto_2
    if-nez v6, :cond_8

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v0

    if-lez v8, :cond_7

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    if-lt v8, v9, :cond_8

    :cond_7
    move v8, v5

    goto :goto_3

    :cond_8
    move v8, v4

    :goto_3
    if-nez v7, :cond_a

    if-eqz v8, :cond_9

    goto :goto_4

    :cond_9
    move v9, v4

    goto :goto_5

    :cond_a
    :goto_4
    move v9, v5

    :goto_5
    if-nez v2, :cond_f

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    if-eq p2, v5, :cond_e

    const/4 v5, 0x3

    if-ne p2, v5, :cond_c

    goto :goto_6

    :cond_c
    if-ne p2, v3, :cond_d

    const v3, 0x10a0001

    return v3

    :cond_d
    return v4

    :cond_e
    :goto_6
    const/high16 v3, 0x10a0000

    return v3

    :cond_f
    :goto_7
    return v4
.end method

.method private sendProposedRotationChangeToStatusBarInternal(IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onProposedRotationChanged(IZ)V

    :cond_0
    return-void
.end method

.method private sendSystemKeyToStatusBar(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBarService;->handleSystemKey(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private sendSystemKeyToStatusBarAsync(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_0
    const/16 v0, 0x10

    if-eq p3, v0, :cond_2

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_1

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getContentFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p11, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {p9, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :cond_5
    :goto_1
    if-eqz p5, :cond_6

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, p9

    :goto_2
    invoke-virtual {p7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p5, :cond_7

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOverscanFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_3

    :cond_7
    move-object v0, p9

    :goto_3
    invoke-virtual {p8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_4
    and-int/lit16 v0, p2, 0x100

    if-nez v0, :cond_8

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_5

    :cond_8
    move-object v0, p7

    :goto_5
    invoke-virtual {p6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method private setKeyguardOccludedLw(ZZ)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setKeyguardOccluded occluded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, p1, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v2

    :goto_1
    if-nez p1, :cond_4

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v3, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x400

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasLockscreenWallpaper()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_3
    return v2

    :cond_4
    if-eqz p1, :cond_6

    if-eqz v4, :cond_6

    if-eqz v1, :cond_6

    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, -0x401

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x100001

    and-int/2addr v5, v6

    iput v5, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_5
    return v2

    :cond_6
    if-eqz v4, :cond_7

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setOccluded(ZZ)V

    return v3

    :cond_7
    return v3
.end method

.method private setNavBarOpaqueFlag(I)I
    .locals 1

    const v0, 0x7fff7fff

    and-int/2addr v0, p1

    move p1, v0

    return v0
.end method

.method private setNavBarTranslucentFlag(I)I
    .locals 1

    const v0, -0x8001

    and-int/2addr p1, v0

    const/high16 v0, -0x80000000

    or-int/2addr v0, p1

    move p1, v0

    return v0
.end method

.method private static shortPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SHORT_PRESS_POWER_CLOSE_IME_OR_GO_HOME"

    return-object v0

    :pswitch_1
    const-string v0, "SHORT_PRESS_POWER_GO_HOME"

    return-object v0

    :pswitch_2
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    :pswitch_3
    const-string v0, "SHORT_PRESS_POWER_REALLY_GO_TO_SLEEP"

    return-object v0

    :pswitch_4
    const-string v0, "SHORT_PRESS_POWER_GO_TO_SLEEP"

    return-object v0

    :pswitch_5
    const-string v0, "SHORT_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shortPressOnSleepBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP_AND_GO_HOME"

    return-object v0

    :pswitch_1
    const-string v0, "SHORT_PRESS_SLEEP_GO_TO_SLEEP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static shortPressOnWindowBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "SHORT_PRESS_WINDOW_PICTURE_IN_PICTURE"

    return-object v0

    :pswitch_1
    const-string v0, "SHORT_PRESS_WINDOW_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shortPressPowerGoHome()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onShortPowerPressedGoHome()V

    :cond_0
    return-void
.end method

.method private shouldBeHiddenByKeyguard(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 9

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    return v0

    :cond_2
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v2, 0x80000

    const/4 v3, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v4, v2

    if-nez v4, :cond_4

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move v4, v3

    goto :goto_1

    :cond_5
    move v4, v1

    :goto_1
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v5

    if-nez v5, :cond_6

    if-ne p2, p0, :cond_7

    :cond_6
    if-eqz v4, :cond_7

    move v5, v3

    goto :goto_2

    :cond_7
    move v5, v1

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardOccluded()Z

    move-result v6

    if-eqz v6, :cond_a

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/2addr v2, v6

    if-nez v2, :cond_9

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_8

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    :goto_3
    move v2, v3

    :goto_4
    or-int/2addr v5, v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v2

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7f2

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v6

    if-nez v6, :cond_b

    move v6, v3

    goto :goto_5

    :cond_b
    move v6, v1

    :goto_5
    nop

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInputMethodWindow()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-nez v7, :cond_d

    :cond_c
    move v7, v3

    goto :goto_6

    :cond_d
    move v7, v1

    :goto_6
    if-eqz v2, :cond_e

    if-nez v5, :cond_e

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v8

    if-eqz v8, :cond_10

    :cond_e
    if-nez v6, :cond_10

    if-eqz v7, :cond_f

    goto :goto_7

    :cond_f
    goto :goto_8

    :cond_10
    :goto_7
    move v1, v3

    :goto_8
    return v1
.end method

.method private shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-nez v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x108

    if-ne v3, v4, :cond_5

    :cond_4
    return v1

    :cond_5
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getDreamManager()Landroid/service/dreams/IDreamManager;

    move-result-object v3

    if-eqz v3, :cond_6

    :try_start_0
    invoke-interface {v3}, Landroid/service/dreams/IDreamManager;->isDreaming()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_6

    return v2

    :catch_0
    move-exception v2

    const-string v4, "WindowManager"

    const-string v5, "RemoteException when checking if dreaming"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_6
    nop

    :goto_2
    return v1
.end method

.method private shouldEnableWakeGestureLp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_1

    const v0, 0x2000400

    and-int/2addr v0, p2

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

.method private showPictureInPictureMenu(Landroid/view/KeyEvent;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPictureInPictureMenu event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private showPictureInPictureMenuInternal()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showPictureInPictureMenu()V

    :cond_0
    return-void
.end method

.method private showRecentApps(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->showRecentApps(Z)V

    :cond_0
    return-void
.end method

.method private sleepPress()V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    :cond_0
    return-void
.end method

.method private sleepRelease(J)V
    .locals 2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "WindowManager"

    const-string/jumbo v1, "sleepRelease() calling goToSleep(GO_TO_SLEEP_REASON_SLEEP_BUTTON)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private stopLongshot()V
    .locals 4

    const-string/jumbo v0, "longshot"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/longshot/ILongScreenshotManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/longshot/ILongScreenshotManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/longshot/ILongScreenshotManager;->isLongshotMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/longshot/ILongScreenshotManager;->stopLongshot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private toggleKeyboardShortcutsMenu(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleKeyboardShortcutsMenu(I)V

    :cond_0
    return-void
.end method

.method private topAppHidesStatusBar()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " lp.flags=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    and-int/lit16 v2, v0, 0x400

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private updateDreamingSleepToken(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "Dream"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_1
    :goto_0
    return-void
.end method

.method static updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p4, :cond_2

    if-eq p4, p3, :cond_1

    if-ne p4, p1, :cond_0

    goto :goto_0

    :cond_0
    if-ne p4, p2, :cond_2

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, -0x11

    goto :goto_1

    :cond_1
    :goto_0
    and-int/lit8 p0, p0, -0x11

    const/4 v0, 0x0

    invoke-static {p4, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    or-int/2addr p0, v0

    :cond_2
    :goto_1
    return p0
.end method

.method private updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    if-eqz v1, :cond_3

    if-eq v1, p2, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    and-int/lit16 p1, p1, -0x2001

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    and-int/lit16 v2, v2, 0x2000

    or-int/2addr p1, v2

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_4

    and-int/lit16 p1, p1, -0x2001

    :cond_4
    :goto_2
    return p1
.end method

.method private updateLockScreenTimeout()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eq v2, v1, :cond_4

    if-eqz v1, :cond_2

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string/jumbo v3, "setting lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "WindowManager"

    const-string v3, "clearing lockscreen timer"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    :cond_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNavigationBar(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    return-void
.end method

.method private updateScreenOffSleepToken(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "ScreenOff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->acquireSleepToken(Ljava/lang/String;I)Landroid/app/ActivityManagerInternal$SleepToken;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal$SleepToken;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOffSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I
    .locals 35

    move-object/from16 v0, p0

    move/from16 v1, p2

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v2

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v3

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isDockedDividerResizing()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move v7, v6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v6

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v8, :cond_3

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_3

    :cond_3
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_3
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    move/from16 v10, p3

    invoke-virtual {v9, v8, v10, v1}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v10, v8, v9, v1}, Lcom/android/server/policy/BarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v9

    iget-object v10, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v10, v11, v6, v6}, Lcom/android/server/policy/StatusBarController;->applyTranslucentFlagLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v10

    iget-object v11, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v0, v9, v11}, Lcom/android/server/policy/PhoneWindowManager;->drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v11

    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v0, v10, v12}, Lcom/android/server/policy/PhoneWindowManager;->drawsStatusBarBackground(ILcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v12

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7d0

    if-ne v13, v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    move v14, v6

    :goto_4
    if-eqz v14, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v15

    if-nez v15, :cond_6

    const/16 v15, 0x3806

    iget-boolean v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v5, :cond_5

    const/high16 v5, -0x40000000    # -2.0f

    or-int/2addr v15, v5

    :cond_5
    not-int v5, v15

    and-int/2addr v5, v9

    and-int v17, v1, v15

    or-int v9, v5, v17

    :cond_6
    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    or-int/lit8 v5, v9, 0x8

    const v9, -0x40000001    # -1.9999999f

    and-int/2addr v9, v5

    goto :goto_5

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v8, v5, :cond_9

    :cond_8
    if-eqz v7, :cond_a

    :cond_9
    const v5, -0x40000009    # -1.9999989f

    and-int/2addr v9, v5

    :cond_a
    :goto_5
    invoke-direct {v0, v9, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->configureNavBarOpacity(IZZZ)I

    move-result v5

    and-int/lit16 v9, v5, 0x1000

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    goto :goto_6

    :cond_b
    move v9, v6

    :goto_6
    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v15, :cond_c

    iget-object v15, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v6, 0x0

    invoke-static {v15, v6}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v6

    and-int/lit16 v6, v6, 0x400

    if-eqz v6, :cond_c

    const/4 v6, 0x1

    goto :goto_7

    :cond_c
    const/4 v6, 0x0

    :goto_7
    and-int/lit8 v15, v5, 0x4

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_8

    :cond_d
    const/4 v15, 0x0

    :goto_8
    and-int/lit8 v17, v5, 0x2

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    goto :goto_9

    :cond_e
    const/16 v17, 0x0

    :goto_9
    move/from16 v18, v2

    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_10

    if-nez v14, :cond_f

    iget-boolean v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v2, :cond_10

    if-nez v6, :cond_f

    if-eqz v15, :cond_10

    if-eqz v9, :cond_10

    :cond_f
    const/4 v2, 0x1

    goto :goto_a

    :cond_10
    const/4 v2, 0x0

    :goto_a
    move/from16 v19, v3

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_11

    iget-boolean v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-nez v3, :cond_11

    if-eqz v17, :cond_11

    if-eqz v9, :cond_11

    const/4 v3, 0x1

    goto :goto_b

    :cond_11
    const/4 v3, 0x0

    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move/from16 v23, v6

    move/from16 v22, v7

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    move-object/from16 v24, v8

    move/from16 v25, v9

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_12

    iget-wide v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    sub-long v6, v20, v6

    const-wide/16 v26, 0x7530

    cmp-long v6, v6, v26

    if-gtz v6, :cond_12

    const/4 v6, 0x1

    goto :goto_c

    :cond_12
    const/4 v6, 0x0

    :goto_c
    if-eqz v6, :cond_13

    if-eqz v17, :cond_13

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v7

    if-nez v7, :cond_13

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v7, :cond_13

    iput-wide v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mPendingPanicGestureUptime:J

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->showTransient()V

    invoke-static {v5}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v7

    if-nez v7, :cond_13

    iget-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-nez v7, :cond_13

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v7}, Lcom/android/server/policy/BarController;->showTransient()V

    :cond_13
    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v7}, Lcom/android/server/policy/StatusBarController;->isTransientShowRequested()Z

    move-result v7

    if-eqz v7, :cond_14

    if-nez v2, :cond_14

    if-eqz v15, :cond_14

    const/4 v7, 0x1

    goto :goto_d

    :cond_14
    const/4 v7, 0x0

    :goto_d
    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v8}, Lcom/android/server/policy/BarController;->isTransientShowRequested()Z

    move-result v8

    if-eqz v8, :cond_15

    if-nez v3, :cond_15

    const/4 v8, 0x1

    goto :goto_e

    :cond_15
    const/4 v8, 0x0

    :goto_e
    if-nez v7, :cond_16

    if-nez v8, :cond_16

    iget-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v9, :cond_17

    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->clearClearableFlagsLw()V

    and-int/lit8 v5, v5, -0x8

    :cond_17
    and-int/lit16 v9, v5, 0x800

    if-eqz v9, :cond_18

    const/4 v9, 0x1

    goto :goto_f

    :cond_18
    const/4 v9, 0x0

    :goto_f
    move/from16 v28, v4

    and-int/lit16 v4, v5, 0x1000

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    goto :goto_10

    :cond_19
    const/4 v4, 0x0

    :goto_10
    if-nez v9, :cond_1b

    if-eqz v4, :cond_1a

    goto :goto_11

    :cond_1a
    const/16 v16, 0x0

    goto :goto_12

    :cond_1b
    :goto_11
    const/16 v16, 0x1

    :goto_12
    if-eqz v17, :cond_1c

    if-nez v16, :cond_1c

    move/from16 v29, v4

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v4

    move/from16 v30, v6

    const/16 v6, 0x7e6

    invoke-virtual {v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v6

    if-le v4, v6, :cond_1d

    and-int/lit8 v5, v5, -0x3

    goto :goto_13

    :cond_1c
    move/from16 v29, v4

    move/from16 v30, v6

    :cond_1d
    :goto_13
    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v2, v1, v5}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    move-result v4

    invoke-direct {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v5

    invoke-direct {v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->isImmersiveMode(I)Z

    move-result v6

    if-eqz p1, :cond_1f

    if-eq v5, v6, :cond_1f

    move/from16 v31, v2

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->disableImmersiveMode(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_1e

    sget-boolean v25, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-nez v25, :cond_1e

    move/from16 v32, v5

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    move/from16 v33, v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v7

    move/from16 v34, v8

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/policy/PhoneWindowManager;->isNavBarEmpty(I)Z

    move-result v8

    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/server/policy/ImmersiveModeConfirmation;->immersiveModeChangedLw(Ljava/lang/String;ZZZ)V

    goto :goto_14

    :cond_1e
    move/from16 v32, v5

    move/from16 v33, v7

    move/from16 v34, v8

    goto :goto_14

    :cond_1f
    move/from16 v31, v2

    move/from16 v32, v5

    move/from16 v33, v7

    move/from16 v34, v8

    :goto_14
    iget-object v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/policy/BarController;->updateVisibilityLw(ZII)I

    move-result v2

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v7

    iget v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    invoke-static {v4, v5, v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->chooseNavigationColorWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v8}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    move-result-object v8

    invoke-static {v2, v5, v7, v8, v4}, Lcom/android/server/policy/PhoneWindowManager;->updateLightNavigationBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v2

    return v2
.end method

.method private updateSystemUiVisibilityLw()I
    .locals 25

    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_0

    :cond_0
    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v3}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-ne v2, v3, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    goto :goto_1

    :cond_2
    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :goto_1
    move-object v0, v2

    if-nez v0, :cond_3

    return v1

    :cond_3
    move-object v10, v0

    move-object v11, v10

    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    iget-boolean v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x0

    invoke-static {v11, v0}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    iget v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    iget v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v2, v2

    and-int/2addr v0, v2

    invoke-virtual {v9, v11}, Lcom/android/server/policy/PhoneWindowManager;->isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v12

    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_2

    :cond_5
    move v2, v1

    :goto_2
    move v13, v2

    if-eqz v12, :cond_6

    if-nez v13, :cond_6

    or-int/lit16 v0, v0, 0x1002

    goto :goto_3

    :cond_6
    if-nez v12, :cond_7

    if-nez v13, :cond_7

    const/high16 v2, 0x20000000

    or-int/2addr v0, v2

    :cond_7
    :goto_3
    iget-boolean v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v2, :cond_8

    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iget v4, v9, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    if-ge v2, v4, :cond_8

    const/4 v2, 0x7

    invoke-static {v11, v2}, Lcom/android/server/policy/PolicyControl;->adjustClearableFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v2

    not-int v2, v2

    and-int/2addr v0, v2

    :cond_8
    move v14, v0

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v9, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v15

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v9, v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateLightStatusBarLw(ILcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v8

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x4

    iget-object v4, v9, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v2, 0x3

    iget-object v4, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getStackBounds(IILandroid/graphics/Rect;)V

    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-direct {v9, v11, v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemBarsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;II)I

    move-result v7

    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    xor-int v16, v7, v0

    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    xor-int v17, v15, v0

    iget v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    xor-int v18, v8, v0

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v11, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v18, :cond_9

    iget-boolean v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-ne v0, v4, :cond_9

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-ne v0, v2, :cond_9

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastNonDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackBounds:Landroid/graphics/Rect;

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    iput v7, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iput v15, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFullscreenStackSysUiFlags:I

    iput v8, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastDockedStackSysUiFlags:I

    iput-boolean v4, v9, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-interface {v11}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    iput-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    new-instance v5, Landroid/graphics/Rect;

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mNonDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/graphics/Rect;

    iget-object v0, v9, Lcom/android/server/policy/PhoneWindowManager;->mDockedStackBounds:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v2, :cond_a

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    if-eqz v2, :cond_a

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sget-boolean v2, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    if-eqz v2, :cond_a

    iget-object v2, v9, Lcom/android/server/policy/PhoneWindowManager;->mOemGestureButton:Lcom/android/server/policy/OemGestureButton;

    sput-boolean v1, Lcom/android/server/policy/OemGestureButton;->mGestureButtonGoingHome:Z

    const/high16 v0, 0x10000000

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_a

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GestureButton: add STATUS_BAR_UNHIDE for top="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move/from16 v19, v0

    if-eqz v12, :cond_c

    if-eqz v13, :cond_b

    goto :goto_4

    :cond_b
    and-int/lit16 v0, v7, -0x1003

    goto :goto_5

    :cond_c
    :goto_4
    move v0, v7

    :goto_5
    or-int v20, v19, v0

    iget-object v3, v9, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$23;

    move-object v0, v2

    move-object v1, v9

    move-object v9, v2

    move/from16 v2, v20

    move-object/from16 v21, v10

    move-object v10, v3

    move v3, v15

    move/from16 v22, v4

    move v4, v8

    move/from16 v23, v7

    move-object v7, v11

    move/from16 v24, v8

    move/from16 v8, v22

    invoke-direct/range {v0 .. v8}, Lcom/android/server/policy/PhoneWindowManager$23;-><init>(Lcom/android/server/policy/PhoneWindowManager;IIILandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Z)V

    invoke-virtual {v10, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v16
.end method

.method private updateWakeGestureListenerLp()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->shouldEnableWakeGestureLp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->requestWakeUpTrigger()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->cancelWakeUpTrigger()V

    :goto_0
    return-void
.end method

.method private updateWindowSleepToken()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAcquireSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mReleaseSleepTokenRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastWindowSleepTokenNeeded:Z

    return-void
.end method

.method private static veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "VERY_LONG_PRESS_POWER_GLOBAL_ACTIONS"

    return-object v0

    :pswitch_1
    const-string v0, "VERY_LONG_PRESS_POWER_NOTHING"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private wakeUp(JZLjava/lang/String;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez p3, :cond_0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "theater_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1, p1, p2, p4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    const/4 v1, 0x1

    return v1
.end method

.method private wakeUpFromPowerKey(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    const-string v1, "android.policy:POWER"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public addSplashScreen(Landroid/os/IBinder;Ljava/lang/String;ILandroid/content/res/CompatibilityInfo;Ljava/lang/CharSequence;IIIILandroid/content/res/Configuration;I)Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p10

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return-object v8

    :cond_0
    if-nez v3, :cond_1

    return-object v8

    :cond_1
    const/4 v9, 0x0

    move-object v10, v8

    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-boolean v11, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_15
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    if-nez v11, :cond_2

    :try_start_1
    sget-boolean v11, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v11, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    move/from16 v11, p11

    goto/16 :goto_1e

    :catch_0
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    move/from16 v11, p11

    goto/16 :goto_18

    :catch_1
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    move/from16 v11, p11

    goto/16 :goto_1c

    :cond_2
    :goto_0
    :try_start_2
    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "addStartingWindow "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": nonLocalizedLabel="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " theme="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_15
    .catchall {:try_start_2 .. :try_end_2} :catchall_d

    :cond_3
    move/from16 v11, p11

    :try_start_3
    invoke-direct {v1, v0, v11}, Lcom/android/server/policy/PhoneWindowManager;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v12
    :try_end_3
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_13
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    if-nez v12, :cond_5

    nop

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_4

    const-string v13, "WindowManager"

    const-string/jumbo v14, "view not successfully added to wm, removing view"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_4
    return-object v8

    :cond_5
    move-object v13, v12

    :try_start_4
    invoke-virtual {v13}, Landroid/content/Context;->getThemeResId()I

    move-result v0
    :try_end_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-ne v4, v0, :cond_6

    if-eqz v6, :cond_7

    :cond_6
    const/4 v0, 0x4

    :try_start_5
    invoke-virtual {v13, v3, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    move-object v13, v0

    invoke-virtual {v13, v4}, Landroid/content/Context;->setTheme(I)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    goto/16 :goto_1e

    :catch_2
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    goto/16 :goto_18

    :catch_3
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    goto/16 :goto_1c

    :catch_4
    move-exception v0

    :cond_7
    :goto_1
    const/4 v14, 0x1

    if-eqz v7, :cond_b

    :try_start_6
    sget-object v15, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {v7, v15}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v15

    if-nez v15, :cond_b

    sget-boolean v15, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z
    :try_end_6
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v15, :cond_8

    :try_start_7
    const-string v15, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addSplashScreen: creating context based on overrideConfig"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for splash screen"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_8
    :try_start_8
    invoke-virtual {v13, v7}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->setTheme(I)V

    sget-object v8, Lcom/android/internal/R$styleable;->Window:[I

    invoke-virtual {v0, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v8

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v16

    move/from16 v15, v16

    if-eqz v15, :cond_a

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v16, :cond_a

    sget-boolean v16, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v16, :cond_9

    const-string v14, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-object/from16 v17, v9

    :try_start_9
    const-string v9, "addSplashScreen: apply overrideConfig"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " to starting window resId="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_9
    move-object/from16 v17, v9

    :goto_2
    move-object v4, v0

    move-object v13, v4

    goto :goto_3

    :cond_a
    move-object/from16 v17, v9

    :goto_3
    invoke-virtual {v8}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v15, p8

    goto/16 :goto_15

    :catch_5
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v15, p8

    goto/16 :goto_17

    :catch_6
    move-exception v0

    move-object/from16 v17, v9

    move/from16 v15, p8

    goto/16 :goto_1b

    :cond_b
    move-object/from16 v17, v9

    :goto_4
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    invoke-direct {v0, v13}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    move-object v4, v0

    const/4 v0, 0x1

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setIsStartingWindow(Z)V

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Landroid/content/res/Resources;->getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v8, v0

    if-eqz v8, :cond_c

    const/4 v0, 0x1

    invoke-virtual {v4, v8, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v4, v5, v0}, Lcom/android/internal/policy/PhoneWindow;->setTitle(Ljava/lang/CharSequence;Z)V

    :goto_5
    const/4 v0, 0x3

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/PhoneWindow;->setType(I)V

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9
    :try_end_9
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_9 .. :try_end_9} :catch_12
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_11
    .catchall {:try_start_9 .. :try_end_9} :catchall_b

    :try_start_a
    iget-boolean v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-eqz v14, :cond_d

    const/high16 v14, 0x80000

    or-int v14, p9, v14

    goto :goto_6

    :cond_d
    move/from16 v14, p9

    :goto_6
    :try_start_b
    monitor-exit v9
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    or-int/lit8 v9, v14, 0x10

    const/16 v15, 0x8

    or-int/2addr v9, v15

    const/high16 v16, 0x20000

    or-int v9, v9, v16

    or-int/lit8 v18, v14, 0x10

    or-int/lit8 v18, v18, 0x8

    or-int v0, v18, v16

    :try_start_c
    invoke-virtual {v4, v9, v0}, Lcom/android/internal/policy/PhoneWindow;->setFlags(II)V
    :try_end_c
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_c .. :try_end_c} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move/from16 v9, p7

    :try_start_d
    invoke-virtual {v4, v9}, Lcom/android/internal/policy/PhoneWindow;->setDefaultIcon(I)V
    :try_end_d
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_d .. :try_end_d} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_b
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    move/from16 v15, p8

    :try_start_e
    invoke-virtual {v4, v15}, Lcom/android/internal/policy/PhoneWindow;->setDefaultLogo(I)V

    const/4 v0, -0x1

    invoke-virtual {v4, v0, v0}, Lcom/android/internal/policy/PhoneWindow;->setLayout(II)V

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iput-object v3, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getWindowStyle()Landroid/content/res/TypedArray;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v5, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v6, 0x1

    or-int/2addr v5, v6

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual/range {p4 .. p4}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v5

    if-nez v5, :cond_e

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Splash Screen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v4, v13}, Lcom/android/server/policy/PhoneWindowManager;->addSplashscreenContent(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;)V

    const-string/jumbo v5, "window"

    invoke-virtual {v13, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;
    :try_end_e
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :try_start_f
    invoke-static {v13}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v7

    const/4 v1, 0x2

    if-eq v7, v1, :cond_f

    invoke-virtual {v6, v3}, Landroid/content/res/ThemeController;->checkHasTheme(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string/jumbo v1, "net.oneplus.weather"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v6, v1}, Landroid/content/res/ThemeController;->getCorrectThemeResource([I)I

    move-result v1

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/PhoneWindow;->setStatusBarColor(I)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v1}, Lcom/android/internal/policy/PhoneWindow;->setStartupWindowTheme(ZI)V

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarColor(I)V

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    invoke-virtual {v4, v1, v1}, Lcom/android/internal/policy/PhoneWindow;->setStartupWindowTheme(ZI)V

    :goto_7
    invoke-virtual {v4}, Lcom/android/internal/policy/PhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1
    :try_end_f
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_f .. :try_end_f} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    sget-boolean v7, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    if-eqz v7, :cond_11

    const-string v7, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v4

    const-string v4, "Adding splash screen window for "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " / "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_10

    move-object v4, v1

    goto :goto_8

    :cond_10
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_11
    move-object/from16 v19, v4

    :goto_9
    invoke-interface {v5, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_12

    new-instance v4, Lcom/android/server/policy/SplashScreenSurface;

    invoke-direct {v4, v1, v2}, Lcom/android/server/policy/SplashScreenSurface;-><init>(Landroid/view/View;Landroid/os/IBinder;)V
    :try_end_10
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_7
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_a

    :cond_12
    const/4 v4, 0x0

    :goto_a
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-nez v7, :cond_13

    const-string v7, "WindowManager"

    const-string/jumbo v10, "view not successfully added to wm, removing view"

    invoke-static {v7, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_13
    return-object v4

    :catchall_3
    move-exception v0

    move-object v10, v1

    goto/16 :goto_1f

    :catch_7
    move-exception v0

    move-object v10, v1

    goto :goto_b

    :catch_8
    move-exception v0

    move-object v10, v1

    goto :goto_c

    :catchall_4
    move-exception v0

    goto/16 :goto_1f

    :catch_9
    move-exception v0

    :goto_b
    move-object v9, v5

    goto/16 :goto_18

    :catch_a
    move-exception v0

    :goto_c
    move-object v9, v5

    goto/16 :goto_1c

    :catchall_5
    move-exception v0

    goto :goto_d

    :catch_b
    move-exception v0

    goto :goto_e

    :catch_c
    move-exception v0

    goto :goto_f

    :catchall_6
    move-exception v0

    move/from16 v9, p7

    :goto_d
    move/from16 v15, p8

    goto :goto_11

    :catch_d
    move-exception v0

    move/from16 v9, p7

    :goto_e
    move/from16 v15, p8

    goto :goto_12

    :catch_e
    move-exception v0

    move/from16 v9, p7

    :goto_f
    move/from16 v15, p8

    goto :goto_13

    :catchall_7
    move-exception v0

    move/from16 v15, p8

    move-object/from16 v19, v4

    goto :goto_10

    :catchall_8
    move-exception v0

    move/from16 v15, p8

    move-object/from16 v19, v4

    move/from16 v14, p9

    :goto_10
    :try_start_11
    monitor-exit v9
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :try_start_12
    throw v0
    :try_end_12
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_f
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    :catchall_9
    move-exception v0

    goto :goto_11

    :catch_f
    move-exception v0

    goto :goto_12

    :catch_10
    move-exception v0

    goto :goto_13

    :catchall_a
    move-exception v0

    goto :goto_10

    :catchall_b
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    :goto_11
    move-object/from16 v5, v17

    goto/16 :goto_1f

    :catch_11
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    :goto_12
    move-object/from16 v9, v17

    goto :goto_18

    :catch_12
    move-exception v0

    move/from16 v15, p8

    move/from16 v14, p9

    :goto_13
    move-object/from16 v9, v17

    goto :goto_1c

    :catchall_c
    move-exception v0

    move/from16 v15, p8

    goto :goto_14

    :catch_13
    move-exception v0

    move/from16 v15, p8

    goto :goto_16

    :catch_14
    move-exception v0

    move/from16 v15, p8

    goto :goto_1a

    :catchall_d
    move-exception v0

    move/from16 v15, p8

    move/from16 v11, p11

    :goto_14
    move-object/from16 v17, v9

    :goto_15
    move/from16 v14, p9

    move-object/from16 v5, v17

    goto :goto_1f

    :catch_15
    move-exception v0

    move/from16 v15, p8

    move/from16 v11, p11

    :goto_16
    move-object/from16 v17, v9

    :goto_17
    move/from16 v14, p9

    :goto_18
    :try_start_13
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " failed creating starting window"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_14

    :goto_19
    const-string v0, "WindowManager"

    const-string/jumbo v1, "view not successfully added to wm, removing view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v9, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_1d

    :catch_16
    move-exception v0

    move/from16 v15, p8

    move/from16 v11, p11

    :goto_1a
    move-object/from16 v17, v9

    :goto_1b
    move/from16 v14, p9

    :goto_1c
    :try_start_14
    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " already running, starting window not displayed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    if-eqz v10, :cond_14

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_19

    :cond_14
    :goto_1d
    const/4 v1, 0x0

    return-object v1

    :catchall_e
    move-exception v0

    :goto_1e
    move-object v5, v9

    :goto_1f
    if-eqz v10, :cond_15

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_15

    const-string v1, "WindowManager"

    const-string/jumbo v4, "view not successfully added to wm, removing view"

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5, v10}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_15
    throw v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1000000
        -0x1
    .end array-data
.end method

.method public adjustConfigurationLw(Landroid/content/res/Configuration;II)V
    .locals 3

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHaveBuiltInKeyboard:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne p2, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iput v2, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-nez v0, :cond_2

    iput v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v1, :cond_3

    if-ne p3, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isHidden(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iput v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    :cond_4
    return-void
.end method

.method public adjustSystemUiVisibilityLw(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/StatusBarController;->adjustSystemUiVisibilityLw(II)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/policy/BarController;->adjustSystemUiVisibilityLw(II)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    not-int v0, v0

    and-int/2addr v0, p1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    not-int v1, v1

    and-int/2addr v0, v1

    return v0
.end method

.method public adjustWindowParamsLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 6

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_8

    const/16 v4, 0x7dd

    if-eq v2, v4, :cond_7

    const/16 v4, 0x7df

    if-eq v2, v4, :cond_6

    const/16 v4, 0x7e7

    if-eq v2, v4, :cond_7

    const/16 v1, 0x7f4

    if-eq v2, v1, :cond_5

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    const-wide/16 v4, 0xdac

    if-ltz v1, :cond_3

    iget-wide v1, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    cmp-long v1, v1, v4

    if-lez v1, :cond_4

    :cond_3
    iput-wide v4, p2, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    :cond_4
    const v1, 0x1030004

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_2

    :cond_5
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_6
    :pswitch_1
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x18

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_2

    :cond_7
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_2

    :cond_8
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v1, :cond_9

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x100001

    and-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_9
    :goto_2
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_a

    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x7d5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public allowAppAnimationsLw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 9

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAffectSystemUiFlags()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": affectsSystemUi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p4}, Lcom/android/server/policy/PhoneWindowManager;->applyKeyguardPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7db

    if-ne v2, v4, :cond_1

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    :cond_1
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_3

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    :cond_2
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v2, v2, 0x1000

    if-eqz v2, :cond_3

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    :cond_3
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v5, 0x0

    if-lt v2, v3, :cond_4

    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ge v2, v4, :cond_4

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v5

    :goto_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v4

    if-eq v4, v3, :cond_6

    const/4 v6, 0x4

    if-ne v4, v6, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_d

    if-eqz v0, :cond_d

    and-int/lit16 v6, v1, 0x800

    if-eqz v6, :cond_7

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    :cond_7
    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7e7

    if-ne v6, v7, :cond_9

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v6, :cond_8

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hasDrawnLw()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/4 v2, 0x1

    :cond_9
    if-eqz v2, :cond_d

    if-nez p3, :cond_d

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_d

    if-eqz v5, :cond_d

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_a

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Fullscreen window: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_b

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FP_ACCELERATE: top full app win="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_c

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_c
    and-int/lit8 v6, v1, 0x1

    if-eqz v6, :cond_d

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    :cond_d
    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x7ef

    if-ne v6, v7, :cond_f

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_e

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_e

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_e
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_f

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_f

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_f
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_10

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v6

    if-eqz v6, :cond_10

    if-eqz v5, :cond_10

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_10
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v7, 0x3

    if-nez v6, :cond_11

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    if-nez p3, :cond_11

    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v6

    if-eqz v6, :cond_11

    if-ne v4, v7, :cond_11

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_11

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_11
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-nez v6, :cond_12

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDimming()Z

    move-result v6

    if-eqz v6, :cond_12

    if-ne v4, v7, :cond_12

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    :cond_12
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_13

    iget v6, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v7, 0x200000

    and-int/2addr v6, v7

    if-eqz v6, :cond_13

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->canAcquireSleepToken()Z

    move-result v6

    if-eqz v6, :cond_13

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    :cond_13
    return-void
.end method

.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 25

    move-object/from16 v15, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/DisplayFrames;->onBeginLayout()V

    iget v0, v14, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iput v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mDisplayRotation:I

    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    const/high16 v0, 0x10000000

    iput v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    const/4 v0, -0x1

    iput v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    sget-object v13, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v12, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v11, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v9, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v11, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v12, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v13, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    iget v1, v14, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    if-nez v1, :cond_10

    iget v8, v15, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    and-int/lit8 v1, v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const v4, -0x7fff8000

    and-int/2addr v4, v8

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    and-int/lit16 v5, v8, 0x800

    if-eqz v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v2

    :goto_2
    move/from16 v17, v5

    and-int/lit16 v5, v8, 0x1000

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    move/from16 v18, v5

    if-nez v17, :cond_5

    if-eqz v18, :cond_4

    goto :goto_4

    :cond_4
    move v5, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v3

    :goto_5
    move/from16 v19, v5

    if-nez v18, :cond_6

    move v5, v3

    goto :goto_6

    :cond_6
    move v5, v2

    :goto_6
    and-int/2addr v4, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v15, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v5, :cond_7

    move v5, v3

    goto :goto_7

    :cond_7
    move v5, v2

    :goto_7
    move/from16 v20, v5

    if-nez v20, :cond_8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->areTranslucentBarsAllowed()Z

    move-result v5

    and-int/2addr v4, v5

    :cond_8
    move/from16 v21, v4

    if-nez v20, :cond_9

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_9

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v4, v0, :cond_9

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v4, v0, :cond_9

    move v7, v3

    goto :goto_8

    :cond_9
    move v7, v2

    :goto_8
    if-nez v1, :cond_b

    if-eqz v19, :cond_a

    goto :goto_9

    :cond_a
    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v0, :cond_c

    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    const-string/jumbo v5, "nav_input_consumer"

    new-instance v6, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;

    invoke-direct {v6, v15}, Lcom/android/server/policy/-$$Lambda$PhoneWindowManager$t7VYWSe1_o50lulMFjRyMrKODrg;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-interface {v0, v4, v5, v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    goto :goto_a

    :cond_b
    :goto_9
    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-eqz v0, :cond_c

    iget-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x13

    iget-object v6, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-virtual {v4, v5, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-object v0, v15, Lcom/android/server/policy/PhoneWindowManager;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    :cond_c
    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    xor-int/2addr v0, v3

    or-int/2addr v0, v1

    const/4 v1, 0x0

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_d

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x901

    if-ne v4, v5, :cond_d

    iget-object v4, v15, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v3

    goto :goto_b

    :cond_d
    move v4, v2

    :goto_b
    move/from16 v22, v4

    if-nez v22, :cond_e

    move v2, v3

    nop

    :cond_e
    and-int v23, v0, v2

    move-object v0, v15

    move-object v1, v14

    move/from16 v2, p2

    move-object v3, v9

    move/from16 v4, v23

    move/from16 v5, v21

    move/from16 v6, v19

    invoke-direct/range {v0 .. v7}, Lcom/android/server/policy/PhoneWindowManager;->layoutNavigationBar(Lcom/android/server/wm/DisplayFrames;ILandroid/graphics/Rect;ZZZZ)Z

    move-result v0

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v1, :cond_f

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mDock rect:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v14, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move v1, v8

    move-object v8, v15

    move-object v2, v9

    move-object v9, v14

    move-object v3, v10

    move-object v10, v13

    move-object v4, v11

    move-object v11, v12

    move-object v5, v12

    move-object v12, v4

    move-object v6, v13

    move-object v13, v3

    move-object/from16 v24, v3

    move-object v3, v14

    move-object v14, v2

    move v15, v1

    move/from16 v16, v20

    invoke-direct/range {v8 .. v16}, Lcom/android/server/policy/PhoneWindowManager;->layoutStatusBar(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IZ)Z

    move-result v8

    or-int/2addr v0, v8

    if-eqz v0, :cond_11

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    goto :goto_c

    :cond_10
    move-object v2, v9

    move-object/from16 v24, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v3, v14

    :cond_11
    :goto_c
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6, v5, v2}, Lcom/android/server/policy/PhoneWindowManager;->layoutScreenDecorWindows(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-le v1, v7, :cond_12

    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    :cond_12
    return-void
.end method

.method public beginPostLayoutPolicyLw(II)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopDockedOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowSleepTokenNeeded:Z

    return-void
.end method

.method public canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mIsCustomFP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFocusActivityWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v0, v2, :cond_2

    const/16 v3, 0x7dd

    if-eq v0, v3, :cond_2

    const/16 v3, 0x7e3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x7e7

    if-eq v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v2

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public canDismissBootAnimation()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public checkAddPermission(Landroid/view/WindowManager$LayoutParams;[I)I
    .locals 9

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    const/4 v4, -0x8

    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    return v4

    :cond_1
    const/4 v5, -0x1

    aput v5, p2, v3

    const/16 v5, 0xbb7

    const/16 v6, 0x7d0

    const/16 v7, 0x3e8

    if-lt v0, v2, :cond_2

    const/16 v2, 0x63

    if-le v0, v2, :cond_4

    :cond_2
    if-lt v0, v7, :cond_3

    const/16 v2, 0x7cf

    if-le v0, v2, :cond_4

    :cond_3
    if-lt v0, v6, :cond_11

    if-le v0, v5, :cond_4

    goto/16 :goto_7

    :cond_4
    if-lt v0, v6, :cond_10

    if-le v0, v5, :cond_5

    goto/16 :goto_6

    :cond_5
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x7d5

    if-eq v0, v2, :cond_8

    const/16 v2, 0x7db

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7dd

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7e7

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7f3

    if-eq v0, v2, :cond_7

    const/16 v2, 0x7f5

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v2, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    move v3, v4

    :goto_1
    return v3

    :cond_7
    :pswitch_0
    return v3

    :cond_8
    const/16 v2, 0x2d

    aput v2, p2, v3

    return v3

    :cond_9
    const/16 v2, 0x18

    aput v2, p2, v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-ne v5, v7, :cond_a

    return v3

    :cond_a
    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iget-object v6, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_e

    const/16 v6, 0x7f6

    if-eq v0, v6, :cond_b

    iget v6, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_b

    goto :goto_4

    :cond_b
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    aget v7, p2, v3

    iget-object v8, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, v2, v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_d

    goto :goto_3

    :pswitch_1
    iget v7, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x17

    if-ge v7, v8, :cond_c

    return v3

    :cond_c
    return v4

    :pswitch_2
    return v3

    :cond_d
    nop

    move v3, v4

    :goto_3
    return v3

    :cond_e
    :goto_4
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_f

    goto :goto_5

    :cond_f
    move v3, v4

    :goto_5
    return v3

    :cond_10
    :goto_6
    return v3

    :cond_11
    :goto_7
    const/16 v2, -0xa

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x7ee
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public checkShowToOwnerOnly(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 3

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7ee

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7f5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    packed-switch v0, :pswitch_data_3

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    return v2

    :cond_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :pswitch_data_0
    .packed-switch 0x7d0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7d7
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7e1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7ea
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public clearQuickPaySwitch(Z)V
    .locals 0

    return-void
.end method

.method public createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;
    .locals 5

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a0059

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    const v1, 0x10a005a

    goto :goto_0

    :cond_1
    const v1, 0x10a0058

    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLogDecelerateInterpolator:Lcom/android/server/policy/LogDecelerateInterpolator;

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method createHomeDockIntent()Landroid/content/Intent;
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    :cond_4
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const v4, 0x10080

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v3, v0, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    :cond_6
    if-eqz v2, :cond_7

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "android.dock_home"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v1

    iget-object v1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0

    :cond_7
    return-object v1
.end method

.method public createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const v1, 0x10a005d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method disableImmersiveMode(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.android.engineeringmode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oem.autotest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.factorymode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.synaptics.forcebuttontest"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.oneplus.aod"

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

.method public dismissKeyguardLw(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "PWM.dismissKeyguardLw"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Lcom/android/internal/policy/IKeyguardDismissCallback;->onDismissError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Failed to call callback"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method dispatchMediaKeyRepeatWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    nop

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    or-int/lit16 v2, v2, 0x80

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v3, v2}, Landroid/view/KeyEvent;->changeTimeRepeat(Landroid/view/KeyEvent;JII)Landroid/view/KeyEvent;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchMediaKeyRepeatWithWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method dispatchMediaKeyWithWakeLock(Landroid/view/KeyEvent;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchMediaKeyWithWakeLock: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v2, "dispatchMediaKeyWithWakeLock: canceled repeat"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManager;->dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHavePendingMediaKeyRepeatWithWakeLock:Z

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    return-void
.end method

.method dispatchMediaKeyWithWakeLockToAudioService(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    :cond_0
    return-void
.end method

.method public dispatchUnhandledKey(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v3, :cond_0

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unhandled key: win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", flags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", keyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", scanCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", metaState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", repeatCount="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", policyFlags="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit16 v4, v4, 0x400

    if-nez v4, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_2

    invoke-virtual {v4, v5, v6}, Landroid/view/KeyCharacterMap;->getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v9

    goto :goto_1

    :cond_2
    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v9, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/KeyCharacterMap$FallbackAction;

    :goto_1
    if-eqz v9, :cond_6

    sget-boolean v10, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v10, :cond_3

    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Fallback: keyCode="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " metaState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v9, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v10

    or-int/lit16 v10, v10, 0x400

    nop

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v15

    iget v8, v9, Landroid/view/KeyCharacterMap$FallbackAction;->keyCode:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v17

    move-object/from16 v24, v3

    iget v3, v9, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getSource()I

    move-result v22

    const/16 v23, 0x0

    move/from16 v16, v8

    move/from16 v18, v3

    move/from16 v21, v10

    invoke-static/range {v11 .. v23}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v3

    invoke-direct {v0, v1, v3, v2}, Lcom/android/server/policy/PhoneWindowManager;->interceptFallback(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v3}, Landroid/view/KeyEvent;->recycle()V

    const/4 v3, 0x0

    :cond_4
    if-eqz v7, :cond_5

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    const/4 v11, 0x1

    if-ne v8, v11, :cond_7

    iget-object v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mFallbackActions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {v9}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    goto :goto_2

    :cond_6
    move-object/from16 v24, v3

    move-object/from16 v3, v24

    :cond_7
    :goto_2
    sget-boolean v4, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v4, :cond_9

    if-nez v3, :cond_8

    const-string v4, "WindowManager"

    const-string v5, "No fallback."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Performing fallback: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-object v3
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "debuglog"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "1"

    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_SPLASH_SCREEN:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->SHOW_SPLASH_SCREENS:Z

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " change "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " log to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSafeMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemReady="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mSystemBooted="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->lidStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mLidOpenRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCameraLensCoverState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->cameraLensStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mHdmiPlugged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mResettingSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mResettingSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mForceClearedSystemUiFlags=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastFocusNeedsMenu="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastFocusNeedsMenu:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_3
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWakeGestureEnabledSetting="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSupportAutoRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mOrientationSensorEnabled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUiMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-static {v0}, Landroid/content/res/Configuration;->uiModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDockMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    invoke-static {v0}, Landroid/content/Intent;->dockStateToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnableCarDockHomeCapture="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mCarDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDeskDockRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUserRotationMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy;->userRotationModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mUserRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mAllowAllRotations="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->allowAllRotationsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurrentAppOrientation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->screenOrientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCarDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDeskDockEnablesAccelerometer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidKeyboardAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidNavigationAccessibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLidControlsScreenLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLidControlsSleep="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressOnBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoubleTapOnHomeBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->doubleTapOnHomeBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->longPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mVeryLongPressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->veryLongPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDoublePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTriplePressOnPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->multiPressOnPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortPressOnSleepBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnSleepBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShortPressOnWindowBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->shortPressOnWindowBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowStartActivityForLongPressOnPowerDuringSetup="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHasSoftInput="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDismissImeOnBackKeyPressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIncallPowerBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallPowerBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mIncallBackBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->incallBackBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mEndcallBehavior="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->endcallBehaviorToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHomePressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAwake="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, "mScreenOnEarly="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mScreenOnFully="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWindowManagerDrawComplete="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDockLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mStatusBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mShowingDream="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDreamingLockscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDreamingSleepToken="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepToken:Landroid/app/ActivityManagerInternal$SleepToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastInputMethodTargetWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_6

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v0, " isStatusBarKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isStatusBarKeyguard()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_7

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNavigationBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_8

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v0, :cond_9

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFocusedApp="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_9
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_a

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_b

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopFullscreenOpaqueOrDimmingWindowState="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-eqz v0, :cond_c

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForcingShowNavBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string/jumbo v0, "mForcingShowNavBarLayer="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBarLayer:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_c
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mTopIsFullscreen="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mKeyguardOccludedChanged="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mPendingKeyguardOccluded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mForceStatusBar="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mForceStatusBarFromKeyguard="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAllowLockscreenWhenOn="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowLockscreenWhenOn:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mLockScreenTimeout="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mLockScreenTimerActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLandscapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mSeascapeRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPortraitRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mUpsideDownRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDemoHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mDemoHdmiRotationLock="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mUndockedHdmiRotation="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    invoke-static {v0}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_d

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAccessibilityTvKey1Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey1Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAccessibilityTvKey2Pressed="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvKey2Pressed:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAccessibilityTvScheduled="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityTvScheduled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_d
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLockPatternVibePattern="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    invoke-static {v0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_e

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_e
    const-string/jumbo v0, "mPreShowSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/GlobalKeyManager;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/StatusBarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/BarController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/android/server/policy/PolicyControl;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/BurnInProtectionHelper;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_11
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_12
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Looper state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public enableKeyguard(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setKeyguardEnabled(Z)V

    :cond_0
    return-void
.end method

.method public enableScreenAfterBoot()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->readLidState()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    return-void
.end method

.method public exitKeyguardSecurely(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    :cond_0
    return-void
.end method

.method public finishPostLayoutPolicyLw()I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    const/16 v4, 0xf

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    if-nez v3, :cond_2

    iput-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingSleepTokenNeeded:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v6, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v3, :cond_17

    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_3

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " forcefkg="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " top="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v3, :cond_4

    move v3, v6

    goto :goto_2

    :cond_4
    move v3, v5

    :goto_2
    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v5}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v4, v6}, Lcom/android/server/policy/StatusBarController;->setShowTransparent(Z)V

    :cond_6
    :goto_3
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_7

    iget v7, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v8, :cond_7

    move v7, v6

    goto :goto_4

    :cond_7
    move v7, v5

    :goto_4
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->topAppHidesStatusBar()Z

    move-result v8

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v9, :cond_f

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarTransparent:Z

    if-nez v9, :cond_f

    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v9, :cond_16

    move v1, v8

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_9
    if-eqz v1, :cond_c

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v9

    if-nez v9, :cond_c

    sget-boolean v6, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_a

    const-string v6, "WindowManager"

    const-string v9, "** HIDING status bar"

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v6, v5}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_b

    or-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_b
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_16

    const-string v5, "WindowManager"

    const-string v6, "Status bar already hiding"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_c
    sget-boolean v5, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v5, :cond_d

    const-string v5, "WindowManager"

    const-string v9, "** SHOWING status bar: top is not fullscreen"

    invoke-static {v5, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_e

    or-int/lit8 v0, v0, 0x1

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_7

    :cond_f
    :goto_5
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v9, :cond_10

    const-string v9, "WindowManager"

    const-string v10, "Showing status bar: forced"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9, v6}, Lcom/android/server/policy/StatusBarController;->setBarShowingLw(Z)Z

    move-result v9

    if-eqz v9, :cond_11

    or-int/lit8 v0, v0, 0x1

    :cond_11
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v9, :cond_12

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v9

    if-eqz v9, :cond_12

    move v9, v6

    goto :goto_6

    :cond_12
    move v9, v5

    :goto_6
    move v1, v9

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    if-nez v9, :cond_13

    if-eqz v7, :cond_14

    :cond_13
    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v9}, Lcom/android/server/policy/StatusBarController;->isTransientShowing()Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/policy/StatusBarController;->updateVisibilityLw(ZII)I

    :cond_14
    if-eqz v7, :cond_16

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_16

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_16

    const-string v5, "com.oneplus.aod"

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v9}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_16

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-eqz v5, :cond_15

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v5, :cond_16

    :cond_15
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v5

    if-nez v5, :cond_16

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v5, v6}, Lcom/android/server/policy/BarController;->setBarShowingLw(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    or-int/lit8 v0, v0, 0x1

    :cond_16
    :goto_7
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v5, v8}, Lcom/android/server/policy/StatusBarController;->setTopAppHidesStatusBar(Z)V

    :cond_17
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eq v3, v1, :cond_19

    if-nez v1, :cond_18

    or-int/lit8 v0, v0, 0x1

    :cond_18
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    :cond_19
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v3

    const v4, -0x3fff7ff2

    and-int/2addr v3, v4

    if-eqz v3, :cond_1a

    or-int/lit8 v0, v0, 0x1

    :cond_1a
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    if-eq v3, v4, :cond_1b

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastShowingDream:Z

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->notifyShowingDreamChanged()V

    :cond_1b
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWindowSleepToken()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    return v0
.end method

.method public finishedGoingToSleep(I)V
    .locals 4

    const/4 v0, 0x0

    const v1, 0x11170

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished going to sleep... (why="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "screen_timeout"

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedGoingToSleep(IZ)V

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraGestureTriggeredDuringGoingToSleep:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusPerfManager;->autoAcquireOrRelease(Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusDuallteManager;->screenStateChangedEvent(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finishedWakingUp()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Finished waking up..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onFinishedWakingUp()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusPerfManager;->getInstance()Lcom/android/server/am/OnePlusPerfManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->autoAcquireOrRelease(Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->screenStateChangedEvent(Z)V

    :cond_2
    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockSensorForAppLaunched:Z

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    const-string v1, "com.android.settings/com.android.settings.FallbackHome"

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App launched, no need to lock sensor for newFocus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockSensorForAppLaunched:Z

    :cond_1
    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-eq v1, v2, :cond_2

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreShowSurface:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultHomeApp:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    if-eq v3, v1, :cond_3

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsNeedToHideNavBar:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    return v2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I

    move-result v1

    const v3, -0x3fff7ff2

    and-int/2addr v1, v3

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method getAudioManagerInternal()Landroid/media/AudioManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Landroid/media/AudioManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAudioManagerInternal:Landroid/media/AudioManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .locals 3

    if-nez p5, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    aget v0, v0, p3

    if-eqz p6, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v1

    sub-int/2addr v1, v0

    return v1

    :cond_1
    return p2
.end method

.method public getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .locals 1

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    return v0
.end method

.method protected getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLayoutHintLw(Landroid/view/WindowManager$LayoutParams;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    const/4 v9, 0x0

    invoke-static {v9, v1}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v10

    iget v11, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-static {v9, v1}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v9

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v12

    or-int/2addr v12, v9

    iget v13, v3, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v14, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v15, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    const/16 v16, 0x0

    move/from16 v17, v9

    if-eqz v7, :cond_0

    invoke-direct {v0, v1, v10}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v18, :cond_4

    iget-object v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v9

    if-lez v9, :cond_4

    if-nez v13, :cond_1

    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-ne v13, v1, :cond_2

    iget v1, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    if-ne v13, v1, :cond_3

    iget v1, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->top:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    if-ne v13, v1, :cond_4

    iget v1, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v9

    iput v1, v7, Landroid/graphics/Rect;->left:I

    :cond_4
    :goto_1
    and-int/lit16 v1, v10, 0x100

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    move/from16 v1, v16

    :goto_2
    if-eqz v1, :cond_6

    const/high16 v9, 0x10000

    and-int/2addr v9, v10

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    goto :goto_3

    :cond_6
    move/from16 v9, v16

    :goto_3
    const/high16 v19, 0x400000

    and-int v19, v11, v19

    if-eqz v19, :cond_7

    const/16 v19, 0x1

    goto :goto_4

    :cond_7
    move/from16 v19, v16

    :goto_4
    if-eqz v9, :cond_f

    if-nez v19, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v21

    if-eqz v21, :cond_8

    and-int/lit16 v7, v12, 0x200

    if-eqz v7, :cond_8

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move/from16 v22, v7

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_5

    :cond_8
    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move/from16 v23, v7

    iget-object v7, v3, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v23

    :goto_5
    move/from16 v24, v9

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move/from16 v25, v11

    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    move/from16 v26, v13

    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v13, v22, v13

    move/from16 v27, v1

    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v7, v1

    invoke-virtual {v6, v9, v11, v13, v1}, Landroid/graphics/Rect;->set(IIII)V

    and-int/lit16 v1, v12, 0x100

    if-eqz v1, :cond_a

    and-int/lit16 v1, v10, 0x400

    if-eqz v1, :cond_9

    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v22, v11

    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mStableFullscreen:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    invoke-virtual {v5, v1, v9, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    :cond_9
    invoke-virtual/range {p5 .. p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_a
    and-int/lit16 v1, v10, 0x400

    if-nez v1, :cond_c

    const/high16 v1, 0x2000000

    and-int/2addr v1, v10

    if-eqz v1, :cond_b

    goto :goto_6

    :cond_b
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v9, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v11, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v11, v22, v11

    iget-object v13, v3, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    invoke-virtual {v5, v1, v9, v11, v13}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    :cond_c
    :goto_6
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    :goto_7
    if-eqz v2, :cond_d

    invoke-direct {v0, v2, v5, v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-direct {v0, v2, v6, v14, v15}, Lcom/android/server/policy/PhoneWindowManager;->calculateRelevantTaskInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_d
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v1, :cond_e

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-nez v1, :cond_e

    const/16 v20, 0x1

    goto :goto_8

    :cond_e
    move/from16 v20, v16

    :goto_8
    return v20

    :cond_f
    move/from16 v27, v1

    move/from16 v24, v9

    move/from16 v25, v11

    move/from16 v26, v13

    if-eqz v27, :cond_10

    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_10
    iget-object v1, v3, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_9
    if-eqz v2, :cond_11

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_11
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    sget-object v1, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-virtual {v8, v1}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout;)V

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-nez v1, :cond_12

    const/16 v20, 0x1

    goto :goto_a

    :cond_12
    move/from16 v20, v16

    :goto_a
    return v20
.end method

.method public getMaxWallpaperLayer()I
    .locals 1

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->getWindowLayerFromTypeLw(I)I

    move-result v0

    return v0
.end method

.method public getNavBarPosition()I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    return v0
.end method

.method public getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I
    .locals 3

    move v0, p2

    if-nez p5, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_0

    if-ge p1, p2, :cond_1

    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    if-eqz p6, :cond_2

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_2
    return v0
.end method

.method public getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I
    .locals 3

    move v0, p1

    if-nez p5, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-eqz v1, :cond_0

    if-le p1, p2, :cond_0

    invoke-direct {p0, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    if-eqz p6, :cond_1

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    invoke-virtual {p6}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p2, p3, p1}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarHeight(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/PhoneWindowManager;->getNavigationBarWidth(II)I

    move-result v1

    iput v1, p5, Landroid/graphics/Rect;->left:I

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    iget v0, p5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->left:I

    iget v0, p5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->top:I

    iget v0, p5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->right:I

    iget v0, p5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p4}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p5, Landroid/graphics/Rect;->bottom:I

    :cond_3
    return-void
.end method

.method public getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V
    .locals 2

    invoke-virtual {p5}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/policy/PhoneWindowManager;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget v0, p5, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    aget v1, v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p5, Landroid/graphics/Rect;->top:I

    return-void
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v1, :cond_0

    const-class v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mServiceAquireLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v1, :cond_0

    const-string/jumbo v1, "statusbar"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSystemDecorLayerLw()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method getSystemUiContext()Landroid/content/Context;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method getTelecommService()Landroid/telecom/TelecomManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getUserRotationMode()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2
.end method

.method goHome()Z
    .locals 15

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string v2, "Not going home because user setup is in progress."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    const-string/jumbo v2, "persist.sys.uts-test-mode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    const-string v2, "WindowManager"

    const-string v3, "UTS-TEST-MODE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->stopAppSwitches()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x2

    move-object v6, v2

    invoke-interface/range {v3 .. v14}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    return v1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x2

    invoke-interface/range {v2 .. v13}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v0, :cond_3

    return v1

    :cond_3
    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return v0
.end method

.method protected handleShortPressOnHome()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getHdmiControl()Lcom/android/server/policy/PhoneWindowManager$HdmiControl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$HdmiControl;->turnOnTv()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v1}, Landroid/service/dreams/DreamManagerInternal;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/service/dreams/DreamManagerInternal;->stopDream(Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    return-void
.end method

.method public hasNavigationBar()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    return v0
.end method

.method public hideBootMessages()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public inKeyguardRestrictedKeyInputMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    return v0
.end method

.method public init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iput-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    move-object/from16 v10, p2

    iput-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v11, p3

    iput-object v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    const-class v0, Landroid/hardware/input/InputManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDreamManagerInternal:Landroid/service/dreams/DreamManagerInternal;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v2, "appops"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.watch"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureWatch:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    new-instance v0, Lcom/android/internal/accessibility/AccessibilityShortcutController;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iget v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/accessibility/AccessibilityShortcutController;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112005a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    const-string/jumbo v0, "persist.debug.force_burn_in"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-nez v12, :cond_0

    if-eqz v14, :cond_3

    :cond_0
    if-eqz v14, :cond_2

    const/4 v0, -0x8

    const/16 v2, 0x8

    const/4 v3, -0x8

    const/4 v4, -0x4

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isRoundWindow()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x6

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_0
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move v8, v5

    goto :goto_1

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e001f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const v3, 0x10e001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x10e0020

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x10e001e

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const v6, 0x10e001d

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    move v8, v0

    move v0, v2

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    :goto_1
    new-instance v7, Lcom/android/server/policy/BurnInProtectionHelper;

    move-object v2, v7

    move-object v3, v9

    move v4, v0

    move/from16 v5, v16

    move/from16 v6, v17

    move-object v15, v7

    move/from16 v7, v18

    invoke-direct/range {v2 .. v8}, Lcom/android/server/policy/BurnInProtectionHelper;-><init>(Landroid/content/Context;IIIII)V

    iput-object v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mBurnInProtectionHelper:Lcom/android/server/policy/BurnInProtectionHelper;

    :cond_3
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager$PolicyHandler;-><init>(Lcom/android/server/policy/PhoneWindowManager;Lcom/android/server/policy/PhoneWindowManager$1;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureListener:Lcom/android/server/policy/PhoneWindowManager$MyWakeGestureListener;

    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    :try_start_0
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-interface/range {p2 .. p2}, Landroid/view/IWindowManager;->getDefaultDisplayRotation()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :goto_2
    new-instance v0, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v3}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;-><init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSettingsObserver:Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$SettingsObserver;->observe()V

    new-instance v0, Lcom/android/server/policy/ShortcutManager;

    invoke-direct {v0, v9}, Lcom/android/server/policy/ShortcutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10e0036

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    const/high16 v3, 0x10200000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x112005b

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableCarDockHomeCapture:Z

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.CAR_DOCK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.DESK_DOCK"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v0, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    const-string v2, "android.intent.category.VR_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVrHeadsetHomeIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "power"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mBroadcastWakeLock"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mPowerKeyWakeLock"

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "1"

    const-string/jumbo v2, "ro.debuggable"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200af

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    const v0, 0x10e004e

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    const v0, 0x10e0024

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    const v0, 0x10e0039

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    const v0, 0x10e00a2

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->readRotation(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112002e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidKeyboardAccessibility:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e004d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidNavigationAccessibility:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112007e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsScreenLock:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112007f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112006a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTranslucentDecorEnabled:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    if-nez v0, :cond_5

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120014

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v0, v13

    goto :goto_4

    :cond_5
    :goto_3
    move v0, v3

    :goto_4
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromPowerKey:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120013

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromWakeGesture:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1120076

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGoToSleepOnButtonPressTheaterMode:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x11200b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSupportLongPressPowerWhenNonInteractive:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0051

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnBackBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0095

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnPowerBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0053

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00a4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressOnPowerBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e003b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressOnPowerBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00a1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mTriplePressOnPowerBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e0096

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnSleepBehavior:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e00a5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mVeryLongPressTimeout:I

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x112000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowStartActivityForLongPressOnPowerDuringSetup:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/AudioSystem;->getPlatformType(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    move v0, v3

    goto :goto_5

    :cond_6
    move v0, v13

    :goto_5
    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x1120078

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->readConfigurationDependentBehaviors()V

    const-string v0, "accessibility"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v4, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_7

    const-string v5, "android.intent.extra.DOCK_STATE"

    invoke-virtual {v4, v5, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    :cond_7
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v5

    const-string v5, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mDreamReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mMultiuserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v5, Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v6, Lcom/android/server/policy/PhoneWindowManager$10;

    invoke-direct {v6, v1}, Lcom/android/server/policy/PhoneWindowManager$10;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v5, v9, v6}, Lcom/android/server/policy/SystemGesturesPointerEventListener;-><init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V

    iput-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    new-instance v5, Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/policy/ImmersiveModeConfirmation;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    const-string/jumbo v5, "vibrator"

    invoke-virtual {v9, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    iput-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    new-instance v5, Landroid/content/IntentFilter;

    const-string/jumbo v6, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v9, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107002f

    invoke-static {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressVibePattern:[J

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070016

    invoke-static {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mCalendarDateVibePattern:[J

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107003e

    invoke-static {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mSafeModeEnabledVibePattern:[J

    iget-object v7, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070054

    invoke-static {v7, v8}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v15, "vibrate_on_touch_intensity"

    const/4 v2, -0x2

    invoke-static {v8, v15, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mVibrateOnTouchIntensity:I

    array-length v2, v7

    add-int/2addr v2, v3

    new-array v2, v2, [J

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    iget v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mVibrateOnTouchIntensity:I

    add-int/2addr v8, v3

    const/4 v15, -0x1

    mul-int/2addr v8, v15

    move-object/from16 v19, v4

    int-to-long v3, v8

    aput-wide v3, v2, v13

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    array-length v3, v7

    const/4 v4, 0x1

    invoke-static {v7, v13, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1120069

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    new-instance v2, Lcom/android/server/policy/GlobalKeyManager;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/policy/GlobalKeyManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiState()V

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startedGoingToSleep(I)V

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->finishedGoingToSleep(I)V

    :cond_8
    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v3}, Lcom/android/server/policy/StatusBarController;->getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v3, Lcom/android/server/policy/PhoneWindowManager$11;

    invoke-direct {v3, v1}, Lcom/android/server/policy/PhoneWindowManager$11;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    new-instance v2, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/policy/PhoneWindowManager$12;

    invoke-direct {v4, v1}, Lcom/android/server/policy/PhoneWindowManager$12;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-direct {v2, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;-><init>(Landroid/content/Context;Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method initializeHdmiState()V
    .locals 2

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReadsMask()I

    move-result v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->initializeHdmiStateInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicyMask(I)V

    throw v1
.end method

.method initializeHdmiStateInternal()V
    .locals 9

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mExtEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v2, "mdss_mdp/drm/card"

    invoke-virtual {v1, v2}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/virtual/switch/hdmi/state"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v4, "DEVPATH=/devices/virtual/switch/hdmi"

    invoke-virtual {v1, v4}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v1, "/sys/class/switch/hdmi/state"

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/switch/hdmi/state"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    const/16 v5, 0xf

    new-array v5, v5, [C

    invoke-virtual {v4, v5}, Ljava/io/FileReader;->read([C)I

    move-result v6

    if-le v6, v3, :cond_1

    new-instance v7, Ljava/lang/String;

    add-int/lit8 v8, v6, -0x1

    invoke-direct {v7, v5, v2, v8}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v2

    :goto_0
    move v0, v7

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_4

    :catch_0
    move-exception v5

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v5

    :try_start_2
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move-exception v5

    :try_start_4
    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t read hdmi state from /sys/class/switch/hdmi/state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :goto_2
    if-eqz v4, :cond_2

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v3

    :cond_2
    :goto_3
    throw v2

    :cond_3
    :goto_4
    if-nez v0, :cond_4

    move v2, v3

    nop

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    xor-int/2addr v1, v3

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->setHdmiPlugged(Z)V

    return-void
.end method

.method public interceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)J
    .locals 37

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v10, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v11

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "interceptKeyTi keyCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " down="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " repeatCount="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " keyguardOn="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " mHomePressed="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " canceled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const-wide/16 v8, 0x0

    const-wide/16 v17, -0x1

    if-eqz v0, :cond_5

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_5

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_3

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_3

    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    iget-wide v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    sub-long/2addr v14, v12

    sget-wide v12, Lcom/android/server/policy/PhoneWindowManager;->DOUBLE_CLICK_VOLUME_DEBOUNCE_DELAY_MILLIS:J

    cmp-long v0, v14, v12

    if-gez v0, :cond_2

    return-wide v8

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    sget-wide v22, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long v14, v14, v22

    cmp-long v0, v12, v14

    if-gez v0, :cond_3

    const-wide/16 v8, 0x64

    return-wide v8

    :cond_3
    const/16 v0, 0x19

    if-ne v4, v0, :cond_5

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v0, :cond_5

    if-nez v10, :cond_4

    iput-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    :cond_4
    return-wide v17

    :cond_5
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordEnabled:Z

    const/16 v12, 0x18

    if-eqz v0, :cond_9

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_9

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_7

    iget-wide v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    iget-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    sub-long/2addr v13, v8

    sget-wide v8, Lcom/android/server/policy/PhoneWindowManager;->DOUBLE_CLICK_VOLUME_DEBOUNCE_DELAY_MILLIS:J

    cmp-long v0, v13, v8

    if-gez v0, :cond_6

    const-wide/16 v8, 0x0

    return-wide v8

    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    sget-wide v22, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long v13, v13, v22

    cmp-long v0, v8, v13

    if-gez v0, :cond_7

    const-wide/16 v15, 0x64

    return-wide v15

    :cond_7
    if-ne v4, v12, :cond_9

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_9

    if-nez v10, :cond_8

    const-wide/16 v8, 0x0

    iput-wide v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyConsumed:Z

    :cond_8
    return-wide v17

    :cond_9
    const/4 v8, 0x0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, v8}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->isAccessibilityShortcutAvailable(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_f

    const-string v0, "WindowManager"

    const-string v8, "[Accessibility] isAccessibilityShortcutAvailable"

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    iget-boolean v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    xor-int/2addr v0, v8

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-eqz v0, :cond_a

    iget-wide v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    goto :goto_1

    :cond_a
    iget-wide v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    :goto_1
    sget-wide v20, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long v13, v13, v20

    cmp-long v0, v8, v13

    if-gez v0, :cond_b

    const-string v0, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Accessibility] mScreenshotChordVolumeDownKeyTriggered = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Accessibility] mA11yShortcutChordVolumeUpKeyTriggered = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[Accessibility] mScreenshotChordVolumeDownKeyTime = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v24, v3

    iget-wide v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Accessibility] mA11yShortcutChordVolumeUpKeyTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v25, v5

    move/from16 v26, v6

    iget-wide v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-long v2, v13, v8

    return-wide v2

    :cond_b
    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    const/16 v0, 0x19

    if-ne v4, v0, :cond_d

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v0, :cond_d

    if-nez v10, :cond_c

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    :cond_c
    const-string v0, "WindowManager"

    const-string v2, "[Accessibility] mScreenshotChordVolumeDownKeyConsumed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_d
    if-ne v4, v12, :cond_10

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_10

    if-nez v10, :cond_e

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    :cond_e
    const-string v0, "WindowManager"

    const-string v2, "[Accessibility] mA11yShortcutChordVolumeUpKeyConsumed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_f
    move/from16 v24, v3

    move/from16 v25, v5

    move/from16 v26, v6

    :cond_10
    const-string v0, "WindowManager"

    const-string v2, "[Accessibility] pass Accessibility check"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    if-eqz v0, :cond_13

    and-int/lit16 v0, v7, 0x400

    if-nez v0, :cond_13

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-eqz v0, :cond_11

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordPowerKeyTriggered:Z

    if-nez v0, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    sget-wide v8, Lcom/android/server/policy/PhoneWindowManager;->SCREENSHOT_CHORD_DEBOUNCE_DELAY_MILLIS:J

    add-long/2addr v5, v8

    cmp-long v0, v2, v5

    if-gez v0, :cond_11

    sub-long v8, v5, v2

    return-wide v8

    :cond_11
    if-ne v4, v12, :cond_13

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_13

    if-nez v10, :cond_12

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    :cond_12
    return-wide v17

    :cond_13
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_14

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_14

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    :cond_14
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-eqz v0, :cond_15

    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-nez v0, :cond_15

    invoke-static {v4}, Landroid/view/KeyEvent;->isAltKey(I)Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    :cond_15
    const/4 v0, 0x3

    if-ne v4, v0, :cond_23

    if-nez v10, :cond_19

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPreloadRecentApps()V

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    if-eqz v0, :cond_16

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeConsumed:Z

    return-wide v17

    :cond_16
    if-eqz v11, :cond_17

    const-string v0, "WindowManager"

    const-string v2, "Ignoring HOME; event canceled."

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_17
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    if-eqz v0, :cond_18

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v0, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-wide v17

    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome()V

    return-wide v17

    :cond_19
    if-eqz p1, :cond_1a

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    goto :goto_2

    :cond_1a
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_1e

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7d9

    if-eq v3, v5, :cond_1d

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v5, v5, 0x400

    if-eqz v5, :cond_1b

    goto :goto_4

    :cond_1b
    sget-object v5, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    array-length v5, v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_1e

    sget-object v8, Lcom/android/server/policy/PhoneWindowManager;->WINDOW_TYPES_WHERE_HOME_DOESNT_WORK:[I

    aget v8, v8, v6

    if-ne v3, v8, :cond_1c

    return-wide v17

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1d
    :goto_4
    const-wide/16 v5, 0x0

    return-wide v5

    :cond_1e
    if-nez v25, :cond_21

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomePressed:Z

    iget-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    if-eqz v3, :cond_20

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapPending:Z

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mHomeDoubleTapTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->handleDoubleTapOnHome()V

    :cond_1f
    :goto_5
    move-object/from16 v3, p2

    goto :goto_6

    :cond_20
    iget v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleTapOnHomeBehavior:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_1f

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_5

    :cond_21
    move-object/from16 v3, p2

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_22

    if-nez v24, :cond_22

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-direct {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->handleLongPressOnHome(I)V

    :cond_22
    :goto_6
    return-wide v17

    :cond_23
    move-object/from16 v3, p2

    const/16 v0, 0x52

    const/16 v5, 0x3d

    const/4 v8, 0x2

    if-ne v4, v0, :cond_25

    const/4 v0, 0x1

    if-eqz v10, :cond_24

    if-nez v25, :cond_24

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mEnableShiftMenuBugReports:Z

    if-eqz v6, :cond_24

    and-int/lit8 v6, v26, 0x1

    const/4 v9, 0x1

    if-ne v6, v9, :cond_24

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.BUG_REPORT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v28, v5

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v29, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v27, v5

    invoke-virtual/range {v27 .. v35}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-wide v17

    :cond_24
    goto/16 :goto_c

    :cond_25
    const/16 v0, 0x54

    if-ne v4, v0, :cond_28

    if-eqz v10, :cond_26

    if-nez v25, :cond_27

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    goto :goto_7

    :cond_26
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    if-eqz v0, :cond_27

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    return-wide v17

    :cond_27
    :goto_7
    const-wide/16 v5, 0x0

    return-wide v5

    :cond_28
    const/16 v0, 0xbb

    if-ne v4, v0, :cond_2b

    if-nez v24, :cond_2a

    if-eqz v10, :cond_29

    if-nez v25, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->preloadRecentApps()V

    goto :goto_8

    :cond_29
    if-nez v10, :cond_2a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    :cond_2a
    :goto_8
    return-wide v17

    :cond_2b
    const/16 v0, 0x2a

    if-ne v4, v0, :cond_2d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-eqz v10, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v6

    if-eqz v6, :cond_2c

    :try_start_0
    invoke-interface {v6}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    :cond_2c
    :goto_9
    goto/16 :goto_c

    :cond_2d
    const/16 v0, 0x2f

    if-ne v4, v0, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz v10, :cond_3e

    if-nez v25, :cond_3e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_2e

    move v15, v8

    goto :goto_a

    :cond_2e
    const/4 v15, 0x1

    :goto_a
    move v0, v15

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v5, v0}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-wide v17

    :cond_2f
    const/16 v0, 0x4c

    if-ne v4, v0, :cond_30

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_30

    if-eqz v10, :cond_3e

    if-nez v25, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->toggleKeyboardShortcutsMenu(I)V

    goto/16 :goto_c

    :cond_30
    const/16 v0, 0xdb

    if-ne v4, v0, :cond_31

    const-string v0, "WindowManager"

    const-string v5, "KEYCODE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_31
    const/16 v0, 0xe7

    if-ne v4, v0, :cond_32

    const-string v0, "WindowManager"

    const-string v5, "KEYCODE_VOICE_ASSIST should be handled in interceptKeyBeforeQueueing"

    invoke-static {v0, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_32
    const/16 v0, 0x78

    if-ne v4, v0, :cond_34

    if-eqz v10, :cond_33

    if-nez v25, :cond_33

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_33
    return-wide v17

    :cond_34
    const/16 v0, 0xdd

    if-eq v4, v0, :cond_5e

    const/16 v6, 0xdc

    if-ne v4, v6, :cond_35

    move/from16 v12, v26

    goto/16 :goto_18

    :cond_35
    if-eq v4, v12, :cond_3b

    const/16 v0, 0x19

    if-eq v4, v0, :cond_3b

    const/16 v0, 0xa4

    if-ne v4, v0, :cond_36

    goto :goto_b

    :cond_36
    if-ne v4, v5, :cond_37

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_37

    const-wide/16 v5, 0x0

    return-wide v5

    :cond_37
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_38

    invoke-direct {v1, v4, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptBugreportGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_38

    return-wide v17

    :cond_38
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v0, :cond_39

    invoke-direct {v1, v4, v10}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityGestureTv(IZ)Z

    move-result v0

    if-eqz v0, :cond_39

    return-wide v17

    :cond_39
    const/16 v0, 0x11c

    if-ne v4, v0, :cond_3e

    if-nez v10, :cond_3a

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x19

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_3a
    return-wide v17

    :cond_3b
    :goto_b
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_3c

    move/from16 v12, v26

    goto/16 :goto_17

    :cond_3c
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_3e

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/view/InputDevice;->isExternal()Z

    move-result v6

    if-nez v6, :cond_3d

    return-wide v17

    :cond_3d
    nop

    :cond_3e
    :goto_c
    const/4 v0, 0x0

    invoke-static {v4}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v6

    const/high16 v9, 0x70000

    if-eqz v6, :cond_41

    iget-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    if-nez v6, :cond_3f

    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    iput v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    goto :goto_d

    :cond_3f
    const/4 v6, 0x1

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v12

    if-ne v12, v6, :cond_41

    iget v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/lit8 v6, v6, 0x32

    iget v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_40

    if-eqz v6, :cond_40

    iget v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mInitialMetaState:I

    iget v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    or-int v19, v6, v12

    xor-int v14, v14, v19

    if-ne v13, v14, :cond_40

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mInputManagerInternal:Landroid/hardware/input/InputManagerInternal;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/hardware/input/InputManagerInternal;->toggleCapsLock(I)V

    const/4 v0, 0x1

    :cond_40
    const/4 v13, 0x0

    iput-boolean v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingCapsLockToggle:Z

    :cond_41
    :goto_d
    move v6, v0

    move/from16 v12, v26

    iput v12, v1, Lcom/android/server/policy/PhoneWindowManager;->mMetaState:I

    if-eqz v6, :cond_42

    return-wide v17

    :cond_42
    invoke-static {v4}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    move-result v0

    if-eqz v0, :cond_45

    if-eqz v10, :cond_43

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    goto :goto_e

    :cond_43
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingMetaAction:Z

    if-eqz v0, :cond_44

    const-string v0, "android.intent.extra.ASSIST_INPUT_HINT_KEYBOARD"

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v5

    invoke-virtual {v1, v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->launchAssistAction(Ljava/lang/String;I)V

    :cond_44
    :goto_e
    return-wide v17

    :cond_45
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    const/high16 v13, 0x10000000

    if-eqz v0, :cond_48

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_48

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mConsumeSearchKeyUp:Z

    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mSearchKeyShortcutPending:Z

    if-eqz v10, :cond_47

    if-nez v25, :cond_47

    if-nez v24, :cond_47

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    invoke-virtual {v0, v14, v4, v12}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_46

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    :catch_1
    move-exception v0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dropping shortcut key combination because the activity to which it is registered was not found: SEARCH+"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_f
    goto :goto_10

    :cond_46
    const-string v0, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping unregistered shortcut key combination: SEARCH+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_47
    :goto_10
    return-wide v17

    :cond_48
    if-eqz v10, :cond_49

    if-nez v25, :cond_49

    if-nez v24, :cond_49

    const/high16 v0, 0x10000

    and-int/2addr v0, v12

    if-eqz v0, :cond_49

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object v14

    invoke-virtual {v14, v4}, Landroid/view/KeyCharacterMap;->isPrintingKey(I)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutManager:Lcom/android/server/policy/ShortcutManager;

    const v19, -0x70001

    and-int v15, v12, v19

    invoke-virtual {v0, v14, v4, v15}, Lcom/android/server/policy/ShortcutManager;->getIntent(Landroid/view/KeyCharacterMap;II)Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_49

    invoke-virtual {v15, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_2
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v15, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_11

    :catch_2
    move-exception v0

    const-string v5, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Dropping shortcut key combination because the activity to which it is registered was not found: META+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    return-wide v17

    :cond_49
    if-eqz v10, :cond_4a

    if-nez v25, :cond_4a

    if-nez v24, :cond_4a

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->sApplicationLaunchKeyCategories:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_4a

    const-string v0, "android.intent.action.MAIN"

    invoke-static {v0, v14}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_3
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyboardShortcutsMenu()V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_12

    :catch_3
    move-exception v0

    const-string v8, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Dropping application launch key because the activity to which it is registered was not found: keyCode="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", category="

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_12
    return-wide v17

    :cond_4a
    if-eqz v10, :cond_4c

    if-nez v25, :cond_4c

    if-ne v4, v5, :cond_4c

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-nez v0, :cond_4d

    if-nez v24, :cond_4d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v0

    and-int/lit16 v0, v0, -0xc2

    invoke-static {v0, v8}, Landroid/view/KeyEvent;->metaStateHasModifiers(II)Z

    move-result v5

    if-eqz v5, :cond_4b

    iput v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Lcom/android/server/policy/PhoneWindowManager;->showRecentApps(Z)V

    return-wide v17

    :cond_4b
    goto :goto_13

    :cond_4c
    if-nez v10, :cond_4d

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    if-eqz v0, :cond_4d

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    and-int/2addr v0, v12

    if-nez v0, :cond_4d

    const/4 v5, 0x0

    iput v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mRecentAppsHeldModifiers:I

    const/4 v8, 0x1

    invoke-direct {v1, v8, v5}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    :cond_4d
    :goto_13
    const/16 v0, 0x3e

    if-eqz v10, :cond_4f

    if-nez v25, :cond_4f

    if-ne v4, v0, :cond_4f

    and-int/lit16 v5, v12, 0x7000

    if-eqz v5, :cond_4f

    and-int/lit16 v0, v12, 0xc1

    if-eqz v0, :cond_4e

    const/4 v8, -0x1

    move v15, v8

    goto :goto_14

    :cond_4e
    const/4 v15, 0x1

    :goto_14
    move v0, v15

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v8

    invoke-interface {v5, v8, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchKeyboardLayout(II)V

    return-wide v17

    :cond_4f
    if-eqz v10, :cond_52

    if-nez v25, :cond_52

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_50

    if-ne v4, v0, :cond_52

    and-int v5, v12, v9

    if-eqz v5, :cond_52

    :cond_50
    and-int/lit16 v0, v12, 0xc1

    if-nez v0, :cond_51

    const/4 v15, 0x1

    goto :goto_15

    :cond_51
    const/4 v15, 0x0

    :goto_15
    move v0, v15

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->switchInputMethod(Z)V

    return-wide v17

    :cond_52
    iget-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    if-eqz v5, :cond_54

    if-nez v10, :cond_54

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_53

    if-ne v4, v0, :cond_54

    :cond_53
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mLanguageSwitchKeyPressed:Z

    return-wide v17

    :cond_54
    invoke-static {v4}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/policy/GlobalKeyManager;->handleGlobalKey(Landroid/content/Context;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_55

    return-wide v17

    :cond_55
    if-eqz v10, :cond_5b

    int-to-long v8, v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_56

    const-wide v13, 0x100000000000L

    or-long/2addr v8, v13

    :cond_56
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_57

    const-wide v13, 0x200000000L

    or-long/2addr v8, v13

    :cond_57
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v0

    if-eqz v0, :cond_58

    const-wide v13, 0x100000000L

    or-long/2addr v8, v13

    :cond_58
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->isMetaPressed()Z

    move-result v0

    if-eqz v0, :cond_59

    const-wide/high16 v13, 0x1000000000000L

    or-long/2addr v8, v13

    :cond_59
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/policy/IShortcutService;

    if-eqz v5, :cond_5b

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v5, v8, v9}, Lcom/android/internal/policy/IShortcutService;->notifyShortcutKeyPressed(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_5a
    goto :goto_16

    :catch_4
    move-exception v0

    iget-object v13, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v13, v8, v9}, Landroid/util/LongSparseArray;->delete(J)V

    :goto_16
    return-wide v17

    :cond_5b
    const/high16 v0, 0x10000

    and-int/2addr v0, v12

    if-eqz v0, :cond_5c

    return-wide v17

    :cond_5c
    const-wide/16 v8, 0x0

    return-wide v8

    :cond_5d
    move/from16 v12, v26

    :goto_17
    invoke-direct {v1, v3}, Lcom/android/server/policy/PhoneWindowManager;->dispatchDirectAudioEvent(Landroid/view/KeyEvent;)V

    return-wide v17

    :cond_5e
    move/from16 v12, v26

    :goto_18
    if-eqz v10, :cond_61

    if-ne v4, v0, :cond_5f

    const/4 v8, 0x1

    goto :goto_19

    :cond_5f
    const/4 v8, -0x1

    :goto_19
    move v0, v8

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_brightness_mode"

    const/4 v8, -0x3

    const/4 v9, 0x0

    invoke-static {v5, v6, v9, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eqz v5, :cond_60

    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v13, "screen_brightness_mode"

    invoke-static {v6, v13, v9, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_60
    iget-object v6, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v6}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v6

    iget-object v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v9}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    sub-int v13, v9, v6

    add-int/lit8 v13, v13, 0xa

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0xa

    mul-int/2addr v13, v0

    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "screen_brightness"

    iget-object v8, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v8}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v8

    move/from16 v36, v0

    const/4 v0, -0x3

    invoke-static {v14, v15, v8, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v8, v13

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "screen_brightness"

    invoke-static {v14, v15, v8, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v0, Landroid/content/Intent;

    const-string v14, "com.android.intent.action.SHOW_BRIGHTNESS_DIALOG"

    invoke-direct {v0, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_61
    return-wide v17
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;I)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    return v4

    :cond_0
    const/high16 v0, 0x20000000

    and-int v0, p2, v0

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v4

    :goto_0
    move v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v5

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    move v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v9

    const/high16 v0, 0x1000000

    and-int v0, p2, v0

    if-eqz v0, :cond_3

    move v0, v5

    goto :goto_2

    :cond_3
    move v0, v4

    :goto_2
    move v10, v0

    const/high16 v11, -0x80000000

    and-int v0, p2, v11

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_3

    :cond_4
    move v0, v4

    :goto_3
    move v12, v0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_5

    move v0, v4

    goto :goto_4

    :cond_5
    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    goto :goto_4

    :cond_6
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    :goto_4
    move v13, v0

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_INPUT:Z

    if-eqz v0, :cond_7

    const-string v0, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "interceptKeyTq keycode="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " interactive="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " keyguardActive="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, " policyFlags="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->isWakeKey()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_5

    :cond_8
    move v0, v4

    goto :goto_6

    :cond_9
    :goto_5
    move v0, v5

    :goto_6
    const/4 v14, -0x1

    if-nez v6, :cond_e

    if-eqz v10, :cond_a

    if-nez v0, :cond_a

    goto :goto_7

    :cond_a
    if-nez v6, :cond_b

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v15

    if-eqz v15, :cond_b

    const/4 v15, 0x1

    iput v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_8

    :cond_b
    const/4 v15, 0x0

    if-eqz v0, :cond_d

    if-eqz v7, :cond_c

    invoke-direct {v1, v9}, Lcom/android/server/policy/PhoneWindowManager;->isWakeKeyWhenScreenOff(I)Z

    move-result v14

    if-nez v14, :cond_d

    :cond_c
    const/4 v0, 0x0

    :cond_d
    if-eqz v0, :cond_10

    if-eqz v7, :cond_10

    iput v9, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    goto :goto_8

    :cond_e
    :goto_7
    const/4 v15, 0x1

    const/4 v0, 0x0

    if-eqz v6, :cond_10

    iget v11, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    if-ne v9, v11, :cond_f

    if-nez v7, :cond_f

    const/4 v11, 0x0

    move v15, v11

    :cond_f
    iput v14, v1, Lcom/android/server/policy/PhoneWindowManager;->mPendingWakeKey:I

    :cond_10
    :goto_8
    move v11, v0

    invoke-static {v9}, Lcom/android/server/policy/PhoneWindowManager;->isValidGlobalKey(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mGlobalKeyManager:Lcom/android/server/policy/GlobalKeyManager;

    invoke-virtual {v0, v9, v2}, Lcom/android/server/policy/GlobalKeyManager;->shouldHandleGlobalKey(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz v11, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v14, "android.policy:KEY"

    invoke-direct {v1, v4, v5, v0, v14}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    :cond_11
    return v15

    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_13

    move v0, v5

    goto :goto_9

    :cond_13
    move v0, v4

    :goto_9
    move v14, v0

    if-eqz v7, :cond_15

    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_15

    if-eqz v14, :cond_14

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    if-eqz v0, :cond_15

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_15

    move v0, v5

    goto :goto_a

    :cond_15
    move v0, v4

    :goto_a
    move/from16 v16, v0

    packed-switch v9, :pswitch_data_0

    packed-switch v9, :pswitch_data_1

    packed-switch v9, :pswitch_data_2

    packed-switch v9, :pswitch_data_3

    packed-switch v9, :pswitch_data_4

    packed-switch v9, :pswitch_data_5

    sparse-switch v9, :sswitch_data_0

    move/from16 v18, v10

    :cond_16
    move/from16 v20, v11

    goto/16 :goto_16

    :sswitch_0
    and-int/lit8 v15, v15, -0x2

    const/4 v11, 0x0

    if-nez v7, :cond_17

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->setUserInactiveOverrideFromWindowManager()V

    :cond_17
    :goto_b
    move/from16 v18, v10

    goto/16 :goto_17

    :sswitch_1
    if-nez v7, :cond_18

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_18
    and-int/lit8 v15, v15, -0x2

    goto :goto_b

    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_19

    move v0, v5

    goto :goto_c

    :cond_19
    const/4 v0, 0x0

    :goto_c
    if-eqz v7, :cond_1a

    if-eqz v0, :cond_1a

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1b

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_1a
    if-nez v7, :cond_1b

    if-nez v0, :cond_1b

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x1a

    move/from16 v17, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v0

    move/from16 v18, v10

    const/4 v3, 0x0

    const/4 v10, 0x0

    invoke-virtual {v4, v5, v0, v3, v10}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    :cond_1b
    move/from16 v17, v0

    move/from16 v18, v10

    :goto_d
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_17

    :sswitch_3
    move/from16 v18, v10

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mShortPressOnWindowBehavior:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_16

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    if-eqz v0, :cond_16

    if-nez v7, :cond_1c

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->showPictureInPictureMenu(Landroid/view/KeyEvent;)V

    :cond_1c
    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_17

    :pswitch_0
    :sswitch_4
    move/from16 v18, v10

    goto/16 :goto_f

    :pswitch_1
    :sswitch_5
    move/from16 v18, v10

    goto :goto_e

    :pswitch_2
    move/from16 v18, v10

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFingerprintForShotEnabled:Z

    if-eqz v0, :cond_1d

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_1d

    const-string v0, "com.oneplus.camera"

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->isFingerprintGestureLimit()Z

    move-result v0

    if-nez v0, :cond_16

    and-int/lit8 v15, v15, -0x2

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptSystemNavigationKey(Landroid/view/KeyEvent;)V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/PowerManager;->userActivity(JZ)V

    goto/16 :goto_17

    :pswitch_3
    move/from16 v18, v10

    and-int/lit8 v15, v15, -0x2

    const/4 v11, 0x1

    goto/16 :goto_17

    :pswitch_4
    move/from16 v18, v10

    and-int/lit8 v15, v15, -0x2

    const/4 v11, 0x0

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    move/from16 v16, v0

    :cond_1e
    if-eqz v7, :cond_1f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->sleepPress()V

    goto/16 :goto_17

    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->sleepRelease(J)V

    goto/16 :goto_17

    :goto_e
    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaSessionLegacyHelper;->isGlobalPriorityActive()Z

    move-result v0

    if-eqz v0, :cond_20

    and-int/lit8 v15, v15, -0x2

    :cond_20
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_3b

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v2}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_17

    :pswitch_5
    move/from16 v18, v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    and-int/lit8 v0, v15, -0x2

    const/4 v11, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->oemIsActionPassToUser()Z

    move-result v3

    if-eqz v3, :cond_21

    or-int/lit8 v0, v0, 0x1

    :cond_21
    move v15, v0

    move v0, v6

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v3, :cond_22

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isFingerprintAuthenticating()Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "WindowManager"

    const-string v4, "change interactive to false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_22
    if-eqz v7, :cond_23

    invoke-direct {v1, v2, v0}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyDown(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_17

    :cond_23
    invoke-direct {v1, v2, v0, v8}, Lcom/android/server/policy/PhoneWindowManager;->interceptPowerKeyUp(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_17

    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->oemIsActionPassToUser()Z

    move-result v0

    if-eqz v0, :cond_24

    or-int/lit8 v15, v15, 0x1

    :cond_24
    const/16 v0, 0x19

    const-wide/16 v3, 0x0

    if-ne v9, v0, :cond_27

    if-eqz v7, :cond_26

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    if-eqz v6, :cond_2a

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    if-nez v0, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2a

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    if-eqz v0, :cond_25

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    :cond_25
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTime:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyConsumed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    goto :goto_10

    :cond_26
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeDownKeyTriggered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    goto :goto_10

    :cond_27
    const/16 v0, 0x18

    if-ne v9, v0, :cond_2a

    if-eqz v7, :cond_29

    if-eqz v6, :cond_2a

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    if-nez v0, :cond_2a

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2a

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTime:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyConsumed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingPowerKeyAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyConsumed:Z

    if-eqz v0, :cond_28

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    :cond_28
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTime:J

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyConsumed:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptScreenshotChord()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptAccessibilityShortcutChord()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptRingerToggleChord()V

    goto :goto_10

    :cond_29
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mA11yShortcutChordVolumeUpKeyTriggered:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingScreenshotChordAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingAccessibilityShortcutAction()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->cancelPendingRingerToggleChordAction()V

    iput-boolean v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotChordVolumeUpKeyTriggered:Z

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mDoubleClickVolumeKeyReleaseTime:J

    :cond_2a
    :goto_10
    if-eqz v7, :cond_2f

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendSystemKeyToStatusBarAsync(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v3

    if-eqz v3, :cond_2b

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-nez v0, :cond_2b

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_2b

    const-string v0, "WindowManager"

    const-string/jumbo v4, "interceptKeyBeforeQueueing: VOLUME key-down while ringing: Silence ringer!"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->silenceRinger()V

    and-int/lit8 v15, v15, -0x2

    goto/16 :goto_17

    :cond_2b
    const/4 v4, 0x0

    move v5, v4

    :try_start_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->getAudioService()Landroid/media/IAudioService;

    move-result-object v0

    invoke-interface {v0}, Landroid/media/IAudioService;->getMode()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    goto :goto_11

    :catch_0
    move-exception v0

    const-string v4, "WindowManager"

    const-string v10, "Error getting AudioService in interceptKeyBeforeQueueing."

    invoke-static {v4, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_11
    if-eqz v3, :cond_2c

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_2d

    :cond_2c
    const/4 v4, 0x3

    if-ne v5, v4, :cond_2e

    :cond_2d
    const/4 v0, 0x1

    goto :goto_12

    :cond_2e
    const/4 v0, 0x0

    :goto_12
    if-eqz v0, :cond_2f

    and-int/lit8 v4, v15, 0x1

    if-nez v4, :cond_2f

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v4

    move-object/from16 v19, v3

    const/high16 v3, -0x80000000

    const/4 v10, 0x0

    invoke-virtual {v4, v2, v3, v10}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_17

    :cond_2f
    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mUseTvRouting:Z

    if-nez v0, :cond_31

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandleVolumeKeysInWM:Z

    if-eqz v0, :cond_30

    goto :goto_13

    :cond_30
    and-int/lit8 v0, v15, 0x1

    if-nez v0, :cond_3b

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    const/4 v3, 0x1

    const/high16 v4, -0x80000000

    invoke-virtual {v0, v2, v4, v3}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_17

    :cond_31
    :goto_13
    or-int/lit8 v15, v15, 0x1

    goto/16 :goto_17

    :pswitch_6
    move/from16 v18, v10

    and-int/lit8 v15, v15, -0x2

    if-eqz v7, :cond_34

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result v3

    :cond_32
    if-eqz v6, :cond_33

    if-nez v3, :cond_33

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    iget-object v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    iget-object v10, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v10

    move/from16 v20, v11

    invoke-virtual {v10}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v10

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_14

    :cond_33
    move/from16 v20, v11

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    :goto_14
    goto :goto_15

    :cond_34
    move/from16 v20, v11

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallKeyHandled:Z

    if-nez v0, :cond_36

    iget-object v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndCallLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez v8, :cond_36

    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const/4 v3, 0x1

    and-int/2addr v0, v3

    if-eqz v0, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->goHome()Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_15

    :cond_35
    iget v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    const/4 v0, 0x4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->goToSleep(JII)V

    const/4 v11, 0x0

    goto :goto_17

    :cond_36
    :goto_15
    move/from16 v11, v20

    goto :goto_17

    :pswitch_7
    move/from16 v18, v10

    move/from16 v20, v11

    if-eqz v7, :cond_38

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result v3

    if-eqz v3, :cond_37

    const-string v3, "WindowManager"

    const-string/jumbo v4, "interceptKeyBeforeQueueing: CALL key-down while ringing: Answer the call!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    and-int/lit8 v15, v15, -0x2

    :cond_37
    goto :goto_15

    :pswitch_8
    move/from16 v18, v10

    move/from16 v20, v11

    if-eqz v7, :cond_39

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyDown()V

    :cond_38
    :goto_16
    move/from16 v11, v20

    goto :goto_17

    :cond_39
    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->interceptBackKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3a

    and-int/lit8 v15, v15, -0x2

    :cond_3a
    goto :goto_15

    :cond_3b
    :goto_17
    if-eqz v16, :cond_3d

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v3, 0x3

    if-eq v9, v3, :cond_3d

    const/16 v0, 0x3e9

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    goto :goto_18

    :cond_3c
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    :cond_3d
    :goto_18
    if-eqz v11, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v3

    iget-boolean v0, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const-string v5, "android.policy:KEY"

    invoke-direct {v1, v3, v4, v0, v5}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    :cond_3e
    if-eqz v12, :cond_3f

    const/4 v3, 0x0

    return v3

    :cond_3f
    return v15

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x55
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7e
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xde
        :pswitch_1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x118
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_5
        0x82 -> :sswitch_5
        0xa4 -> :sswitch_4
        0xab -> :sswitch_3
        0xdb -> :sswitch_2
        0xe7 -> :sswitch_1
        0x114 -> :sswitch_0
    .end sparse-switch
.end method

.method public interceptMotionBeforeQueueingNonInteractive(JI)I
    .locals 7

    and-int/lit8 v0, p3, 0x1

    const/4 v1, 0x0

    const-wide/32 v2, 0xf4240

    if-eqz v0, :cond_0

    div-long v4, p1, v2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotion:Z

    const-string v6, "android.policy:MOTION"

    invoke-direct {p0, v4, v5, v0, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->shouldDispatchInputWhenNonInteractive(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTheaterModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_2

    div-long v2, p1, v2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromMotionWhenNotDreaming:Z

    const-string v4, "android.policy:MOTION"

    invoke-direct {p0, v2, v3, v0, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    :cond_2
    return v1
.end method

.method public isDefaultOrientationForced()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return v0
.end method

.method isDeviceProvisioned()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isDockSideAllowed(IIIII)Z
    .locals 2

    invoke-direct {p0, p3, p4, p5}, Lcom/android/server/policy/PhoneWindowManager;->navigationBarPosition(III)I

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    invoke-static {p1, p2, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->isDockSideAllowed(IIIZ)Z

    move-result v1

    return v1
.end method

.method isFingerprintGestureLimit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonForLauncher()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isGestureButtonRegion(II)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardDrawnLw()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnOnce:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isKeyguardLocked()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    return v0
.end method

.method public isKeyguardOccluded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    return v0
.end method

.method public isKeyguardSecure(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isKeyguardTrustedLw()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isTrusted()Z

    move-result v0

    return v0
.end method

.method protected isLandscapeOrSeascape(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    if-ne p1, v0, :cond_0

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

.method public isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    return v0
.end method

.method protected isNeedToHideNavBar(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    return v0
.end method

.method public isRotationChoicePossible(I)Z
    .locals 5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v0, :cond_2

    return v2

    :cond_2
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v0, :cond_3

    return v2

    :cond_3
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v0, :cond_5

    return v2

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v0, :cond_6

    return v2

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v0, :cond_7

    return v2

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v0, :cond_8

    return v2

    :cond_8
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v0, :cond_9

    return v2

    :cond_9
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v0, :cond_a

    return v2

    :cond_a
    const/4 v0, -0x1

    if-eq p1, v0, :cond_b

    if-eq p1, v3, :cond_b

    packed-switch p1, :pswitch_data_0

    return v2

    :cond_b
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isScreenOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isShowingDreamLw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowingDream:Z

    return v0
.end method

.method protected isSystemUI(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTopLevelWindow(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_1

    const/16 v1, 0x7cf

    if-gt p1, v1, :cond_1

    const/16 v1, 0x3eb

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v0
.end method

.method isUserSetupComplete()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_setup_complete"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    move v0, v2

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasFeatureLeanback:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->isTvUserSetupComplete()Z

    move-result v1

    and-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public isValidRotationChoice(II)Z
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    return v2

    :pswitch_0
    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :pswitch_1
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    if-ne p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1

    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    :cond_2
    if-ltz p2, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-eq p2, v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public keepScreenOnStartedLw()V
    .locals 0

    return-void
.end method

.method public keepScreenOnStoppedLw()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_0
    return-void
.end method

.method keyguardOn()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->inKeyguardRestrictedKeyInputMode()Z

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

.method protected launchAssistAction(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    if-le p2, v1, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.extra.ASSIST_INPUT_DEVICE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "search"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, p1, v2, v0}, Landroid/app/SearchManager;->launchLegacyAssist(Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_4

    if-nez v0, :cond_3

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v1, v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->startAssist(Landroid/os/Bundle;)V

    :cond_5
    :goto_0
    return-void
.end method

.method launchHomeFromHotKey()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(ZZ)V

    return-void
.end method

.method launchHomeFromHotKey(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;

    invoke-direct {v2, v1}, Lcom/android/server/policy/-$$Lambda$oXa0y3A-00RiQs6-KTPBgpkGtgw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$13;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isInputRestricted()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$14;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$14;-><init>(Lcom/android/server/policy/PhoneWindowManager;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->verifyUnlock(Lcom/android/server/policy/WindowManagerPolicy$OnKeyguardExitResult;)V

    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-eqz p1, :cond_3

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->hideRecentApps(ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v1, p1}, Lcom/android/server/policy/PhoneWindowManager;->startDockOrHome(ZZ)V

    :goto_1
    return-void
.end method

.method protected launchVoiceAssistAction()V
    .locals 4

    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSearchManager()Landroid/app/SearchManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    const-string v3, "No activity to handle assist long press action."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method launchVoiceAssistWithWakeLock()V
    .locals 4

    const-string v0, "assist"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v1, "voice-search"

    invoke-interface {v0, v1}, Landroid/os/IDeviceIdleController;->exitIdle(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.VOICE_SEARCH_HANDS_FREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.speech.extras.EXTRA_SECURE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v1

    :goto_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mBroadcastWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V
    .locals 73

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v0, v13

    move-object v11, v15

    goto/16 :goto_3d

    :cond_1
    :goto_1
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v13, v0, :cond_0

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isDefaultDisplay()Z

    move-result v16

    const/16 v17, 0x0

    if-eqz v16, :cond_3

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_3

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move/from16 v0, v17

    :goto_2
    move/from16 v18, v0

    if-eqz v18, :cond_5

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowManager"

    const-string v1, "Offset ime target window by the last ime window state"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v12, v0, v15}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    :cond_5
    iget v9, v11, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v13, v11}, Lcom/android/server/policy/PolicyControl;->getWindowFlags(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v8

    iget v7, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v6, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v5, 0x0

    invoke-static {v5, v11}, Lcom/android/server/policy/PolicyControl;->getSystemUiVisibility(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I

    move-result v19

    invoke-direct {v12, v11}, Lcom/android/server/policy/PhoneWindowManager;->getImpliedSysUiFlagsForLayout(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    or-int v4, v19, v0

    sget-object v3, Lcom/android/server/policy/PhoneWindowManager;->mTmpParentFrame:Landroid/graphics/Rect;

    sget-object v2, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayFrame:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpOverscanFrame:Landroid/graphics/Rect;

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpContentFrame:Landroid/graphics/Rect;

    sget-object v10, Lcom/android/server/policy/PhoneWindowManager;->mTmpVisibleFrame:Landroid/graphics/Rect;

    sget-object v14, Lcom/android/server/policy/PhoneWindowManager;->mTmpDecorFrame:Landroid/graphics/Rect;

    move/from16 v22, v7

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpStableFrame:Landroid/graphics/Rect;

    const/16 v23, 0x0

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    if-eqz v16, :cond_7

    iget-boolean v5, v12, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v5, :cond_7

    iget-object v5, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_7

    iget-object v5, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, v12, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v5, :cond_6

    iget-boolean v5, v12, Lcom/android/server/policy/PhoneWindowManager;->mForcingShowNavBar:Z

    if-nez v5, :cond_6

    iget-boolean v5, v12, Lcom/android/server/policy/PhoneWindowManager;->mForceShowSystemBars:Z

    if-eqz v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    goto :goto_3

    :cond_7
    move/from16 v5, v17

    :goto_3
    move/from16 v25, v5

    and-int/lit16 v5, v6, 0xf0

    move/from16 v26, v4

    and-int/lit16 v4, v8, 0x400

    if-nez v4, :cond_9

    and-int/lit8 v4, v19, 0x4

    if-eqz v4, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v4, v17

    goto :goto_5

    :cond_9
    :goto_4
    const/4 v4, 0x1

    :goto_5
    move/from16 v27, v4

    and-int/lit16 v4, v8, 0x100

    move/from16 v28, v6

    const/16 v6, 0x100

    if-ne v4, v6, :cond_a

    const/4 v4, 0x1

    goto :goto_6

    :cond_a
    move/from16 v4, v17

    :goto_6
    move/from16 v29, v4

    const/high16 v4, 0x10000

    and-int/2addr v4, v8

    const/high16 v6, 0x10000

    if-ne v4, v6, :cond_b

    const/4 v4, 0x1

    goto :goto_7

    :cond_b
    move/from16 v4, v17

    :goto_7
    move/from16 v30, v4

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v6, 0x7db

    if-ne v9, v6, :cond_10

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v1, Landroid/graphics/Rect;->bottom:I

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    iget-boolean v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eqz v4, :cond_c

    iget v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_d

    sget-object v4, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_8

    :cond_c
    const/4 v6, 0x4

    :cond_d
    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iput v4, v10, Landroid/graphics/Rect;->bottom:I

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :goto_8
    iget-object v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v4, :cond_f

    iget-object v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v6, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v4, v6, :cond_f

    iget-object v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-direct {v12, v4}, Lcom/android/server/policy/PhoneWindowManager;->canReceiveInput(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_e

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iput v4, v10, Landroid/graphics/Rect;->right:I

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iput v4, v1, Landroid/graphics/Rect;->right:I

    iput v4, v2, Landroid/graphics/Rect;->right:I

    iput v4, v3, Landroid/graphics/Rect;->right:I

    goto :goto_9

    :cond_e
    iget v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iput v4, v10, Landroid/graphics/Rect;->left:I

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v1, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/graphics/Rect;->left:I

    iput v4, v3, Landroid/graphics/Rect;->left:I

    :cond_f
    :goto_9
    const/16 v4, 0x50

    iput v4, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getSurfaceLayer()I

    move-result v4

    iput v4, v12, Lcom/android/server/policy/PhoneWindowManager;->mDockLayer:I

    :goto_a
    move-object v4, v3

    move-object/from16 v48, v7

    move/from16 v64, v9

    move-object v6, v10

    move-object/from16 v46, v14

    move/from16 v21, v22

    move/from16 v45, v28

    const/4 v13, 0x3

    move-object v10, v0

    move-object v9, v1

    move v7, v5

    move v5, v8

    move/from16 v1, v26

    move-object v8, v2

    goto/16 :goto_2d

    :cond_10
    const/16 v4, 0x7ef

    const/16 v6, 0x10

    if-ne v9, v4, :cond_13

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eq v5, v6, :cond_11

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_11
    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_b
    const/16 v4, 0x30

    if-eq v5, v4, :cond_12

    iget-object v4, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_12
    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_13
    const/16 v4, 0x7dd

    if-ne v9, v4, :cond_14

    move-object v6, v0

    move-object v0, v12

    move-object v4, v1

    move-object v1, v15

    move-object/from16 v37, v2

    move-object v2, v3

    move-object/from16 v38, v7

    move-object v7, v3

    move-object/from16 v3, v37

    move-object/from16 v40, v4

    move/from16 v39, v8

    move/from16 v8, v26

    move/from16 v41, v8

    move v8, v5

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/policy/PhoneWindowManager;->layoutWallpaper(Lcom/android/server/wm/DisplayFrames;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    move-object v4, v7

    move v7, v8

    move/from16 v64, v9

    move-object/from16 v46, v14

    move/from16 v21, v22

    move/from16 v45, v28

    move-object/from16 v8, v37

    move-object/from16 v48, v38

    move/from16 v5, v39

    move-object/from16 v9, v40

    move/from16 v1, v41

    const/4 v13, 0x3

    move-object/from16 v72, v10

    move-object v10, v6

    move-object/from16 v6, v72

    goto/16 :goto_2d

    :cond_14
    move-object/from16 v40, v1

    move-object/from16 v37, v2

    move-object/from16 v38, v7

    move/from16 v39, v8

    move/from16 v41, v26

    move-object v7, v3

    move v8, v5

    move-object v5, v0

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_16

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v4, v40

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    move-object/from16 v3, v37

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-ne v8, v6, :cond_15

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    :goto_c
    move/from16 v64, v9

    move-object v6, v10

    move-object/from16 v46, v14

    move/from16 v21, v22

    move/from16 v45, v28

    move-object/from16 v48, v38

    move/from16 v1, v41

    const/4 v13, 0x3

    move-object v9, v4

    move-object v10, v5

    move-object v4, v7

    move v7, v8

    move/from16 v5, v39

    move-object v8, v3

    goto/16 :goto_2d

    :cond_15
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_c

    :cond_16
    move-object/from16 v3, v37

    move-object/from16 v4, v40

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mSystem:Landroid/graphics/Rect;

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    goto :goto_d

    :cond_17
    move/from16 v0, v17

    :goto_d
    move/from16 v24, v0

    const/4 v2, 0x1

    if-lt v9, v2, :cond_18

    const/16 v0, 0x63

    if-gt v9, v0, :cond_18

    move v0, v2

    goto :goto_e

    :cond_18
    move/from16 v0, v17

    :goto_e
    move/from16 v20, v0

    iget-object v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v13, v0, :cond_19

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v0

    if-nez v0, :cond_19

    move v0, v2

    goto :goto_f

    :cond_19
    move/from16 v0, v17

    :goto_f
    move/from16 v26, v0

    if-eqz v20, :cond_1d

    if-nez v24, :cond_1d

    if-nez v26, :cond_1d

    and-int/lit8 v0, v41, 0x4

    if-nez v0, :cond_1a

    move/from16 v1, v39

    and-int/lit16 v0, v1, 0x400

    if-nez v0, :cond_1b

    const/high16 v0, 0x4000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1b

    const/high16 v0, -0x80000000

    and-int v31, v1, v0

    if-nez v31, :cond_1b

    const/high16 v0, 0x20000

    and-int v0, v22, v0

    if-nez v0, :cond_1b

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v14, Landroid/graphics/Rect;->top:I

    goto :goto_10

    :cond_1a
    move/from16 v1, v39

    :cond_1b
    :goto_10
    const/high16 v0, 0x8000000

    and-int/2addr v0, v1

    if-nez v0, :cond_1c

    and-int/lit8 v0, v41, 0x2

    if-nez v0, :cond_1c

    const/high16 v31, -0x80000000

    and-int v0, v1, v31

    if-nez v0, :cond_1e

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v14, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v14, Landroid/graphics/Rect;->right:I

    goto :goto_11

    :cond_1c
    const/high16 v31, -0x80000000

    goto :goto_11

    :cond_1d
    move/from16 v1, v39

    const/high16 v31, -0x80000000

    :cond_1e
    :goto_11
    if-eqz v29, :cond_31

    if-eqz v30, :cond_31

    sget-boolean v32, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v32, :cond_1f

    const-string v6, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "layoutWindowLw("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): IN_SCREEN, INSET_DECOR"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object v6, v14

    move-object/from16 v14, p2

    if-eqz v14, :cond_20

    const/16 v21, 0x1

    move-object v0, v12

    move/from16 v32, v1

    move-object v1, v13

    const/16 v33, 0x1

    move/from16 v2, v32

    move-object/from16 v42, v3

    move v3, v8

    move-object/from16 v43, v4

    move-object v4, v14

    move-object/from16 v44, v5

    move/from16 v5, v21

    move-object/from16 v46, v6

    move/from16 v45, v28

    move-object v6, v7

    move-object/from16 v47, v7

    move/from16 v21, v22

    move-object/from16 v48, v38

    move-object/from16 v7, v42

    move/from16 v51, v8

    move/from16 v49, v32

    move/from16 v50, v41

    move-object/from16 v8, v43

    move/from16 v52, v9

    move-object/from16 v9, v44

    move-object/from16 v53, v10

    move-object/from16 v54, v11

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object/from16 v8, v42

    move-object/from16 v9, v43

    move-object/from16 v10, v44

    move-object/from16 v4, v47

    move/from16 v5, v49

    move/from16 v1, v50

    move/from16 v7, v51

    move/from16 v64, v52

    move-object/from16 v6, v53

    move-object/from16 v11, v54

    :goto_12
    const/4 v13, 0x3

    goto/16 :goto_2d

    :cond_20
    move/from16 v49, v1

    move-object/from16 v42, v3

    move-object/from16 v43, v4

    move-object/from16 v44, v5

    move-object/from16 v46, v6

    move-object/from16 v47, v7

    move/from16 v51, v8

    move/from16 v52, v9

    move-object/from16 v53, v10

    move-object/from16 v54, v11

    move/from16 v21, v22

    move/from16 v45, v28

    move-object/from16 v48, v38

    move/from16 v50, v41

    move/from16 v11, v52

    const/16 v0, 0x7de

    if-eq v11, v0, :cond_28

    const/16 v0, 0x7e1

    if-ne v11, v0, :cond_21

    move-object/from16 v7, v42

    move-object/from16 v8, v43

    move-object/from16 v6, v47

    move/from16 v10, v49

    move/from16 v5, v50

    const/4 v9, 0x1

    goto/16 :goto_16

    :cond_21
    const/high16 v0, 0x2000000

    move/from16 v10, v49

    and-int/2addr v0, v10

    if-eqz v0, :cond_23

    const/4 v9, 0x1

    if-lt v11, v9, :cond_22

    const/16 v0, 0x7cf

    if-gt v11, v0, :cond_22

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v8, v43

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v7, v42

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    move-object/from16 v6, v47

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v55, v11

    move/from16 v5, v50

    goto :goto_15

    :cond_22
    move-object/from16 v7, v42

    move-object/from16 v8, v43

    move-object/from16 v6, v47

    goto :goto_13

    :cond_23
    move-object/from16 v7, v42

    move-object/from16 v8, v43

    move-object/from16 v6, v47

    const/4 v9, 0x1

    :goto_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_26

    move/from16 v5, v50

    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_27

    if-lt v11, v9, :cond_24

    const/16 v0, 0x7cf

    if-le v11, v0, :cond_25

    :cond_24
    const/16 v0, 0x7e4

    if-ne v11, v0, :cond_27

    :cond_25
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_14

    :cond_26
    move/from16 v5, v50

    :cond_27
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v7, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestrictedOverscan:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_14
    move/from16 v55, v11

    :goto_15
    const/4 v4, 0x4

    const/4 v11, 0x3

    goto/16 :goto_1b

    :cond_28
    move-object/from16 v7, v42

    move-object/from16 v8, v43

    move-object/from16 v6, v47

    move/from16 v10, v49

    move/from16 v5, v50

    const/4 v9, 0x1

    :goto_16
    if-eqz v25, :cond_29

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    :goto_17
    iget v0, v0, Landroid/graphics/Rect;->left:I

    goto :goto_18

    :cond_29
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    goto :goto_17

    :goto_18
    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v7, Landroid/graphics/Rect;->left:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v7, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->top:I

    if-eqz v25, :cond_2a

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_19

    :cond_2a
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    :goto_19
    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v7, Landroid/graphics/Rect;->right:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    if-eqz v25, :cond_2b

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1a

    :cond_2b
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1a
    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_2c

    const-string v0, "WindowManager"

    const-string v1, "Laying out status bar window: (%d,%d - %d,%d)"

    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v17

    iget v3, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    iget v3, v6, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move/from16 v55, v11

    const/4 v11, 0x2

    aput-object v3, v2, v11

    iget v3, v6, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v11, 0x3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_2c
    move/from16 v55, v11

    const/4 v4, 0x4

    const/4 v11, 0x3

    :goto_1b
    and-int/lit16 v0, v10, 0x400

    if-nez v0, :cond_2f

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    move-object/from16 v3, v44

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v2, v51

    goto :goto_1c

    :cond_2d
    move-object/from16 v3, v44

    move/from16 v2, v51

    const/16 v0, 0x10

    if-eq v2, v0, :cond_2e

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_2e
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1c

    :cond_2f
    move-object/from16 v3, v44

    move/from16 v2, v51

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1c
    invoke-direct {v12, v5, v10, v3, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    const/16 v0, 0x30

    if-eq v2, v0, :cond_30

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v1, v53

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1d
    move-object v4, v6

    move-object v9, v8

    move v13, v11

    move-object/from16 v11, v54

    move/from16 v64, v55

    move-object v6, v1

    move v1, v5

    move-object v8, v7

    move v5, v10

    move v7, v2

    move-object v10, v3

    goto/16 :goto_2d

    :cond_30
    move-object/from16 v1, v53

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1d

    :cond_31
    move-object v6, v7

    move v2, v8

    move/from16 v55, v9

    move-object/from16 v54, v11

    move-object/from16 v46, v14

    move/from16 v21, v22

    move/from16 v45, v28

    move-object/from16 v48, v38

    const/4 v9, 0x1

    const/4 v11, 0x3

    move-object/from16 v14, p2

    move-object v7, v3

    move-object v8, v4

    move-object v3, v5

    move/from16 v5, v41

    const/4 v4, 0x4

    move-object/from16 v72, v10

    move v10, v1

    move-object/from16 v1, v72

    if-nez v29, :cond_3c

    and-int/lit16 v0, v5, 0x600

    if-eqz v0, :cond_32

    move/from16 v63, v5

    move-object v12, v6

    move-object v9, v8

    move/from16 v62, v10

    move-object/from16 v11, v54

    move/from16 v14, v55

    move-object v6, v1

    move-object v10, v3

    move-object v8, v7

    move v7, v2

    goto/16 :goto_24

    :cond_32
    if-eqz v14, :cond_34

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_33

    const-string v0, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "layoutWindowLw("

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, v54

    invoke-virtual {v9}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "): attached to "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_33
    move-object/from16 v9, v54

    :goto_1e
    const/4 v11, 0x0

    move-object v0, v12

    move-object v4, v1

    move-object v1, v13

    move/from16 v56, v2

    move v2, v10

    move-object/from16 v57, v3

    move/from16 v3, v56

    move-object/from16 v58, v4

    move-object v4, v14

    move v14, v5

    move v5, v11

    move-object v11, v6

    move-object/from16 v59, v7

    move-object/from16 v60, v8

    move-object/from16 v61, v9

    move-object/from16 v9, v57

    move/from16 v62, v10

    move-object/from16 v10, v58

    move-object v12, v11

    move/from16 v63, v14

    move/from16 v14, v55

    move-object v11, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/policy/PhoneWindowManager;->setAttachedWindowFrames(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IILcom/android/server/policy/WindowManagerPolicy$WindowState;ZLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    move-object v4, v12

    move/from16 v64, v14

    move/from16 v7, v56

    move-object/from16 v10, v57

    move-object/from16 v6, v58

    move-object/from16 v8, v59

    move-object/from16 v9, v60

    move-object/from16 v11, v61

    :goto_1f
    move/from16 v5, v62

    move/from16 v1, v63

    move-object/from16 v12, p0

    goto/16 :goto_12

    :cond_34
    move-object/from16 v58, v1

    move/from16 v56, v2

    move-object/from16 v57, v3

    move/from16 v63, v5

    move-object v12, v6

    move-object/from16 v59, v7

    move-object/from16 v60, v8

    move/from16 v62, v10

    move-object/from16 v61, v54

    move/from16 v14, v55

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_35

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "layoutWindowLw("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v61

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): normal window"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    :cond_35
    move-object/from16 v11, v61

    :goto_20
    const/16 v0, 0x7de

    if-ne v14, v0, :cond_36

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v10, v57

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v9, v60

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    move-object/from16 v8, v59

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object v4, v12

    move/from16 v64, v14

    move/from16 v7, v56

    move-object/from16 v6, v58

    goto :goto_1f

    :cond_36
    move-object/from16 v10, v57

    move-object/from16 v8, v59

    move-object/from16 v9, v60

    const/16 v0, 0x7d5

    if-eq v14, v0, :cond_3b

    const/16 v0, 0x7d3

    if-ne v14, v0, :cond_37

    move/from16 v7, v56

    move-object/from16 v6, v58

    goto :goto_22

    :cond_37
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVoiceInteraction()Z

    move-result v0

    if-eqz v0, :cond_38

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mVoiceContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v7, v56

    goto :goto_21

    :cond_38
    move/from16 v7, v56

    const/16 v0, 0x10

    if-eq v7, v0, :cond_39

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_21

    :cond_39
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_21
    const/16 v0, 0x30

    if-eq v7, v0, :cond_3a

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    move-object/from16 v6, v58

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_23

    :cond_3a
    move-object/from16 v6, v58

    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_23

    :cond_3b
    move/from16 v7, v56

    move-object/from16 v6, v58

    :goto_22
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_23
    move-object v4, v12

    move/from16 v64, v14

    goto/16 :goto_1f

    :cond_3c
    move/from16 v63, v5

    move-object v12, v6

    move-object v9, v8

    move/from16 v62, v10

    move-object/from16 v11, v54

    move/from16 v14, v55

    move-object v6, v1

    move-object v10, v3

    move-object v8, v7

    move v7, v2

    :goto_24
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_3d

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "layoutWindowLw("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): IN_SCREEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    const/16 v0, 0x7de

    if-eq v14, v0, :cond_50

    const/16 v0, 0x7e1

    if-ne v14, v0, :cond_3e

    move-object v4, v12

    move/from16 v64, v14

    move/from16 v5, v62

    move/from16 v1, v63

    move-object/from16 v12, p0

    const/4 v13, 0x3

    goto/16 :goto_2b

    :cond_3e
    const/16 v0, 0x7e3

    if-eq v14, v0, :cond_4e

    const/16 v0, 0x7e8

    if-ne v14, v0, :cond_3f

    move-object v4, v12

    move/from16 v5, v62

    move/from16 v1, v63

    const/4 v0, 0x1

    move-object/from16 v12, p0

    goto/16 :goto_2a

    :cond_3f
    const/16 v0, 0x7df

    if-eq v14, v0, :cond_41

    const/16 v0, 0x7f4

    if-eq v14, v0, :cond_41

    const/16 v0, 0x901

    if-eq v14, v0, :cond_41

    const/16 v0, 0x900

    if-eq v14, v0, :cond_41

    const/16 v0, 0x8ff

    if-eq v14, v0, :cond_41

    const/16 v0, 0x902

    if-ne v14, v0, :cond_40

    goto :goto_25

    :cond_40
    move/from16 v5, v62

    goto :goto_28

    :cond_41
    :goto_25
    move/from16 v5, v62

    and-int/lit16 v0, v5, 0x400

    if-eqz v0, :cond_42

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_26
    move-object v4, v12

    move/from16 v64, v14

    move/from16 v1, v63

    move-object/from16 v12, p0

    :goto_27
    const/4 v13, 0x3

    goto/16 :goto_2c

    :cond_42
    :goto_28
    const/16 v0, 0x7e5

    if-ne v14, v0, :cond_43

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    :cond_43
    const/high16 v0, 0x2000000

    and-int/2addr v0, v5

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    if-lt v14, v0, :cond_45

    const/16 v1, 0x7cf

    if-gt v14, v1, :cond_45

    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v9, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v15, Lcom/android/server/wm/DisplayFrames;->mOverscan:Landroid/graphics/Rect;

    invoke-virtual {v12, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_26

    :cond_44
    const/4 v0, 0x1

    :cond_45
    move-object v4, v12

    move-object/from16 v12, p0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/policy/PhoneWindowManager;->canHideNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_47

    move/from16 v1, v63

    and-int/lit16 v2, v1, 0x200

    if-eqz v2, :cond_48

    const/16 v2, 0x7d0

    if-eq v14, v2, :cond_46

    const/16 v2, 0x7d5

    if-eq v14, v2, :cond_46

    const/16 v2, 0x7f2

    if-eq v14, v2, :cond_46

    const/16 v2, 0x7f1

    if-eq v14, v2, :cond_46

    if-lt v14, v0, :cond_48

    const/16 v2, 0x7cf

    if-gt v14, v2, :cond_48

    :cond_46
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_29
    move/from16 v64, v14

    goto :goto_27

    :cond_47
    move/from16 v1, v63

    :cond_48
    and-int/lit16 v2, v1, 0x400

    if-eqz v2, :cond_4a

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/16 v2, 0x10

    if-eq v7, v2, :cond_49

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_29

    :cond_49
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_29

    :cond_4a
    iget v2, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4b

    const/16 v2, 0x7f6

    if-ne v14, v2, :cond_4b

    const-string v2, "ScreenDecorOverlayExpand"

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    :cond_4b
    const/16 v2, 0x7d3

    if-ne v14, v2, :cond_4d

    const-string v2, "com.android.nfc"

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    :cond_4c
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_29

    :cond_4d
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_29

    :cond_4e
    move-object v4, v12

    move/from16 v5, v62

    move/from16 v1, v63

    const/4 v0, 0x1

    move-object/from16 v12, p0

    :goto_2a
    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v2, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v2, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_4f

    const-string v2, "WindowManager"

    const-string v3, "Laying out navigation bar window: (%d,%d - %d,%d)"

    move/from16 v64, v14

    const/4 v0, 0x4

    new-array v14, v0, [Ljava/lang/Object;

    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v14, v17

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v22, 0x1

    aput-object v0, v14, v22

    iget v0, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v22, 0x2

    aput-object v0, v14, v22

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v13, 0x3

    aput-object v0, v14, v13

    invoke-static {v3, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :cond_4f
    move/from16 v64, v14

    const/4 v13, 0x3

    goto/16 :goto_2c

    :cond_50
    move-object v4, v12

    move/from16 v64, v14

    move/from16 v5, v62

    move/from16 v1, v63

    move-object/from16 v12, p0

    const/4 v13, 0x3

    :goto_2b
    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v25, :cond_51

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    iput v0, v4, Landroid/graphics/Rect;->left:I

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mRestricted:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    :cond_51
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_52

    const-string v0, "WindowManager"

    const-string v2, "Laying out IN_SCREEN status bar window: (%d,%d - %d,%d)"

    const/4 v3, 0x4

    new-array v14, v3, [Ljava/lang/Object;

    iget v3, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v17

    iget v3, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v22, 0x1

    aput-object v3, v14, v22

    iget v3, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v22, 0x2

    aput-object v3, v14, v22

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v14, v13

    invoke-static {v2, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    :goto_2c
    invoke-direct {v12, v1, v5, v10, v15}, Lcom/android/server/policy/PhoneWindowManager;->applyStableConstraints(IILandroid/graphics/Rect;Lcom/android/server/wm/DisplayFrames;)V

    const/16 v0, 0x30

    if-eq v7, v0, :cond_53

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mCurrent:Landroid/graphics/Rect;

    invoke-virtual {v6, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2d

    :cond_53
    invoke-virtual {v6, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_2d
    const/4 v0, 0x0

    iget v2, v11, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget-boolean v3, Lcom/android/server/policy/SystemGesturesPointerEventListener;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v3, :cond_58

    iget-boolean v3, v12, Lcom/android/server/policy/PhoneWindowManager;->mIsIgnoreCameraNotch:Z

    if-eqz v3, :cond_58

    const/4 v3, 0x1

    if-ne v2, v3, :cond_58

    const-string v3, "android"

    iget-object v14, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "com.oneplus.aod"

    iget-object v14, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    const-string v3, "com.android.systemui"

    iget-object v14, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_58

    iget v3, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-direct {v12, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v3

    if-eqz v3, :cond_55

    and-int/lit8 v3, v19, 0x4

    if-eqz v3, :cond_55

    and-int/lit8 v3, v19, 0x2

    if-nez v3, :cond_54

    goto :goto_2e

    :cond_54
    move/from16 v65, v1

    move v1, v13

    move-object/from16 v13, p1

    goto :goto_30

    :cond_55
    :goto_2e
    sget-object v3, Lcom/android/server/AppOpsService;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    iget-object v14, v11, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    sget-boolean v3, Lcom/android/server/AppOpsService;->mEnableIgnoreCutoutMode:Z

    if-eqz v3, :cond_54

    :cond_56
    sget-boolean v3, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_57

    const-string v3, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CameraNotch: ignore cutout always mode for "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v65, v1

    const/4 v1, 0x3

    move-object/from16 v13, p1

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f

    :cond_57
    move/from16 v65, v1

    move v1, v13

    move-object/from16 v13, p1

    :goto_2f
    sget-object v3, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v3, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    const/4 v2, 0x0

    goto :goto_30

    :cond_58
    move/from16 v65, v1

    move v1, v13

    move-object/from16 v13, p1

    :goto_30
    move v14, v2

    move/from16 v20, v65

    move-object/from16 v3, p2

    if-eqz v3, :cond_59

    if-nez v29, :cond_59

    const/4 v2, 0x1

    goto :goto_31

    :cond_59
    move/from16 v2, v17

    :goto_31
    move/from16 v22, v2

    and-int/lit8 v2, v19, 0x2

    if-eqz v2, :cond_5a

    const/4 v2, 0x1

    goto :goto_32

    :cond_5a
    move/from16 v2, v17

    :goto_32
    move/from16 v24, v2

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v2

    if-nez v2, :cond_5b

    if-eqz v29, :cond_5b

    move/from16 v2, v64

    const/4 v1, 0x1

    if-eq v2, v1, :cond_5c

    move/from16 v26, v1

    goto :goto_33

    :cond_5b
    move/from16 v2, v64

    const/4 v1, 0x1

    :cond_5c
    move/from16 v26, v17

    :goto_33
    if-eq v14, v1, :cond_62

    sget-object v1, Lcom/android/server/policy/PhoneWindowManager;->mTmpDisplayCutoutSafeExceptMaybeBarsRect:Landroid/graphics/Rect;

    move/from16 v66, v7

    iget-object v7, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v29, :cond_5d

    if-eqz v30, :cond_5d

    if-nez v27, :cond_5d

    if-nez v14, :cond_5d

    const/high16 v7, -0x80000000

    iput v7, v1, Landroid/graphics/Rect;->top:I

    goto :goto_34

    :cond_5d
    const/high16 v7, -0x80000000

    :goto_34
    if-eqz v29, :cond_5f

    if-eqz v30, :cond_5f

    if-nez v24, :cond_5f

    if-nez v14, :cond_5f

    iget v7, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    move/from16 v67, v14

    const/4 v14, 0x4

    if-eq v7, v14, :cond_5e

    packed-switch v7, :pswitch_data_0

    goto :goto_35

    :pswitch_0
    const v7, 0x7fffffff

    iput v7, v1, Landroid/graphics/Rect;->right:I

    goto :goto_35

    :pswitch_1
    const v7, 0x7fffffff

    const/high16 v14, -0x80000000

    iput v14, v1, Landroid/graphics/Rect;->left:I

    goto :goto_35

    :cond_5e
    const v7, 0x7fffffff

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_35

    :cond_5f
    move/from16 v67, v14

    :goto_35
    const/16 v14, 0x7db

    if-ne v2, v14, :cond_60

    iget v7, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v14, 0x4

    if-ne v7, v14, :cond_60

    const v7, 0x7fffffff

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    :cond_60
    if-nez v22, :cond_61

    if-nez v26, :cond_61

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    sget-object v7, Lcom/android/server/policy/PhoneWindowManager;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v14, 0x1

    xor-int/2addr v7, v14

    or-int/2addr v0, v7

    :cond_61
    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    move v14, v0

    goto :goto_36

    :cond_62
    move/from16 v66, v7

    move/from16 v67, v14

    move v14, v0

    :goto_36
    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isNotchUnLimited()Z

    move-result v0

    if-nez v0, :cond_63

    iget-object v0, v15, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    :cond_63
    and-int/lit16 v0, v5, 0x200

    if-eqz v0, :cond_64

    const/16 v0, 0x7da

    if-eq v2, v0, :cond_64

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_64

    const/16 v0, -0x2710

    iput v0, v8, Landroid/graphics/Rect;->top:I

    iput v0, v8, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x2710

    iput v0, v8, Landroid/graphics/Rect;->bottom:I

    iput v0, v8, Landroid/graphics/Rect;->right:I

    const/16 v0, 0x7dd

    if-eq v2, v0, :cond_64

    const/16 v0, -0x2710

    iput v0, v6, Landroid/graphics/Rect;->top:I

    iput v0, v6, Landroid/graphics/Rect;->left:I

    iput v0, v10, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->left:I

    iput v0, v9, Landroid/graphics/Rect;->top:I

    iput v0, v9, Landroid/graphics/Rect;->left:I

    const/16 v0, 0x2710

    iput v0, v6, Landroid/graphics/Rect;->bottom:I

    iput v0, v6, Landroid/graphics/Rect;->right:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    iput v0, v10, Landroid/graphics/Rect;->right:I

    iput v0, v9, Landroid/graphics/Rect;->bottom:I

    iput v0, v9, Landroid/graphics/Rect;->right:I

    :cond_64
    invoke-direct {v12, v11, v5}, Lcom/android/server/policy/PhoneWindowManager;->shouldUseOutsets(Landroid/view/WindowManager$LayoutParams;I)Z

    move-result v28

    if-eqz v16, :cond_6a

    if-eqz v28, :cond_6a

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpOutsetFrame:Landroid/graphics/Rect;

    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v7, v10, Landroid/graphics/Rect;->top:I

    move/from16 v68, v14

    iget v14, v10, Landroid/graphics/Rect;->right:I

    iget v13, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v7, v14, v13}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v12, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ScreenShapeHelper;->getWindowOutsetBottomPx(Landroid/content/res/Resources;)I

    move-result v1

    if-lez v1, :cond_69

    iget v7, v15, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    if-nez v7, :cond_65

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v1

    iput v13, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_37

    :cond_65
    const/4 v13, 0x1

    if-ne v7, v13, :cond_66

    iget v13, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v1

    iput v13, v0, Landroid/graphics/Rect;->right:I

    goto :goto_37

    :cond_66
    const/4 v13, 0x2

    if-ne v7, v13, :cond_67

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v1

    iput v13, v0, Landroid/graphics/Rect;->top:I

    goto :goto_37

    :cond_67
    const/4 v13, 0x3

    if-ne v7, v13, :cond_68

    iget v13, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v13, v1

    iput v13, v0, Landroid/graphics/Rect;->left:I

    :cond_68
    :goto_37
    sget-boolean v13, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v13, :cond_69

    const-string v13, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "applying bottom outset of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " with rotation "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", result: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_69
    move-object v13, v0

    goto :goto_38

    :cond_6a
    move/from16 v68, v14

    move-object/from16 v13, v23

    :goto_38
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6c

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compute frame "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": sim=#"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v45

    invoke-static {v14}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " attach="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " type="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " flags=0x%08x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v15, v17

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " pf="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " df="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " of="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " cf="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " vf="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dcf="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, v46

    invoke-virtual {v15}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " sf="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v69, v2

    move-object/from16 v7, v48

    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " osf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v13, :cond_6b

    const-string/jumbo v2, "null"

    goto :goto_39

    :cond_6b
    invoke-virtual {v13}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v2

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    :cond_6c
    move/from16 v69, v2

    move/from16 v14, v45

    move-object/from16 v15, v46

    move-object/from16 v7, v48

    :goto_3a
    iget-boolean v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mHideNavigationBar:Z

    if-eqz v0, :cond_6d

    move-object/from16 v2, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/policy/PhoneWindowManager;->isHomeApp(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_6e

    iget v0, v12, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6e

    sget-object v0, Lcom/android/server/policy/PhoneWindowManager;->mTmpNavigationFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_3b

    :cond_6d
    move-object/from16 v2, p1

    :cond_6e
    :goto_3b
    move-object/from16 v1, p3

    iget-object v0, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    move-object/from16 v17, v0

    move-object v0, v2

    move-object/from16 v70, v11

    move-object v11, v1

    move-object v1, v4

    move/from16 v71, v14

    move/from16 v14, v69

    move-object v2, v8

    move-object v3, v9

    move-object/from16 v23, v4

    move-object v4, v10

    move/from16 v31, v5

    move-object v5, v6

    move-object/from16 v32, v6

    move-object v6, v15

    move-object/from16 v33, v7

    move/from16 v34, v66

    move-object/from16 v35, v8

    move-object v8, v13

    move-object/from16 v36, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v10

    move/from16 v10, v68

    invoke-interface/range {v0 .. v10}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V

    const/16 v0, 0x7db

    if-ne v14, v0, :cond_6f

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v0

    if-nez v0, :cond_6f

    const/4 v0, 0x0

    invoke-virtual {v12, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v11}, Lcom/android/server/policy/PhoneWindowManager;->offsetInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    goto :goto_3c

    :cond_6f
    move-object/from16 v0, p1

    :goto_3c
    const/16 v1, 0x7ef

    if-ne v14, v1, :cond_70

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-interface/range {p1 .. p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getGivenInsetsPendingLw()Z

    move-result v1

    if-nez v1, :cond_70

    invoke-direct {v12, v0, v11}, Lcom/android/server/policy/PhoneWindowManager;->offsetVoiceInputWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    :cond_70
    return-void

    :goto_3d
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public lockNow(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;->setLockOptions(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method needSensorRunningLp()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockSensorForAppLaunched:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v2, "Waiting for App launched, no need to enable sensor."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/16 v4, 0xa

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    :cond_1
    return v3

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v0, v2, :cond_5

    :cond_4
    return v3

    :cond_5
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    if-ne v0, v3, :cond_6

    move v1, v3

    nop

    :cond_6
    return v1

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    return v0
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public notifyCameraLensCoverSwitchChanged(JZ)V
    .locals 7

    move v0, p3

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    if-ne v1, v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_2

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA_SECURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.media.action.STILL_IMAGE_CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    const-wide/32 v3, 0xf4240

    div-long v3, p1, v3

    iget-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromCameraLens:Z

    const-string v6, "android.policy:CAMERA_COVER"

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mCameraLensCoverState:I

    return-void
.end method

.method public notifyLidSwitchChanged(JZ)V
    .locals 5

    move v0, p3

    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->applyLidSwitchState()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    if-eqz p3, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromLidSwitch:Z

    const-string v4, "android.policy:LID"

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZLjava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidControlsSleep:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method public okToAnimate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onConfigurationChanged()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getSystemUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const v6, 0x105019f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarHeightForRotation:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    const v6, 0x105019e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const v6, 0x105011c

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarHeightForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    const v6, 0x105011e

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    aput v6, v4, v5

    aput v6, v2, v3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iget-object v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarWidthForRotationDefault:[I

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    const v10, 0x1050121

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    aput v10, v8, v9

    aput v10, v6, v7

    aput v10, v4, v5

    aput v10, v2, v3

    return-void
.end method

.method public onKeyguardDone()V
    .locals 0

    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    :goto_0
    return-void
.end method

.method public onLockTaskStateChangedLw(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/ImmersiveModeConfirmation;->onLockTaskModeChangedLw(I)V

    return-void
.end method

.method public onOverlayChangedLw()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->onConfigurationChanged()V

    return-void
.end method

.method public onSystemUiStarted()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    return-void
.end method

.method public performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->getVibrationEffect(I)Landroid/os/VibrationEffect;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_4
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrator:Landroid/os/Vibrator;

    sget-object v6, Lcom/android/server/policy/PhoneWindowManager;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {v5, v1, v4, v3, v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    return v2
.end method

.method protected preloadRecentApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->preloadRecentApps()V

    :cond_1
    return-void
.end method

.method public preloadWallapepr(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public prepareAddWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .locals 5

    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v0, p2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, -0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7e1

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7e8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x7f1

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVisibilityListener:Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/BarController;->setOnBarVisibilityChangedListener(Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;Z)V

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NAVIGATION BAR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "PhoneWindowManager"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v4, "PhoneWindowManager"

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    :cond_5
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/StatusBarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->setKeyguardOccludedLw(ZZ)Z

    nop

    :cond_6
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method readLidState()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getLidState()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    return-void
.end method

.method public registerShortcutKey(JLcom/android/internal/policy/IShortcutService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/IShortcutService;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/policy/IShortcutService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/os/RemoteException;

    const-string v3, "Key already exists."

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mShortcutKeyServices:Landroid/util/LongSparseArray;

    invoke-virtual {v2, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/StatusBarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne v0, p1, :cond_1

    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/BarController;->setWindow(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenDecorWindows:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public requestUserActivityNotification()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    :cond_0
    return-void
.end method

.method public rotationForOrientationLw(IIZ)I
    .locals 10

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->getProposedRotation()I

    move-result v2

    if-gez v2, :cond_1

    move v2, p2

    :cond_1
    const/4 v3, -0x1

    if-nez p3, :cond_2

    const/4 v3, 0x0

    :goto_0
    goto/16 :goto_7

    :cond_2
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    if-ltz v4, :cond_3

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLidOpenRotation:I

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    if-ltz v4, :cond_6

    :cond_4
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockEnablesAccelerometer:Z

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mCarDockRotation:I

    :goto_1
    goto :goto_0

    :cond_6
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v7, 0x4

    if-eq v4, v5, :cond_7

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    const/4 v8, 0x3

    if-eq v4, v8, :cond_7

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-ne v4, v7, :cond_8

    :cond_7
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-nez v4, :cond_19

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    if-ltz v4, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-nez v4, :cond_9

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v4, :cond_a

    :cond_9
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    if-eqz v4, :cond_a

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_0

    :cond_a
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    if-le v4, v3, :cond_b

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    goto :goto_0

    :cond_b
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eqz v4, :cond_c

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    if-nez v4, :cond_c

    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    if-ltz v4, :cond_c

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUndockedHdmiRotation:I

    goto :goto_0

    :cond_c
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    if-eqz v4, :cond_d

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_0

    :cond_d
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeEnabled:Z

    if-eqz v4, :cond_e

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    goto :goto_0

    :cond_e
    const/16 v4, 0xe

    if-ne p1, v4, :cond_f

    move v3, p2

    goto :goto_0

    :cond_f
    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mSupportAutoRotation:Z

    if-nez v4, :cond_10

    const/4 v3, -0x1

    goto :goto_0

    :cond_10
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/16 v8, 0xa

    const/16 v9, 0xd

    if-nez v4, :cond_11

    if-eq p1, v6, :cond_14

    if-eq p1, v3, :cond_14

    const/16 v4, 0xb

    if-eq p1, v4, :cond_14

    const/16 v4, 0xc

    if-eq p1, v4, :cond_14

    if-eq p1, v9, :cond_14

    :cond_11
    if-eq p1, v7, :cond_14

    if-eq p1, v8, :cond_14

    const/4 v4, 0x6

    if-eq p1, v4, :cond_14

    const/4 v4, 0x7

    if-ne p1, v4, :cond_12

    goto :goto_2

    :cond_12
    iget v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-ne v4, v5, :cond_13

    const/4 v4, 0x5

    if-eq p1, v4, :cond_13

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    goto/16 :goto_0

    :cond_13
    goto :goto_7

    :cond_14
    :goto_2
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-gez v3, :cond_16

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_15

    move v3, v5

    goto :goto_3

    :cond_15
    move v3, v1

    :goto_3
    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    :cond_16
    if-ne v2, v6, :cond_18

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mAllowAllRotations:I

    if-eq v3, v5, :cond_18

    if-eq p1, v8, :cond_18

    if-ne p1, v9, :cond_17

    goto :goto_4

    :cond_17
    move v3, p2

    goto/16 :goto_0

    :cond_18
    :goto_4
    move v3, v2

    goto/16 :goto_0

    :cond_19
    :goto_5
    iget-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockEnablesAccelerometer:Z

    if-eqz v3, :cond_1a

    move v3, v2

    goto :goto_6

    :cond_1a
    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mDeskDockRotation:I

    :goto_6
    goto/16 :goto_0

    :goto_7
    nop

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    if-ltz v3, :cond_23

    monitor-exit v0

    goto :goto_8

    :pswitch_1
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    monitor-exit v0

    return v3

    :cond_1b
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    monitor-exit v0

    return v1

    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    monitor-exit v0

    return v3

    :cond_1c
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    monitor-exit v0

    return v1

    :pswitch_3
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1d

    monitor-exit v0

    return v3

    :cond_1d
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    monitor-exit v0

    return p2

    :cond_1e
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v0

    return v1

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    monitor-exit v0

    return v3

    :cond_1f
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_20

    monitor-exit v0

    return p2

    :cond_20
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v0

    return v1

    :pswitch_5
    invoke-direct {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v1

    if-eqz v1, :cond_21

    monitor-exit v0

    return v3

    :cond_21
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    monitor-exit v0

    return v1

    :pswitch_6
    invoke-virtual {p0, v3}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v1

    if-eqz v1, :cond_22

    monitor-exit v0

    return v3

    :cond_22
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    monitor-exit v0

    return v1

    :goto_8
    return v3

    :cond_23
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public rotationHasCompatibleMetricsLw(II)Z
    .locals 1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 v0, 0x1

    return v0

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isAnyPortrait(I)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/policy/PhoneWindowManager;->isLandscapeOrSeascape(I)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public screenTurnedOff()V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turned off..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOff()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurnedOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurnedOn()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->reportScreenStateToVrManager(Z)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOff()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "Screen turning on..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateScreenOffSleepToken(Z)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnListener:Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->hasKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->getKeyguardDrawnTimeout()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawnCallback:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onScreenTurningOn(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate$DrawnListener;)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string/jumbo v2, "null mKeyguardDelegate: setting mKeyguardDrawComplete."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->finishKeyguardDrawn()V

    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public selectAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p1, v0, :cond_8

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v7, v2, :cond_1

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v7, v2, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    if-nez v0, :cond_7

    if-eqz v7, :cond_2

    goto :goto_4

    :cond_2
    if-eq p2, v5, :cond_6

    if-ne p2, v4, :cond_3

    goto :goto_3

    :cond_3
    if-eq p2, v6, :cond_5

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    goto/16 :goto_8

    :cond_5
    :goto_2
    const v1, 0x10a002d

    return v1

    :cond_6
    :goto_3
    const v1, 0x10a002e

    return v1

    :cond_7
    :goto_4
    return v2

    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-ne p1, v0, :cond_16

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_9

    return v3

    :cond_9
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v4, :cond_e

    if-eq p2, v5, :cond_c

    if-ne p2, v4, :cond_a

    goto :goto_5

    :cond_a
    if-eq p2, v6, :cond_b

    if-ne p2, v1, :cond_17

    :cond_b
    const v0, 0x10a0026

    return v0

    :cond_c
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_d

    const v0, 0x10a0028

    return v0

    :cond_d
    const v0, 0x10a0027

    return v0

    :cond_e
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v5, :cond_12

    if-eq p2, v5, :cond_11

    if-ne p2, v4, :cond_f

    goto :goto_6

    :cond_f
    if-eq p2, v6, :cond_10

    if-ne p2, v1, :cond_17

    :cond_10
    const v0, 0x10a002b

    return v0

    :cond_11
    :goto_6
    const v0, 0x10a002c

    return v0

    :cond_12
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarPosition:I

    if-ne v0, v6, :cond_17

    if-eq p2, v5, :cond_15

    if-ne p2, v4, :cond_13

    goto :goto_7

    :cond_13
    if-eq p2, v6, :cond_14

    if-ne p2, v1, :cond_17

    :cond_14
    const v0, 0x10a0029

    return v0

    :cond_15
    :goto_7
    const v0, 0x10a002a

    return v0

    :cond_16
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7f2

    if-ne v0, v1, :cond_17

    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->selectDockedDividerAnimationLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;I)I

    move-result v0

    return v0

    :cond_17
    :goto_8
    const/4 v0, 0x5

    if-ne p2, v0, :cond_18

    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->hasAppShownWindows()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x10a0013

    return v0

    :cond_18
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDreamingLockscreen:Z

    if-eqz v0, :cond_19

    if-ne p2, v6, :cond_19

    return v2

    :cond_19
    return v3
.end method

.method public selectRotationAnimationLw([I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    const v3, 0x10a0071

    const v4, 0x10a0070

    if-eqz v0, :cond_2

    aput v3, p1, v2

    aput v4, p1, v1

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getRotationAnimationHint()I

    move-result v5

    if-gez v5, :cond_3

    iget-boolean v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopIsFullscreen:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v6}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    iget v5, v6, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    :cond_3
    packed-switch v5, :pswitch_data_0

    aput v2, p1, v1

    aput v2, p1, v2

    goto :goto_2

    :pswitch_0
    aput v3, p1, v2

    aput v4, p1, v1

    goto :goto_2

    :pswitch_1
    const v3, 0x10a0072

    aput v3, p1, v2

    aput v4, p1, v1

    nop

    :goto_2
    goto :goto_3

    :cond_4
    aput v2, p1, v1

    aput v2, p1, v2

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method sendCloseSystemWindows()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method sendCloseSystemWindows(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/policy/PhoneWindow;->sendCloseSystemWindows(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public setAodShowing(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAodShowing:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCurrentOrientationLw(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCurrentUserLw(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setCurrentUser(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityShortcutController:Lcom/android/internal/accessibility/AccessibilityShortcutController;

    invoke-virtual {v0, p1}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->setCurrentUser(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setCurrentUser(I)V

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lcom/android/server/policy/PhoneWindowManager;->setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public setDismissImeOnBackKeyPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mDismissImeOnBackKeyPressed:Z

    return-void
.end method

.method public setFingerprintEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mIsFingerprintEnabled:Z

    return-void
.end method

.method setHdmiPlugged(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    if-eq v0, p1, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting Intent for HDMI HPD :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHdmiPlugged:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(ZZ)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_0
    return-void
.end method

.method public setInitialDisplaySize(Landroid/view/Display;III)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    if-eqz v3, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_6

    :cond_0
    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/android/server/policy/PhoneWindowManager;->mDisplay:Landroid/view/Display;

    iget-object v4, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120097

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-le v1, v2, :cond_2

    move v10, v2

    move v11, v1

    iput v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_1

    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_0

    :cond_1
    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    goto :goto_0

    :cond_2
    move v10, v1

    move v11, v2

    iput v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v6, v0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    goto :goto_0

    :cond_3
    iput v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mSeascapeRotation:I

    :goto_0
    mul-int/lit16 v5, v10, 0xa0

    div-int v5, v5, p4

    mul-int/lit16 v6, v11, 0xa0

    div-int v6, v6, p4

    if-eq v1, v2, :cond_4

    const/16 v7, 0x258

    if-ge v5, v7, :cond_4

    move v7, v8

    goto :goto_1

    :cond_4
    move v7, v9

    :goto_1
    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    const v7, 0x11200a0

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    const-string/jumbo v7, "qemu.hw.mainkeys"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v12, "1"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    goto :goto_2

    :cond_5
    const-string v12, "0"

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    iput-boolean v8, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    :cond_6
    :goto_2
    iget-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "buttons_show_on_screen_navkeys"

    invoke-static {v13, v14, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v8, :cond_7

    move v13, v8

    goto :goto_3

    :cond_7
    move v13, v9

    :goto_3
    or-int/2addr v12, v13

    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    const-string/jumbo v12, "portrait"

    const-string/jumbo v13, "persist.demo.hdmirotation"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    goto :goto_4

    :cond_8
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotation:I

    :goto_4
    const-string/jumbo v12, "persist.demo.hdmirotationlock"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoHdmiRotationLock:Z

    const-string/jumbo v12, "portrait"

    const-string/jumbo v13, "persist.demo.remoterotation"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mPortraitRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    goto :goto_5

    :cond_9
    iget v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mLandscapeRotation:I

    iput v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotation:I

    :goto_5
    const-string/jumbo v12, "persist.demo.rotationlock"

    invoke-static {v12, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mDemoRotationLock:Z

    iget-object v12, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    const-string v13, "android.hardware.type.automotive"

    invoke-virtual {v12, v13}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v12

    iget-object v13, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const-string v14, "android.software.leanback"

    invoke-virtual {v13, v14}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v13

    const/16 v14, 0x3c0

    if-lt v6, v14, :cond_a

    const/16 v14, 0x2d0

    if-ge v5, v14, :cond_b

    :cond_a
    if-nez v12, :cond_b

    if-eqz v13, :cond_c

    :cond_b
    const v14, 0x1120073

    invoke-virtual {v4, v14}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    if-eqz v14, :cond_c

    const-string/jumbo v14, "true"

    const-string v8, "config.override_forced_orient"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    const/4 v9, 0x1

    nop

    :cond_c
    iput-boolean v9, v0, Lcom/android/server/policy/PhoneWindowManager;->mForceDefaultOrientation:Z

    return-void

    :cond_d
    :goto_6
    move-object/from16 v3, p1

    return-void
.end method

.method public setLastInputMethodWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iput-object p2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastInputMethodTargetWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    return-void
.end method

.method public setNavBarVirtualKeyHapticFeedbackEnabledLw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavBarVirtualKeyHapticFeedbackEnabled:Z

    return-void
.end method

.method public setPipVisibilityLw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPictureInPictureVisible:Z

    return-void
.end method

.method public setRecentsVisibilityLw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mRecentsVisible:Z

    return-void
.end method

.method public setRotationLw(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->setCurrentRotation(I)V

    return-void
.end method

.method public setSafeMode(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSafeMode:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x2711

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedbackLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;IZ)Z

    :cond_0
    return-void
.end method

.method public setSwitchingUser(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->setSwitchingUser(Z)V

    return-void
.end method

.method public setUserRotationMode(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "user_rotation"

    invoke-static {v0, v1, p2, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v1, "accelerometer_rotation"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void
.end method

.method public shouldRotateSeamlessly(II)Z
    .locals 5

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_7

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpsideDownRotation:I

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarCanMove:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    sub-int v0, p2, p1

    if-gez v0, :cond_2

    add-int/lit8 v0, v0, 0x4

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isAnimatingLw()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    if-eq v4, v2, :cond_5

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_6

    :cond_5
    const/4 v1, 0x1

    return v1

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v1
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/PhoneWindowManager$22;

    invoke-direct {v1, p0, p1}, Lcom/android/server/policy/PhoneWindowManager$22;-><init>(Lcom/android/server/policy/PhoneWindowManager;Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showGlobalActions()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method showGlobalActionsInternal()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/policy/GlobalActions;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/GlobalActions;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mGlobalActions:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isDeviceProvisioned()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZ)V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->stopLongshot()V

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/PowerManager;->userActivity(JZ)V

    :cond_1
    return-void
.end method

.method public showRecentApps()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->isUserSetupComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting activity because user setup is in progress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method startDockOrHome(ZZ)V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->stopAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const-string/jumbo v0, "homekey"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->sendCloseSystemWindows(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->awakenDreams()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->createHomeDockIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    :try_start_1
    const-string v1, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :goto_2
    nop

    :cond_2
    if-eqz p1, :cond_3

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v2, "android.intent.extra.FROM_HOME_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHomeIntent:Landroid/content/Intent;

    :goto_3
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startKeyguardExitAnimation(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_KEYGUARD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "PWM.startKeyguardExitAnimation"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->startKeyguardExitAnimation(JJ)V

    :cond_1
    return-void
.end method

.method startVoiceAssistDelay()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyTempFunction:I

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public startedGoingToSleep(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Started going to sleep... (why="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mGoingToSleep:Z

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mRequestedOrGoingToSleep:Z

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedGoingToSleep(I)V

    :cond_1
    return-void
.end method

.method public startedWakingUp()V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x11170

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(II)I

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_WAKEUP:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    const-string v2, "Started waking up..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateLockScreenTimeout()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onStartedWakingUp()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopLongshotConnection()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelper;->stopLongshotConnection()V

    :cond_0
    return-void
.end method

.method public systemBooted()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->bindKeyguard()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->startedWakingUp()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->screenTurnedOn()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onSystemReady()V

    const-class v0, Lcom/android/server/vr/VrManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/vr/VrManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mVrManagerInternal:Lcom/android/server/vr/VrManagerInternal;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mPersistentVrModeListener:Landroid/service/vr/IPersistentVrStateCallbacks;

    invoke-virtual {v0, v1}, Lcom/android/server/vr/VrManagerInternal;->addPersistentVrModeStateListener(Landroid/service/vr/IPersistentVrStateCallbacks;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->readCameraLensCoverState()V

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateUiMode()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/PhoneWindowManager$21;

    invoke-direct {v2, p0}, Lcom/android/server/policy/PhoneWindowManager$21;-><init>(Lcom/android/server/policy/PhoneWindowManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemBooted:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    invoke-virtual {v1}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->onBootCompleted()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemGestures:Lcom/android/server/policy/SystemGesturesPointerEventListener;

    invoke-virtual {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->systemReady()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    invoke-virtual {v0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->systemReady()V

    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/autofill/AutofillManagerInternal;

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAutofillManagerInternal:Landroid/view/autofill/AutofillManagerInternal;

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public takeOPScreenshot(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;->setScreenshotType(I)V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenshotRunnable:Lcom/android/server/policy/PhoneWindowManager$ScreenshotRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected toggleRecentApps()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mPreloadedRecentApps:Z

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V

    :cond_1
    return-void
.end method

.method updateOrientationListenerLp()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->canDetectOrientation()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mScreenOnEarly="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAwake="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentAppOrientation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOrientationSensorEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mKeyguardDrawComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mWindowManagerDrawComplete="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnEarly:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->needSensorRunningLp()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->enable(Z)V

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "WindowManager"

    const-string v3, "Enabling listeners"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    :cond_5
    if-eqz v0, :cond_8

    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->disable()V

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->localLOGV:Z

    if-nez v1, :cond_6

    sget-boolean v1, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_7

    :cond_6
    const-string v1, "WindowManager"

    const-string v2, "Disabling listeners"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationSensorEnabled:Z

    :cond_8
    return-void
.end method

.method updateRotation(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method updateRotation(ZZ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindowManager;->updateRotation(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public updateSettings()V
    .locals 14
    
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->setCustomApp()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "end_button_behavior"

    const/4 v4, 0x2

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mEndcallBehavior:I

    const-string/jumbo v3, "incall_power_button_behavior"

    const/4 v6, 0x1

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallPowerBehavior:I

    const-string/jumbo v3, "incall_back_button_behavior"

    const/4 v7, 0x0

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mIncallBackBehavior:I

    const-string/jumbo v3, "system_navigation_keys_enabled"

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_0

    move v3, v6

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemNavigationKeysEnabled:Z

    const-string/jumbo v3, "volume_hush_gesture"

    invoke-static {v0, v3, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    iget-object v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x11200d2

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    iput v7, p0, Lcom/android/server/policy/PhoneWindowManager;->mRingerToggleChord:I

    :cond_1
    const-string/jumbo v3, "show_rotation_suggestions"

    invoke-static {v0, v3, v6, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    if-eq v8, v3, :cond_2

    iput v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mShowRotationSuggestions:I

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_2
    const-string/jumbo v8, "wake_gesture_enabled"

    invoke-static {v0, v8, v7, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v6

    goto :goto_1

    :cond_3
    move v8, v7

    :goto_1
    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    if-eq v9, v8, :cond_4

    iput-boolean v8, p0, Lcom/android/server/policy/PhoneWindowManager;->mWakeGestureEnabledSetting:Z

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateWakeGestureListenerLp()V

    :cond_4
    const-string v9, "buttons_show_on_screen_navkeys"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_5

    move v9, v6

    goto :goto_2

    :cond_5
    move v9, v7

    :goto_2
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x502000f

    invoke-static {v9, v10}, Lcom/android/server/policy/PhoneWindowManager;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mGestureBtnVibePattern:[J

    sget-boolean v9, Lcom/android/server/policy/OemGestureButton;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v10, -0x1

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNavigationBar:I

    if-ne v9, v10, :cond_6

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNavigationBar:I

    goto :goto_3

    :cond_6
    iget v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNavigationBar:I

    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    if-eq v9, v11, :cond_7

    iget-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasNavigationBar:Z

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastNavigationBar:I

    iget-object v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUpdateRotationTrueRunnable:Ljava/lang/Runnable;

    invoke-virtual {v9, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    :goto_3
    sget-boolean v9, Lcom/android/server/policy/PhoneWindowManager;->IS_SUPPORT_VIBRATION_INTENSITY:Z

    if-eqz v9, :cond_9

    const-string/jumbo v9, "vibrate_on_touch_intensity"

    invoke-static {v0, v9, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    if-eqz v11, :cond_9

    sget-boolean v11, Lcom/android/server/policy/PhoneWindowManager;->DEBUG_ONEPLUS:Z

    if-eqz v11, :cond_8

    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrateOnTouchIntensity:I

    if-eq v11, v9, :cond_8

    const-string v11, "WindowManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "update vibrate_on_touch to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mVibrateOnTouchIntensity:I

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockPatternVibePattern:[J

    add-int/lit8 v12, v9, 0x1

    mul-int/2addr v12, v10

    int-to-long v12, v12

    aput-wide v12, v11, v7

    :cond_9
    const-string/jumbo v9, "quick_turn_on_voice_assistant"

    invoke-static {v0, v9, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    if-eqz v9, :cond_a

    move v9, v6

    goto :goto_4

    :cond_a
    move v9, v7

    :goto_4
    iput-boolean v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyAssistantEnable:Z

    const-string/jumbo v9, "user_rotation"

    invoke-static {v0, v9, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v9

    iget v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    if-eq v10, v9, :cond_b

    iput v9, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    const/4 v1, 0x1

    :cond_b
    const-string v10, "accelerometer_rotation"

    invoke-static {v0, v10, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    if-eqz v10, :cond_c

    nop

    move v10, v7

    goto :goto_5

    :cond_c
    move v10, v6

    :goto_5
    iget v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    if-eq v11, v10, :cond_d

    iput v10, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    :cond_d
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mSystemReady:Z

    if-eqz v11, :cond_f

    const-string/jumbo v11, "pointer_location"

    invoke-static {v0, v11, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    if-eq v12, v11, :cond_f

    iput v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mPointerLocationMode:I

    iget-object v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    if-eqz v11, :cond_e

    nop

    move v4, v6

    goto :goto_6

    :cond_e
    nop

    :goto_6
    invoke-virtual {v12, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_f
    const-string/jumbo v4, "screen_off_timeout"

    invoke-static {v0, v4, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    const-string v4, "default_input_method"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_10

    move v5, v6

    goto :goto_7

    :cond_10
    move v5, v7

    :goto_7
    iget-boolean v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    if-eq v11, v5, :cond_11

    iput-boolean v5, p0, Lcom/android/server/policy/PhoneWindowManager;->mHasSoftInput:Z

    const/4 v1, 0x1

    :cond_11
    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/server/policy/PhoneWindowManager;->mImmersiveModeConfirmation:Lcom/android/server/policy/ImmersiveModeConfirmation;

    iget v12, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentUserId:I

    invoke-virtual {v11, v12}, Lcom/android/server/policy/ImmersiveModeConfirmation;->loadSetting(I)V

    :cond_12
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v2}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/policy/PolicyControl;->reloadFromSetting(Landroid/content/Context;)V

    const-string/jumbo v2, "systemui_navigation_bar_hided"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_13

    move v7, v6

    nop

    :cond_13
    move v2, v7

    invoke-direct {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateNavigationBar(Z)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_14

    invoke-virtual {p0, v6}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    :cond_14
    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method updateUiMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    if-nez v0, :cond_0

    const-string/jumbo v0, "uimode"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiModeManager:Landroid/app/IUiModeManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public userActivity()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimerActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenLockTimeout:Lcom/android/server/policy/PhoneWindowManager$ScreenLockTimeout;

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager;->mLockScreenTimeout:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mAwake:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1d

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mNotifyUserActivity:Z

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public validateRotationAnimationLw(IIZ)Z
    .locals 4

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x0

    if-eqz p3, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p0, v2}, Lcom/android/server/policy/PhoneWindowManager;->selectRotationAnimationLw([I)V

    aget v3, v2, v1

    if-ne p1, v3, :cond_1

    aget v3, v2, v0

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x10a0071
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotationMode:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mUserRotation:I

    const-wide v3, 0x10e00000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mCurrentAppOrientation:I

    const-wide v3, 0x10e00000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mScreenOnFully:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDrawComplete:Z

    const-wide v3, 0x10800000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerDrawComplete:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    if-eqz v2, :cond_0

    const-wide v2, 0x10900000008L

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedApp:Landroid/view/IApplicationToken;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mFocusedWindow:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v3, 0x10b00000009L

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v3, 0x10b0000000aL

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_2
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mTopFullscreenOpaqueOrDimmingWindowState:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    const-wide v3, 0x10b0000000bL

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_3
    const-wide v2, 0x1080000000cL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccluded:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000dL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardOccludedChanged:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000eL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mPendingKeyguardOccluded:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x1080000000fL

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBar:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v2, 0x10800000010L

    iget-boolean v4, p0, Lcom/android/server/policy/PhoneWindowManager;->mForceStatusBarFromKeyguard:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mStatusBarController:Lcom/android/server/policy/StatusBarController;

    const-wide v3, 0x10b00000011L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/StatusBarController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBarController:Lcom/android/server/policy/BarController;

    const-wide v3, 0x10b00000012L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/BarController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mOrientationListener:Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;

    const-wide v3, 0x10b00000013L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/PhoneWindowManager$MyOrientationListener;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    const-wide v3, 0x10b00000014L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public takeFullScreenshot()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/server/policy/PhoneWindowManager;->takeOPScreenshot(II)V

    return-void
.end method

.method public setCustomApp()V
	.locals 2
	
	iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

	const-string/jumbo v1, "tweaks_custom_home_double_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressHomeCustomApp:Ljava/lang/String;
    
    const-string/jumbo v1, "tweaks_custom_home_long_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressHomeCustomApp:Ljava/lang/String;
    
    const-string/jumbo v1, "tweaks_custom_back_double_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressBackCustomApp:Ljava/lang/String;
    
    const-string/jumbo v1, "tweaks_custom_back_long_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressBackCustomApp:Ljava/lang/String;
    
    const-string/jumbo v1, "tweaks_custom_recent_double_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mDoublePressRecentCustomApp:Ljava/lang/String;
    
    const-string/jumbo v1, "tweaks_custom_recent_long_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressRecentCustomApp:Ljava/lang/String;
    
    const-string/jumbo v1, "tweaks_custom_fingerprint_long_app"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    
    sput-object v1, Lcom/android/server/policy/PhoneWindowManager;->mLongPressFingerprintCustomApp:Ljava/lang/String;
   
   return-void   
.end method
