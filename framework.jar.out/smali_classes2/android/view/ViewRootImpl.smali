.class public final Landroid/view/ViewRootImpl;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/ThreadedRenderer$DrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$UnhandledKeyManager;,
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$HighContrastTextManager;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;,
        Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;,
        Landroid/view/ViewRootImpl$WindowInputEventReceiver;,
        Landroid/view/ViewRootImpl$TraversalRunnable;,
        Landroid/view/ViewRootImpl$QueuedInputEvent;,
        Landroid/view/ViewRootImpl$SyntheticKeyboardHandler;,
        Landroid/view/ViewRootImpl$SyntheticTouchNavigationHandler;,
        Landroid/view/ViewRootImpl$SyntheticJoystickHandler;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$SyntheticTrackballHandler;,
        Landroid/view/ViewRootImpl$SyntheticInputStage;,
        Landroid/view/ViewRootImpl$ViewPostImeInputStage;,
        Landroid/view/ViewRootImpl$NativePostImeInputStage;,
        Landroid/view/ViewRootImpl$EarlyPostImeInputStage;,
        Landroid/view/ViewRootImpl$ImeInputStage;,
        Landroid/view/ViewRootImpl$ViewPreImeInputStage;,
        Landroid/view/ViewRootImpl$NativePreImeInputStage;,
        Landroid/view/ViewRootImpl$AsyncInputStage;,
        Landroid/view/ViewRootImpl$InputStage;,
        Landroid/view/ViewRootImpl$ViewRootHandler;,
        Landroid/view/ViewRootImpl$WindowStoppedCallback;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ActivityConfigCallback;,
        Landroid/view/ViewRootImpl$ConfigChangedCallback;
    }
.end annotation


# static fields
.field public static final CAMERA_NOTCH_HEIGHT:I = 0x50

.field private static final DBG:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DISABLEHW:Z

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

.field static final DEBUG_GESTURE_BUTTON:Z

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_INPUT_STAGES:Z = false

.field private static final DEBUG_KEEP_SCREEN_ON:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field private static final GESTURE_BUTTON_HEIGHT:I = 0x32

.field private static final GESTURE_KEY_DISTANCE_THRESHOLD:I

.field private static final GESTURE_KEY_HORIZONTAL_DISTANCE_THRESHOLD:I

.field private static final GESTURE_KEY_LONG_CLICK_MOVE:I

.field private static final GESTURE_MOTION_QUEUE_DELAY:I

.field private static final GESTURE_MOTION_SLOW_MOVE_TIME:I = 0x190

.field static final IS_GESTURE_BUTTON_ENABLED:Z

.field public static final IS_SCREEN_COMPAT_ENABLED:Z

.field public static final IS_SUPPORT_CAMERA_NOTCH:Z

.field public static final LIMITED_SCREEN_SIZE:I = 0x780

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_QUEUED_INPUT_EVENT_POOL_SIZE:I = 0xa

.field public static final MAX_SCREEN_SIZE:I

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MSG_CHECK_FOCUS:I = 0xd

.field private static final MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST:I = 0x15

.field private static final MSG_CLOSE_SYSTEM_DIALOGS:I = 0xe

.field private static final MSG_DIE:I = 0x3

.field private static final MSG_DISPATCH_APP_VISIBILITY:I = 0x8

.field private static final MSG_DISPATCH_DRAG_EVENT:I = 0xf

.field private static final MSG_DISPATCH_DRAG_LOCATION_EVENT:I = 0x10

.field private static final MSG_DISPATCH_GET_NEW_SURFACE:I = 0x9

.field private static final MSG_DISPATCH_INPUT_EVENT:I = 0x7

.field private static final MSG_DISPATCH_KEY_FROM_AUTOFILL:I = 0xc

.field private static final MSG_DISPATCH_KEY_FROM_IME:I = 0xb

.field private static final MSG_DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x11

.field private static final MSG_DISPATCH_WINDOW_SHOWN:I = 0x19

.field private static final MSG_DRAW_FINISHED:I = 0x1d

.field private static final MSG_GESTURE_CONFIG_CHECK:I = 0x1e6c

.field private static final MSG_GESTURE_MOTION_DOWN:I = 0x15be

.field private static final MSG_INVALIDATE:I = 0x1

.field private static final MSG_INVALIDATE_RECT:I = 0x2

.field private static final MSG_INVALIDATE_WORLD:I = 0x16

.field private static final MSG_POINTER_CAPTURE_CHANGED:I = 0x1c

.field private static final MSG_PROCESS_INPUT_EVENTS:I = 0x13

.field private static final MSG_REQUEST_KEYBOARD_SHORTCUTS:I = 0x1a

.field private static final MSG_RESIZED:I = 0x4

.field private static final MSG_RESIZED_REPORT:I = 0x5

.field private static final MSG_SYNTHESIZE_INPUT_EVENT:I = 0x18

.field private static final MSG_UPDATE_CONFIGURATION:I = 0x12

.field private static final MSG_UPDATE_POINTER_ICON:I = 0x1b

.field private static final MSG_WINDOW_FOCUS_CHANGED:I = 0x6

.field private static final MSG_WINDOW_MOVED:I = 0x17

.field private static final MT_RENDERER_AVAILABLE:Z = true

.field static final MULTI_TOUCH_GAME_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OEM_HOME_PACKAGE_NAME:Ljava/lang/String; = "net.oneplus.launcher"

.field private static final OEM_SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field static final OEM_VMEDUA_PLAYER_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROPERTY_EMULATOR_WIN_OUTSET_BOTTOM_PX:Ljava/lang/String; = "ro.emu.win_outset_bottom_px"

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewroot.profile_rendering"

.field private static final SCROLL_BOOST_SS_ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final THREE_FINGER_TAP_INTERVAL:I = 0x1f4

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field private static sAlwaysAssignFocus:Z

.field private static sCompatibilityDone:Z

.field private static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$ConfigChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public static sIsNotchLimited:Z

.field public static sIsScreenCompatMode:Z

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/view/HandlerActionQueue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mAccessibilityFocusedHost:Landroid/view/View;

.field mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

.field final mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

.field private mActivityRelaunched:Z

.field mAdded:Z

.field mAddedTouchMode:Z

.field private mAppVisibilityChanged:Z

.field mAppVisible:Z

.field mApplyInsetsRequested:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBackupEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mBasePackageName:Ljava/lang/String;

.field private mBlockEvent:Z

.field private mCanvasOffsetX:I

.field private mCanvasOffsetY:I

.field private mCheckForGestureButton:Z

.field mChoreographer:Landroid/view/Choreographer;

.field mClientWindowLayoutFlags:I

.field public mConfigOffset:I

.field public mConfigResetHeight:Z

.field public mConfigResetWidth:Z

.field final mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

.field mConsumeBatchedInputImmediatelyScheduled:Z

.field mConsumeBatchedInputScheduled:Z

.field final mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

.field final mContext:Landroid/content/Context;

.field mCurScrollY:I

.field mCurrentDragView:Landroid/view/View;

.field private mCustomPointerIcon:Landroid/view/PointerIcon;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field final mDispatchContentInsets:Landroid/graphics/Rect;

.field mDispatchDisplayCutout:Landroid/view/DisplayCutout;

.field final mDispatchStableInsets:Landroid/graphics/Rect;

.field mDisplay:Landroid/view/Display;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field private mDragResizing:Z

.field mDrawingAllowed:Z

.field mDrawsNeededToReport:I

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field mFirst:Z

.field mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

.field mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mForceDecorViewVisibility:Z

.field public mForceGetX:Z

.field public mForceGetY:Z

.field private mForceNextConfigUpdate:Z

.field mForceNextWindowRelayout:Z

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field private mGestureButtonActive:Z

.field private mGestureButtonEnabled:Z

.field private mGestureButtonZone:I

.field mHadWindowFocus:Z

.field final mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

.field mHandlingLayoutInLayoutRequest:Z

.field mHardwareXOffset:I

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHaveMoveEvent:Z

.field mHeight:I

.field final mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

.field private mInLayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field final mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

.field private mInvalidateRootRequested:Z

.field mIsAmbientMode:Z

.field public mIsAnimating:Z

.field mIsCreating:Z

.field mIsDrawing:Z

.field private mIsHomePackage:Z

.field mIsInTraversal:Z

.field private mIsKeyguard:Z

.field private mIsMediaPlayerPackage:Z

.field mIsMultiTouchGame:Z

.field public mIsNotchLimited:Z

.field mIsPerfLockAcquired:Z

.field public mIsScreenCompatMode:Z

.field private final mLastConfigurationFromResources:Landroid/content/res/Configuration;

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastOverscanRequested:Z

.field private final mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

.field mLastScrolledFocus:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mLastSystemUiVisibility:I

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTouchSource:I

.field mLastWasImTarget:Z

.field private mLastWindowInsets:Landroid/view/WindowInsets;

.field mLayoutRequested:Z

.field mLayoutRequesters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mLostWindowFocus:Z

.field private mNeedsRendererSetup:Z

.field mNewSurfaceNeeded:Z

.field private mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

.field private final mNoncompatDensity:I

.field public mNotchLimitMaxSize:I

.field public mNotchLimitSize:I

.field private mOneThirdPart:I

.field mOrigWindowType:I

.field mPausedForTransition:Z

.field mPendingAlwaysConsumeNavBar:Z

.field final mPendingBackDropFrame:Landroid/graphics/Rect;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field final mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

.field mPendingInputEventCount:I

.field mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

.field mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private final mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

.field final mPendingOutsets:Landroid/graphics/Rect;

.field final mPendingOverscanInsets:Landroid/graphics/Rect;

.field final mPendingStableInsets:Landroid/graphics/Rect;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field mPerf:Landroid/util/BoostFramework;

.field mPointerCapture:Z

.field private mPointerIconType:I

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field mProcessInputEventsScheduled:Z

.field private mProfile:Z

.field private mProfileRendering:Z

.field private mQueueMotionConsumed:Z

.field private mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field private mQueuedInputEventPoolSize:I

.field private mRawX:F

.field private mRawY:F

.field private mRemoved:Z

.field private mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

.field private mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field private mResizeMode:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field public final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

.field private mTag:Ljava/lang/String;

.field final mTargetSdkVersion:I

.field mTempHashSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field public mTouchOffSet:I

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalBarrier:I

.field final mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

.field public mTraversalScheduled:Z

.field mUnbufferedInputDispatch:Z

.field private final mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

.field mUpcomingInTouchMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field mUpcomingWindowFocus:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUseMTRenderer:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mViewLayoutDirectionInitial:I

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field public final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I

.field final mWindowCallbacks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mWindowCallbacks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/WindowCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

.field mWindowFocusChanged:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field final mWindowSession:Landroid/view/IWindowSession;

.field private final mWindowStoppedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/ViewRootImpl$WindowStoppedCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 161
    const-string v0, "debug.viewroot.disableHW"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_DISABLEHW:Z

    .line 167
    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x3a

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Landroid/view/ViewRootImpl;->IS_SUPPORT_CAMERA_NOTCH:Z

    .line 168
    new-array v2, v0, [I

    const/16 v3, 0x23

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Landroid/view/ViewRootImpl;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v0

    :goto_1
    sput-boolean v2, Landroid/view/ViewRootImpl;->IS_SCREEN_COMPAT_ENABLED:Z

    .line 172
    sget-boolean v2, Landroid/view/ViewRootImpl;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v2, :cond_2

    const/16 v2, 0x8e8

    goto :goto_2

    :cond_2
    const/16 v2, 0x870

    :goto_2
    sput v2, Landroid/view/ViewRootImpl;->MAX_SCREEN_SIZE:I

    .line 175
    sput-boolean v1, Landroid/view/ViewRootImpl;->sIsScreenCompatMode:Z

    .line 179
    sput-boolean v1, Landroid/view/ViewRootImpl;->sIsNotchLimited:Z

    .line 192
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v2, Landroid/view/ViewRootImpl;->DEBUG_ONEPLUS:Z

    .line 193
    new-array v2, v0, [I

    const/16 v3, 0x34

    aput v3, v2, v1

    .line 194
    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, Landroid/view/ViewRootImpl;->IS_GESTURE_BUTTON_ENABLED:Z

    .line 195
    sget-boolean v2, Landroid/view/ViewRootImpl;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v2, :cond_3

    sget-boolean v2, Landroid/view/ViewRootImpl;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    .line 198
    const-string/jumbo v0, "persist.gesture_button.long_click_timeout"

    const/16 v2, 0xc8

    .line 199
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImpl;->GESTURE_MOTION_QUEUE_DELAY:I

    .line 202
    const-string/jumbo v0, "persist.gesture_button.long_click_move"

    const/16 v2, 0x32

    .line 203
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImpl;->GESTURE_KEY_LONG_CLICK_MOVE:I

    .line 208
    const-string/jumbo v0, "persist.gesture_button.dis"

    const/16 v2, 0x3c

    .line 209
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImpl;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    .line 211
    const-string/jumbo v0, "persist.sys.gesture_button.horizontal_dis"

    const/16 v2, 0x64

    .line 212
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/view/ViewRootImpl;->GESTURE_KEY_HORIZONTAL_DISTANCE_THRESHOLD:I

    .line 233
    const-string v2, "com.qiyi.video"

    const-string v3, "com.sohu.sohuvideo"

    const-string v4, "com.baidu.video"

    const-string v5, "com.tencent.qqlive"

    const-string/jumbo v6, "tv.pps.mobile"

    const-string v7, "com.tudou.android"

    const-string v8, "com.youku.phone"

    filled-new-array/range {v2 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/ViewRootImpl;->OEM_VMEDUA_PLAYER_PACKAGE_LIST:Ljava/util/List;

    .line 247
    const-string v0, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.tmgp.speedmobile"

    const-string v3, "com.tencent.tmgp.pubgmhd"

    filled-new-array {v0, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/view/ViewRootImpl;->MULTI_TOUCH_GAME_LIST:Ljava/util/List;

    .line 278
    const-string/jumbo v0, "vendor.perf.gestureflingboost.enable"

    .line 279
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->SCROLL_BOOST_SS_ENABLE:Z

    .line 287
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 290
    sput-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 303
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 337
    sput-boolean v1, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 546
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "display"    # Landroid/view/Display;

    .line 621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsScreenCompatMode:Z

    .line 178
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsNotchLimited:Z

    .line 180
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceGetY:Z

    .line 181
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceGetX:Z

    .line 182
    iput v0, p0, Landroid/view/ViewRootImpl;->mTouchOffSet:I

    .line 183
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConfigResetWidth:Z

    .line 184
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConfigResetHeight:Z

    .line 185
    iput v0, p0, Landroid/view/ViewRootImpl;->mConfigOffset:I

    .line 186
    const/16 v1, 0x898

    iput v1, p0, Landroid/view/ViewRootImpl;->mNotchLimitSize:I

    .line 187
    const/16 v1, 0x8e8

    iput v1, p0, Landroid/view/ViewRootImpl;->mNotchLimitMaxSize:I

    .line 216
    iput v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonZone:I

    .line 217
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mScreenHeight:I

    .line 218
    iput v1, p0, Landroid/view/ViewRootImpl;->mScreenWidth:I

    .line 219
    iput v1, p0, Landroid/view/ViewRootImpl;->mOneThirdPart:I

    .line 220
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mBackupEventList:Ljava/util/ArrayList;

    .line 221
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mQueueMotionConsumed:Z

    .line 222
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mCheckForGestureButton:Z

    .line 223
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonActive:Z

    .line 224
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonEnabled:Z

    .line 225
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsHomePackage:Z

    .line 226
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsKeyguard:Z

    .line 227
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewRootImpl;->mRawX:F

    iput v3, p0, Landroid/view/ViewRootImpl;->mRawY:F

    .line 231
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsMediaPlayerPackage:Z

    .line 232
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mBlockEvent:Z

    .line 246
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsMultiTouchGame:Z

    .line 348
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 356
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 358
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 364
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 381
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 386
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    .line 390
    iput v1, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 404
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 408
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 411
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 413
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 493
    const-string/jumbo v3, "pq"

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    .line 499
    new-instance v3, Landroid/view/ViewRootImpl$UnhandledKeyManager;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/view/ViewRootImpl$UnhandledKeyManager;-><init>(Landroid/view/ViewRootImpl$1;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    .line 501
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 502
    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 506
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3}, Landroid/view/Surface;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 514
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    .line 515
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 516
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 517
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 518
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    .line 519
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 520
    new-instance v3, Landroid/view/DisplayCutout$ParcelableWrapper;

    sget-object v5, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    invoke-direct {v3, v5}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 523
    new-instance v3, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v3}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 526
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 527
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 528
    sget-object v3, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    .line 533
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    .line 535
    new-instance v3, Landroid/util/MergedConfiguration;

    invoke-direct {v3}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 537
    new-instance v3, Landroid/util/MergedConfiguration;

    invoke-direct {v3}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .line 555
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 556
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 564
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 565
    iput-wide v5, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 568
    iput v2, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 569
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 580
    new-instance v3, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 591
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 592
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    .line 593
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 605
    nop

    .line 606
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    new-instance v3, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v3, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 616
    const-string v3, "ViewRootImpl"

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 617
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    .line 618
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    .line 619
    iput-object v4, p0, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    .line 743
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1312
    new-instance v3, Landroid/view/ViewRootImpl$1;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1496
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    .line 3257
    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 4534
    new-instance v3, Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$ViewRootHandler;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    .line 7798
    new-instance v3, Landroid/view/ViewRootImpl$TraversalRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$TraversalRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    .line 7833
    new-instance v3, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    .line 7843
    new-instance v3, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    .line 7929
    new-instance v3, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-direct {v3, p0}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    .line 622
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 623
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    .line 624
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 625
    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    .line 626
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 627
    new-instance v3, Landroid/view/WindowLeaked;

    invoke-direct {v3, v4}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 628
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v3}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 629
    iput v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 630
    iput v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 631
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 632
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 633
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 634
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 635
    new-instance v1, Landroid/view/ViewRootImpl$W;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 636
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 637
    const/16 v1, 0x8

    iput v1, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 638
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 639
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 640
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 641
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 642
    new-instance v1, Landroid/view/View$AttachInfo;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    move-object v3, v1

    move-object v6, p2

    move-object v7, p0

    move-object v9, p0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/view/Display;Landroid/view/ViewRootImpl;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 644
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 645
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;Landroid/os/Handler;)V

    .line 647
    new-instance v1, Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$HighContrastTextManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    .line 648
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;Landroid/os/Handler;)V

    .line 650
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 651
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 652
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    .line 653
    new-instance v1, Lcom/android/internal/policy/PhoneFallbackEventHandler;

    invoke-direct {v1, p1}, Lcom/android/internal/policy/PhoneFallbackEventHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 654
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 655
    const-string v1, "display"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 657
    sget-boolean v1, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    if-nez v1, :cond_2

    .line 658
    iget v1, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v3, 0x1c

    if-ge v1, v3, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    sput-boolean v1, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    .line 660
    sput-boolean v2, Landroid/view/ViewRootImpl;->sCompatibilityDone:Z

    .line 663
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->loadSystemProperties()V

    .line 664
    new-instance v1, Landroid/util/BoostFramework;

    invoke-direct {v1, p1}, Landroid/util/BoostFramework;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    .line 668
    sget-object v1, Landroid/view/ViewRootImpl;->MULTI_TOUCH_GAME_LIST:Ljava/util/List;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsMultiTouchGame:Z

    .line 672
    sget-object v1, Landroid/view/ViewRootImpl;->OEM_VMEDUA_PLAYER_PACKAGE_LIST:Ljava/util/List;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsMediaPlayerPackage:Z

    .line 676
    sget-boolean v1, Landroid/view/ViewRootImpl;->IS_GESTURE_BUTTON_ENABLED:Z

    const/4 v3, 0x3

    if-eqz v1, :cond_5

    .line 677
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 678
    .local v1, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    const-string/jumbo v5, "net.oneplus.launcher"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsHomePackage:Z

    .line 679
    sget-boolean v4, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v4, :cond_3

    .line 680
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[GESTURE_BUTTON] mBasePackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_3
    const-string/jumbo v4, "op_navigation_bar_type"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v3, :cond_4

    move v0, v2

    nop

    :cond_4
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonEnabled:Z

    .line 686
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 687
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 688
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mScreenHeight:I

    .line 689
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mScreenWidth:I

    .line 690
    iget v2, p0, Landroid/view/ViewRootImpl;->mScreenWidth:I

    div-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewRootImpl;->mOneThirdPart:I

    .line 693
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsMediaPlayerPackage:Z

    if-eqz v0, :cond_6

    .line 694
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 695
    .restart local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 696
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mScreenHeight:I

    .line 697
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Landroid/view/ViewRootImpl;->mScreenWidth:I

    .line 698
    iget v1, p0, Landroid/view/ViewRootImpl;->mScreenWidth:I

    div-int/2addr v1, v3

    iput v1, p0, Landroid/view/ViewRootImpl;->mOneThirdPart:I

    .line 702
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_6
    :goto_2
    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/DragEvent;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->resetPointerIcon(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    return-void
.end method

.method static synthetic access$1400(Landroid/view/ViewRootImpl;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mBackupEventList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mQueueMotionConsumed:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mQueueMotionConsumed:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mCheckForGestureButton:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mCheckForGestureButton:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonActive:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mGestureButtonActive:Z

    return p1
.end method

.method static synthetic access$1800(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mGestureButtonEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;)Landroid/view/Choreographer$FrameCallback;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/view/ViewRootImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isAutofillUiShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Landroid/view/ViewRootImpl;)Landroid/view/autofill/AutofillManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Landroid/view/ViewRootImpl;)Landroid/view/ViewRootImpl$UnhandledKeyManager;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsHomePackage:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsKeyguard:Z

    return v0
.end method

.method static synthetic access$2800(Landroid/view/ViewRootImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget v0, p0, Landroid/view/ViewRootImpl;->mGestureButtonZone:I

    return v0
.end method

.method static synthetic access$2802(Landroid/view/ViewRootImpl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .line 141
    iput p1, p0, Landroid/view/ViewRootImpl;->mGestureButtonZone:I

    return p1
.end method

.method static synthetic access$2900(Landroid/view/ViewRootImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget v0, p0, Landroid/view/ViewRootImpl;->mScreenHeight:I

    return v0
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;)Landroid/util/MergedConfiguration;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/view/ViewRootImpl;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget v0, p0, Landroid/view/ViewRootImpl;->mRawX:F

    return v0
.end method

.method static synthetic access$3002(Landroid/view/ViewRootImpl;F)F
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # F

    .line 141
    iput p1, p0, Landroid/view/ViewRootImpl;->mRawX:F

    return p1
.end method

.method static synthetic access$3100(Landroid/view/ViewRootImpl;)F
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget v0, p0, Landroid/view/ViewRootImpl;->mRawY:F

    return v0
.end method

.method static synthetic access$3102(Landroid/view/ViewRootImpl;F)F
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # F

    .line 141
    iput p1, p0, Landroid/view/ViewRootImpl;->mRawY:F

    return p1
.end method

.method static synthetic access$3200()I
    .locals 1

    .line 141
    sget v0, Landroid/view/ViewRootImpl;->GESTURE_MOTION_QUEUE_DELAY:I

    return v0
.end method

.method static synthetic access$3300()I
    .locals 1

    .line 141
    sget v0, Landroid/view/ViewRootImpl;->GESTURE_KEY_DISTANCE_THRESHOLD:I

    return v0
.end method

.method static synthetic access$3400(Landroid/view/ViewRootImpl;)I
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget v0, p0, Landroid/view/ViewRootImpl;->mOneThirdPart:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    .line 141
    sget v0, Landroid/view/ViewRootImpl;->GESTURE_KEY_LONG_CLICK_MOVE:I

    return v0
.end method

.method static synthetic access$3600()I
    .locals 1

    .line 141
    sget v0, Landroid/view/ViewRootImpl;->GESTURE_KEY_HORIZONTAL_DISTANCE_THRESHOLD:I

    return v0
.end method

.method static synthetic access$3700(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsMediaPlayerPackage:Z

    return v0
.end method

.method static synthetic access$3800(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mBlockEvent:Z

    return v0
.end method

.method static synthetic access$3802(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mBlockEvent:Z

    return p1
.end method

.method static synthetic access$3900()Z
    .locals 1

    .line 141
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic access$400(Landroid/view/ViewRootImpl;Landroid/util/MergedConfiguration;ZI)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/util/MergedConfiguration;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    .line 141
    sget-boolean v0, Landroid/view/ViewRootImpl;->SCROLL_BOOST_SS_ENABLE:Z

    return v0
.end method

.method static synthetic access$4100(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeUpdateTooltip(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$4202(Landroid/view/ViewRootImpl;I)I
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # I

    .line 141
    iput p1, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    return p1
.end method

.method static synthetic access$4300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    return-object v0
.end method

.method static synthetic access$5302(Landroid/view/ViewRootImpl;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    return p1
.end method

.method static synthetic access$5400(Landroid/view/ViewRootImpl;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Z

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    return-void
.end method

.method static synthetic access$5700(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # Landroid/graphics/Rect;
    .param p4, "x4"    # Landroid/graphics/Rect;
    .param p5, "x5"    # Landroid/graphics/Rect;
    .param p6, "x6"    # Landroid/graphics/Rect;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/util/MergedConfiguration;
    .param p9, "x9"    # Landroid/graphics/Rect;
    .param p10, "x10"    # Z
    .param p11, "x11"    # Z
    .param p12, "x12"    # I
    .param p13, "x13"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 141
    invoke-direct/range {p0 .. p13}, Landroid/view/ViewRootImpl;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/view/ViewRootImpl;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/View;

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    return-void
.end method

.method static synthetic access$700(Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .line 141
    invoke-static {p0}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Landroid/view/ViewRootImpl;Landroid/graphics/Rect;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .line 141
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$900(Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewRootImpl;

    .line 141
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    return-void
.end method

.method public static addConfigCallback(Landroid/view/ViewRootImpl$ConfigChangedCallback;)V
    .locals 2
    .param p0, "callback"    # Landroid/view/ViewRootImpl$ConfigChangedCallback;

    .line 714
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 715
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    monitor-exit v0

    .line 717
    return-void

    .line 716
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .param p0, "callback"    # Ljava/lang/Runnable;

    .line 705
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 706
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v1, :cond_0

    .line 707
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    :cond_0
    monitor-exit v0

    .line 710
    return-void

    .line 709
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustInputEventForCompatibility(Landroid/view/InputEvent;)V
    .locals 5
    .param p1, "e"    # Landroid/view/InputEvent;

    .line 7725
    iget v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 7726
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    .line 7727
    .local v0, "motion":Landroid/view/MotionEvent;
    const/16 v1, 0x60

    .line 7729
    .local v1, "mask":I
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    .line 7730
    .local v2, "buttonState":I
    and-int/lit8 v3, v2, 0x60

    shr-int/lit8 v3, v3, 0x4

    .line 7731
    .local v3, "compatButtonState":I
    if-eqz v3, :cond_0

    .line 7732
    or-int v4, v2, v3

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setButtonState(I)V

    .line 7735
    .end local v0    # "motion":Landroid/view/MotionEvent;
    .end local v1    # "mask":I
    .end local v2    # "buttonState":I
    .end local v3    # "compatButtonState":I
    :cond_0
    return-void
.end method

.method private applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1648
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v0, :cond_0

    .line 1649
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 1651
    :cond_0
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, -0x81

    iget v1, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    and-int/lit16 v1, v1, 0x80

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1654
    :goto_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 6834
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6835
    return v1

    .line 6839
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 6840
    .local v0, "action":I
    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 6841
    return v1

    .line 6845
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    .line 6846
    return v1

    .line 6854
    :cond_2
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6855
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    return v1

    .line 6861
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6862
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 6863
    return v1

    .line 6866
    :cond_4
    return v1
.end method

.method private collectViewAttributes()Z
    .locals 6

    .line 1657
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1659
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1660
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1661
    .local v0, "oldScreenOn":Z
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1662
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v1, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1663
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1664
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2, v3, v1}, Landroid/view/View;->dispatchCollectViewAttributes(Landroid/view/View$AttachInfo;I)V

    .line 1665
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mDisabledSystemUiVisibility:I

    not-int v4, v4

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1666
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1667
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I

    move-result v5

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1668
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v3, v3, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iget-boolean v4, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eq v3, v4, :cond_1

    .line 1671
    :cond_0
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1672
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1673
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    iput-boolean v1, v2, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1674
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    invoke-virtual {v1, v3}, Landroid/view/View;->dispatchWindowSystemUiVisiblityChanged(I)V

    .line 1675
    const/4 v1, 0x1

    return v1

    .line 1678
    .end local v0    # "oldScreenOn":Z
    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    return v1
.end method

.method private deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7685
    const-string v0, "deliverInputEvent"

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7686
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 7685
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 7687
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v0, :cond_0

    .line 7688
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onInputEvent(Landroid/view/InputEvent;I)V

    .line 7692
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSendToSynthesizer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7693
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .local v0, "stage":Landroid/view/ViewRootImpl$InputStage;
    goto :goto_0

    .line 7695
    .end local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl$QueuedInputEvent;->shouldSkipIme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 7698
    .restart local v0    # "stage":Landroid/view/ViewRootImpl$InputStage;
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v1, v1, Landroid/view/KeyEvent;

    if-eqz v1, :cond_3

    .line 7699
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/KeyEvent;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->preDispatch(Landroid/view/KeyEvent;)V

    .line 7702
    :cond_3
    if-eqz v0, :cond_4

    .line 7703
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->handleWindowFocusChanged()V

    .line 7704
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InputStage;->deliver(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    goto :goto_1

    .line 7706
    :cond_4
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7708
    :goto_1
    return-void
.end method

.method private destroyHardwareRenderer()V
    .locals 4

    .line 7401
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 7403
    .local v0, "hardwareRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_1

    .line 7404
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 7405
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 7407
    :cond_0
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 7408
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setRequested(Z)V

    .line 7410
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 7411
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 7413
    :cond_1
    return-void
.end method

.method private dipToPx(I)I
    .locals 3
    .param p1, "dip"    # I

    .line 1847
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 1848
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V
    .locals 17
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p9, "backDropFrame"    # Landroid/graphics/Rect;
    .param p10, "forceLayout"    # Z
    .param p11, "alwaysConsumeNavBar"    # Z
    .param p12, "displayId"    # I
    .param p13, "displayCutout"    # Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    .line 7428
    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mDragResizing:Z

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_1

    .line 7429
    invoke-virtual {v2, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 7430
    .local v10, "fullscreen":Z
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v11

    .line 7431
    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v9

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 7432
    iget-object v12, v1, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowCallbacks;

    invoke-interface {v12, v8, v10, v5, v6}, Landroid/view/WindowCallbacks;->onWindowSizeIsChanging(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 7431
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 7435
    .end local v0    # "i":I
    :cond_0
    monitor-exit v11

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7438
    .end local v10    # "fullscreen":Z
    :cond_1
    :goto_1
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    if-eqz p7, :cond_2

    const/4 v11, 0x5

    goto :goto_2

    :cond_2
    const/4 v11, 0x4

    :goto_2
    invoke-virtual {v0, v11}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 7439
    .local v0, "msg":Landroid/os/Message;
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v11, :cond_3

    .line 7440
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7441
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7442
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7443
    iget-object v11, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v11, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7445
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v11

    .line 7446
    .local v11, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    if-ne v12, v13, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x0

    .line 7447
    .local v9, "sameProcessCall":Z
    :goto_3
    if-eqz v9, :cond_5

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_5
    move-object v12, v2

    :goto_4
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7448
    if-eqz v9, :cond_6

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_6
    move-object v12, v4

    :goto_5
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7449
    if-eqz v9, :cond_7

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_6

    :cond_7
    move-object v12, v5

    :goto_6
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 7450
    if-eqz v9, :cond_8

    if-eqz v7, :cond_8

    .line 7451
    new-instance v12, Landroid/util/MergedConfiguration;

    invoke-direct {v12, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/util/MergedConfiguration;)V

    goto :goto_7

    :cond_8
    move-object v12, v7

    :goto_7
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 7452
    if-eqz v9, :cond_9

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_9
    move-object v12, v3

    :goto_8
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 7453
    if-eqz v9, :cond_a

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_a
    move-object v12, v6

    :goto_9
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg6:Ljava/lang/Object;

    .line 7454
    if-eqz v9, :cond_b

    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v13, p6

    invoke-direct {v12, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_b
    move-object/from16 v13, p6

    move-object v12, v13

    :goto_a
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg7:Ljava/lang/Object;

    .line 7455
    if-eqz v9, :cond_c

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_b

    :cond_c
    move-object v12, v8

    :goto_b
    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg8:Ljava/lang/Object;

    .line 7456
    invoke-virtual/range {p13 .. p13}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v12

    iput-object v12, v11, Lcom/android/internal/os/SomeArgs;->arg9:Ljava/lang/Object;

    .line 7457
    move/from16 v12, p10

    iput v12, v11, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 7458
    move/from16 v14, p11

    iput v14, v11, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 7459
    move/from16 v15, p12

    iput v15, v11, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 7460
    iput-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7461
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7462
    return-void
.end method

.method private draw(Z)Z
    .locals 30
    .param p1, "fullRedrawNeeded"    # Z

    move-object/from16 v9, p0

    .line 3370
    iget-object v10, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3371
    .local v10, "surface":Landroid/view/Surface;
    invoke-virtual {v10}, Landroid/view/Surface;->isValid()Z

    move-result v0

    const/4 v11, 0x0

    if-nez v0, :cond_0

    .line 3372
    return v11

    .line 3381
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 3382
    .local v12, "nowTime":J
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 3383
    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3382
    move-wide v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/view/Choreographer;->setViewTitle(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 3386
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    const/4 v14, 0x1

    if-nez v0, :cond_2

    .line 3387
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3388
    :try_start_0
    sput-boolean v14, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 3389
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3390
    .local v0, "count":I
    move v2, v11

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3391
    iget-object v3, v9, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    sget-object v4, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 3390
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3393
    .end local v0    # "count":I
    .end local v2    # "i":I
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3396
    :cond_2
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v9, v0, v11}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 3398
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    if-eqz v1, :cond_4

    .line 3399
    sget-boolean v1, Landroid/view/ViewRootImpl;->SCROLL_BOOST_SS_ENABLE:Z

    if-nez v1, :cond_3

    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->mHaveMoveEvent:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v9, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    if-nez v1, :cond_3

    .line 3400
    iput-boolean v14, v9, Landroid/view/ViewRootImpl;->mIsPerfLockAcquired:Z

    .line 3401
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_3

    .line 3402
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 3403
    .local v1, "currentPackage":Ljava/lang/String;
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mPerf:Landroid/util/BoostFramework;

    const/16 v3, 0x1080

    const/4 v4, -0x1

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 3406
    .end local v1    # "currentPackage":Ljava/lang/String;
    :cond_3
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v11, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 3407
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 3410
    :cond_4
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v1, :cond_5

    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v14

    goto :goto_2

    :cond_5
    move v1, v11

    :goto_2
    move v15, v1

    .line 3412
    .local v15, "animating":Z
    if-eqz v15, :cond_6

    .line 3413
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .local v1, "curScrollY":I
    goto :goto_3

    .line 3415
    .end local v1    # "curScrollY":I
    :cond_6
    iget v1, v9, Landroid/view/ViewRootImpl;->mScrollY:I

    .restart local v1    # "curScrollY":I
    :goto_3
    move v8, v1

    .line 3417
    .end local v1    # "curScrollY":I
    .local v8, "curScrollY":I
    iget v1, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eq v1, v8, :cond_8

    .line 3418
    iput v8, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 3419
    const/4 v1, 0x1

    .line 3420
    .end local p1    # "fullRedrawNeeded":Z
    .local v1, "fullRedrawNeeded":Z
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v2, :cond_7

    .line 3421
    iget-object v2, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v3, v9, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v2, v3}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 3425
    :cond_7
    move/from16 v16, v1

    goto :goto_4

    .end local v1    # "fullRedrawNeeded":Z
    .restart local p1    # "fullRedrawNeeded":Z
    :cond_8
    move/from16 v16, p1

    .end local p1    # "fullRedrawNeeded":Z
    .local v16, "fullRedrawNeeded":Z
    :goto_4
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3426
    .local v7, "appScale":F
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v6, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 3428
    .local v6, "scalingRequired":Z
    iget-object v5, v9, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 3429
    .local v5, "dirty":Landroid/graphics/Rect;
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v1, :cond_a

    .line 3431
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3432
    if-eqz v15, :cond_9

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_9

    .line 3433
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3435
    :cond_9
    return v11

    .line 3438
    :cond_a
    if-eqz v16, :cond_b

    .line 3439
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v14, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3440
    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v7

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget v3, v9, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    add-float/2addr v3, v2

    float-to-int v2, v3

    invoke-virtual {v5, v11, v11, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 3452
    :cond_b
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->dispatchOnDraw()V

    .line 3454
    iget v1, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    neg-int v1, v1

    .line 3455
    .local v1, "xOffset":I
    iget v2, v9, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    neg-int v2, v2

    add-int/2addr v2, v8

    .line 3456
    .local v2, "yOffset":I
    iget-object v4, v9, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 3457
    .local v4, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz v4, :cond_c

    iget-object v3, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    goto :goto_5

    :cond_c
    move-object v3, v0

    .line 3458
    .local v3, "surfaceInsets":Landroid/graphics/Rect;
    :goto_5
    if-eqz v3, :cond_d

    .line 3459
    iget v14, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v14

    .line 3460
    iget v14, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v14

    .line 3463
    iget v14, v3, Landroid/graphics/Rect;->left:I

    iget v0, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v14, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 3466
    .end local v1    # "xOffset":I
    .local v2, "xOffset":I
    .local v14, "yOffset":I
    :cond_d
    move v14, v2

    move v2, v1

    const/4 v0, 0x0

    .line 3467
    .local v0, "accessibilityFocusDirty":Z
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3468
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_f

    .line 3469
    iget-object v11, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v11, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3470
    .local v11, "bounds":Landroid/graphics/Rect;
    invoke-direct {v9, v11}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v17

    .line 3471
    .local v17, "hasFocus":Z
    if-nez v17, :cond_e

    .line 3472
    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V

    .line 3474
    :cond_e
    move/from16 v24, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .end local v0    # "accessibilityFocusDirty":Z
    .local v24, "accessibilityFocusDirty":Z
    invoke-virtual {v11, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 3475
    const/4 v0, 0x1

    .line 3479
    .end local v11    # "bounds":Landroid/graphics/Rect;
    .end local v17    # "hasFocus":Z
    .end local v24    # "accessibilityFocusDirty":Z
    .restart local v0    # "accessibilityFocusDirty":Z
    move/from16 v24, v0

    goto :goto_6

    :cond_f
    move/from16 v24, v0

    .end local v0    # "accessibilityFocusDirty":Z
    .restart local v24    # "accessibilityFocusDirty":Z
    :cond_10
    :goto_6
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v11, v9, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    .line 3480
    invoke-virtual {v11}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v17

    const-wide/32 v19, 0xf4240

    move/from16 v26, v6

    move/from16 v25, v7

    div-long v6, v17, v19

    .end local v6    # "scalingRequired":Z
    .end local v7    # "appScale":F
    .local v25, "appScale":F
    .local v26, "scalingRequired":Z
    iput-wide v6, v0, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 3482
    const/4 v11, 0x0

    .line 3483
    .local v11, "useAsyncReport":Z
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v0, :cond_12

    if-eqz v24, :cond_11

    goto :goto_7

    .line 3559
    :cond_11
    move-object/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v25

    move/from16 v22, v26

    goto/16 :goto_b

    .line 3484
    :cond_12
    :goto_7
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1a

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3486
    if-nez v24, :cond_14

    iget-boolean v0, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    if-eqz v0, :cond_13

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    goto :goto_9

    :cond_14
    :goto_8
    const/4 v0, 0x1

    .line 3487
    .local v0, "invalidateRoot":Z
    :goto_9
    const/4 v6, 0x0

    iput-boolean v6, v9, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 3490
    iput-boolean v6, v9, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3492
    iget v6, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-ne v6, v14, :cond_15

    iget v6, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    if-eq v6, v2, :cond_16

    .line 3493
    :cond_15
    iput v14, v9, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 3494
    iput v2, v9, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    .line 3495
    const/4 v0, 0x1

    .line 3498
    :cond_16
    if-eqz v0, :cond_17

    .line 3499
    iget-object v6, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v6}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 3502
    :cond_17
    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 3506
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->updateContentDrawBounds()Z

    move-result v6

    .line 3508
    .local v6, "updated":Z
    iget-boolean v7, v9, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v7, :cond_18

    .line 3512
    iget-object v7, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move-object/from16 v27, v1

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    goto :goto_a

    .line 3515
    :cond_18
    move-object/from16 v27, v1

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v27, "drawable":Landroid/graphics/drawable/Drawable;
    :goto_a
    if-eqz v6, :cond_19

    .line 3516
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestDrawWindow()V

    .line 3519
    :cond_19
    const/4 v11, 0x1

    .line 3522
    iget-object v1, v9, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 3523
    .local v1, "callback":Landroid/view/ThreadedRenderer$FrameDrawingCallback;
    const/4 v7, 0x0

    iput-object v7, v9, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 3524
    iget-object v7, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    move/from16 v28, v0

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .end local v0    # "invalidateRoot":Z
    .local v28, "invalidateRoot":Z
    move/from16 v29, v2

    iget-object v2, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .end local v2    # "xOffset":I
    .local v29, "xOffset":I
    invoke-virtual {v7, v0, v2, v9, v1}, Landroid/view/ThreadedRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/ThreadedRenderer$DrawCallbacks;Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V

    .line 3525
    .end local v1    # "callback":Landroid/view/ThreadedRenderer$FrameDrawingCallback;
    .end local v6    # "updated":Z
    .end local v28    # "invalidateRoot":Z
    nop

    .line 3559
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v5

    move/from16 v23, v25

    move/from16 v22, v26

    move-object/from16 v17, v27

    move/from16 v18, v29

    .end local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v5    # "dirty":Landroid/graphics/Rect;
    .end local v8    # "curScrollY":I
    .end local v26    # "scalingRequired":Z
    .end local v27    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v29    # "xOffset":I
    .local v17, "drawable":Landroid/graphics/drawable/Drawable;
    .local v18, "xOffset":I
    .local v19, "surfaceInsets":Landroid/graphics/Rect;
    .local v20, "params":Landroid/view/WindowManager$LayoutParams;
    .local v21, "dirty":Landroid/graphics/Rect;
    .local v22, "scalingRequired":Z
    .local v23, "appScale":F
    .local v25, "curScrollY":I
    :goto_b
    move/from16 v25, v8

    goto/16 :goto_c

    .line 3534
    .end local v17    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v18    # "xOffset":I
    .end local v19    # "surfaceInsets":Landroid/graphics/Rect;
    .end local v20    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v21    # "dirty":Landroid/graphics/Rect;
    .end local v22    # "scalingRequired":Z
    .end local v23    # "appScale":F
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "xOffset":I
    .restart local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v8    # "curScrollY":I
    .local v25, "appScale":F
    .restart local v26    # "scalingRequired":Z
    :cond_1a
    move-object/from16 v27, v1

    move/from16 v29, v2

    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "xOffset":I
    .restart local v27    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v29    # "xOffset":I
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_1b

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 3535
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 3536
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 3537
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3540
    :try_start_1
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v1, v9, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, v9, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v6, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v9, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move-object/from16 v22, v3

    invoke-virtual/range {v17 .. v22}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3545
    nop

    .line 3547
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3548
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3549
    const/4 v1, 0x0

    return v1

    .line 3542
    :catch_0
    move-exception v0

    .line 3543
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    invoke-direct {v9, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V

    .line 3544
    const/4 v1, 0x0

    return v1

    .line 3552
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_1b
    iget-object v0, v9, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v17, v27

    move-object v1, v9

    .end local v27    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v17    # "drawable":Landroid/graphics/drawable/Drawable;
    move/from16 v18, v29

    move-object v2, v10

    .end local v29    # "xOffset":I
    .restart local v18    # "xOffset":I
    move-object/from16 v19, v3

    move-object v3, v0

    .end local v3    # "surfaceInsets":Landroid/graphics/Rect;
    .restart local v19    # "surfaceInsets":Landroid/graphics/Rect;
    move-object/from16 v20, v4

    move/from16 v4, v18

    .end local v4    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v20    # "params":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v21, v5

    move v5, v14

    .end local v5    # "dirty":Landroid/graphics/Rect;
    .restart local v21    # "dirty":Landroid/graphics/Rect;
    move/from16 v22, v26

    move/from16 v6, v22

    .end local v26    # "scalingRequired":Z
    .restart local v22    # "scalingRequired":Z
    move/from16 v23, v25

    move-object/from16 v7, v21

    .end local v25    # "appScale":F
    .restart local v23    # "appScale":F
    move/from16 v25, v8

    move-object/from16 v8, v19

    .end local v8    # "curScrollY":I
    .local v25, "curScrollY":I
    invoke-direct/range {v1 .. v8}, Landroid/view/ViewRootImpl;->drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 3554
    const/4 v1, 0x0

    return v1

    .line 3559
    :cond_1c
    :goto_c
    if-eqz v15, :cond_1d

    .line 3560
    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3561
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3563
    :cond_1d
    return v11
.end method

.method private drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 3690
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTmpInvalRect:Landroid/graphics/Rect;

    .line 3691
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3692
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3693
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 3694
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 3695
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3697
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 3698
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3700
    :cond_2
    :goto_0
    return-void
.end method

.method private drawSoftware(Landroid/view/Surface;Landroid/view/View$AttachInfo;IIZLandroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 17
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "scalingRequired"    # Z
    .param p6, "dirty"    # Landroid/graphics/Rect;
    .param p7, "surfaceInsets"    # Landroid/graphics/Rect;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p6

    .line 3577
    move-object/from16 v7, p7

    move v0, v4

    .line 3578
    .local v0, "dirtyXOffset":I
    move v8, v5

    .line 3579
    .local v8, "dirtyYOffset":I
    if-eqz v7, :cond_0

    .line 3580
    iget v9, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v9

    .line 3581
    iget v9, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    .line 3585
    .end local v0    # "dirtyXOffset":I
    .local v8, "dirtyXOffset":I
    .local v9, "dirtyYOffset":I
    :cond_0
    move v9, v8

    move v8, v0

    neg-int v0, v8

    neg-int v10, v9

    const/4 v11, 0x1

    :try_start_0
    invoke-virtual {v6, v0, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 3586
    iget v0, v6, Landroid/graphics/Rect;->left:I

    .line 3587
    .local v0, "left":I
    iget v10, v6, Landroid/graphics/Rect;->top:I

    .line 3588
    .local v10, "top":I
    iget v13, v6, Landroid/graphics/Rect;->right:I

    .line 3589
    .local v13, "right":I
    iget v14, v6, Landroid/graphics/Rect;->bottom:I

    .line 3591
    .local v14, "bottom":I
    iget-object v15, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v15, v6}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v15

    .line 3595
    .local v15, "canvas":Landroid/graphics/Canvas;
    iget v12, v6, Landroid/graphics/Rect;->left:I

    if-ne v0, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->top:I

    if-ne v10, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->right:I

    if-ne v13, v12, :cond_1

    iget v12, v6, Landroid/graphics/Rect;->bottom:I

    if-eq v14, v12, :cond_2

    .line 3597
    :cond_1
    iput-boolean v11, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 3601
    :cond_2
    iget v12, v1, Landroid/view/ViewRootImpl;->mDensity:I

    invoke-virtual {v15, v12}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3613
    .end local v0    # "left":I
    .end local v10    # "top":I
    .end local v13    # "right":I
    .end local v14    # "bottom":I
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3614
    nop

    .line 3613
    move-object v10, v15

    .line 3631
    .end local v15    # "canvas":Landroid/graphics/Canvas;
    .local v10, "canvas":Landroid/graphics/Canvas;
    :try_start_1
    invoke-virtual {v10}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v5, :cond_4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 3635
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 3632
    :cond_4
    :goto_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    const/4 v12, 0x0

    invoke-virtual {v10, v12, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 3635
    :goto_1
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->setEmpty()V

    .line 3636
    iput-boolean v12, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 3637
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x20

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3646
    neg-int v0, v4

    int-to-float v0, v0

    neg-int v12, v5

    int-to-float v12, v12

    :try_start_2
    invoke-virtual {v10, v0, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3647
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 3648
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, v10}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 3650
    :cond_5
    if-eqz p5, :cond_6

    iget v0, v1, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v10, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 3651
    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 3653
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3655
    invoke-direct {v1, v10}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3657
    :try_start_3
    iget-boolean v0, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v0, :cond_7

    .line 3659
    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3664
    :cond_7
    :try_start_4
    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    .line 3670
    nop

    .line 3676
    return v11

    .line 3665
    :catch_0
    move-exception v0

    .end local v8    # "dirtyXOffset":I
    .end local v9    # "dirtyYOffset":I
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    .end local p0    # "this":Landroid/view/ViewRootImpl;
    .end local p1    # "surface":Landroid/view/Surface;
    .end local p2    # "attachInfo":Landroid/view/View$AttachInfo;
    .end local p3    # "xoff":I
    .end local p4    # "yoff":I
    .end local p5    # "scalingRequired":Z
    .end local p6    # "dirty":Landroid/graphics/Rect;
    .end local p7    # "surfaceInsets":Landroid/graphics/Rect;
    move-object v13, v0

    .line 3666
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v13, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v14, "Could not unlock surface"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3667
    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 3669
    const/4 v11, 0x0

    return v11

    .line 3657
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "dirtyXOffset":I
    .restart local v9    # "dirtyYOffset":I
    .restart local v10    # "canvas":Landroid/graphics/Canvas;
    .restart local p0    # "this":Landroid/view/ViewRootImpl;
    .restart local p1    # "surface":Landroid/view/Surface;
    .restart local p2    # "attachInfo":Landroid/view/View$AttachInfo;
    .restart local p3    # "xoff":I
    .restart local p4    # "yoff":I
    .restart local p5    # "scalingRequired":Z
    .restart local p6    # "dirty":Landroid/graphics/Rect;
    .restart local p7    # "surfaceInsets":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    :try_start_5
    iget-boolean v13, v3, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    if-nez v13, :cond_8

    .line 3659
    const/4 v13, 0x0

    iput-boolean v13, v3, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3663
    :catchall_1
    move-exception v0

    .line 3664
    :try_start_6
    invoke-virtual {v2, v10}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0

    .line 3670
    nop

    .line 3669
    throw v0

    .line 3613
    .end local v10    # "canvas":Landroid/graphics/Canvas;
    :catchall_2
    move-exception v0

    goto :goto_3

    .line 3605
    :catch_1
    move-exception v0

    .line 3606
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    :try_start_7
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v13, "Could not lock surface"

    invoke-static {v10, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3610
    iput-boolean v11, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 3611
    nop

    .line 3613
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3611
    const/4 v10, 0x0

    return v10

    .line 3602
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 3603
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_8
    invoke-direct {v1, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3604
    nop

    .line 3613
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 3604
    const/4 v10, 0x0

    return v10

    .line 3613
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_3
    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    throw v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "view"    # Landroid/view/View;

    .line 7262
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7263
    if-nez p3, :cond_0

    .line 7264
    const-string/jumbo v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7265
    return-void

    .line 7267
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7268
    instance-of v0, p3, Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 7269
    return-void

    .line 7271
    :cond_1
    move-object v0, p3

    check-cast v0, Landroid/view/ViewGroup;

    .line 7272
    .local v0, "grp":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 7273
    .local v1, "N":I
    if-gtz v1, :cond_2

    .line 7274
    return-void

    .line 7276
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7277
    const/4 v2, 0x0

    .line 7277
    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 7278
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 7277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7280
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 1139
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1140
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 1143
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    return-void

    .line 1147
    :cond_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_DISABLEHW:Z

    if-eqz v0, :cond_1

    .line 1148
    const-string v0, "ViewRootImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disable hardware acceleration by DEBUG!!!, this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    return-void

    .line 1155
    :cond_1
    const-string v0, "Toast"

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PopupWindow"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "android"

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1156
    return-void

    .line 1161
    :cond_3
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1164
    .local v0, "hardwareAccelerated":Z
    :goto_0
    if-eqz v0, :cond_10

    .line 1165
    invoke-static {}, Landroid/view/ThreadedRenderer;->isAvailable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1166
    return-void

    .line 1178
    :cond_5
    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/2addr v3, v2

    if-eqz v3, :cond_6

    move v3, v2

    goto :goto_1

    :cond_6
    move v3, v1

    .line 1180
    .local v3, "fakeHwAccelerated":Z
    :goto_1
    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_7

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v1

    .line 1183
    .local v4, "forceHwAccelerated":Z
    :goto_2
    if-eqz v3, :cond_8

    .line 1187
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto/16 :goto_7

    .line 1188
    :cond_8
    sget-boolean v5, Landroid/view/ThreadedRenderer;->sRendererDisabled:Z

    if-eqz v5, :cond_9

    sget-boolean v5, Landroid/view/ThreadedRenderer;->sSystemRendererDisabled:Z

    if-eqz v5, :cond_10

    if-eqz v4, :cond_10

    .line 1190
    :cond_9
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v5, :cond_a

    .line 1191
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v5}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1194
    :cond_a
    iget-object v5, p1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    .line 1195
    .local v5, "insets":Landroid/graphics/Rect;
    iget v6, v5, Landroid/graphics/Rect;->left:I

    if-nez v6, :cond_c

    iget v6, v5, Landroid/graphics/Rect;->right:I

    if-nez v6, :cond_c

    iget v6, v5, Landroid/graphics/Rect;->top:I

    if-nez v6, :cond_c

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    if-eqz v6, :cond_b

    goto :goto_3

    :cond_b
    move v6, v1

    goto :goto_4

    :cond_c
    :goto_3
    move v6, v2

    .line 1197
    .local v6, "hasSurfaceInsets":Z
    :goto_4
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_e

    if-eqz v6, :cond_d

    goto :goto_5

    :cond_d
    move v7, v1

    goto :goto_6

    :cond_e
    :goto_5
    move v7, v2

    .line 1198
    .local v7, "translucent":Z
    :goto_6
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1199
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1200
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getColorMode()I

    move-result v8

    if-ne v8, v2, :cond_f

    move v1, v2

    nop

    .line 1202
    .local v1, "wideGamut":Z
    :cond_f
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1203
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1202
    invoke-static {v9, v7, v10}, Landroid/view/ThreadedRenderer;->create(Landroid/content/Context;ZLjava/lang/String;)Landroid/view/ThreadedRenderer;

    move-result-object v9

    iput-object v9, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1204
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v8, v1}, Landroid/view/ThreadedRenderer;->setWideGamut(Z)V

    .line 1205
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v8, :cond_10

    .line 1206
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v9, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v2, v8, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 1211
    .end local v1    # "wideGamut":Z
    .end local v3    # "fakeHwAccelerated":Z
    .end local v4    # "forceHwAccelerated":Z
    .end local v5    # "insets":Landroid/graphics/Rect;
    .end local v6    # "hasSurfaceInsets":Z
    .end local v7    # "translucent":Z
    :cond_10
    :goto_7
    return-void
.end method

.method private endDragResizing()V
    .locals 3

    .line 8797
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v0, :cond_1

    .line 8798
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 8799
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 8800
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 8801
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowCallbacks;

    invoke-interface {v2}, Landroid/view/WindowCallbacks;->onWindowDragResizeEnd()V

    .line 8800
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8804
    .end local v0    # "i":I
    :cond_0
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 8806
    :cond_1
    return-void
.end method

.method private ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "kind"    # Ljava/lang/String;

    .line 1818
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-ltz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 1825
    :cond_0
    return-object p1

    .line 1819
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Negative "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Insets: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mFirst="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1821
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 1822
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 1823
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-direct {v0, v1, v3, v4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1820
    return-object v0
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .param p1, "inTouchMode"    # Z

    .line 4571
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4573
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 4574
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 4576
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    :goto_0
    return v0
.end method

.method private enterTouchMode()Z
    .locals 5

    .line 4580
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4584
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4585
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4586
    invoke-static {v0}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v2

    .line 4587
    .local v2, "ancestorToTakeFocus":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 4591
    invoke-virtual {v2}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v1

    return v1

    .line 4595
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4, v1}, Landroid/view/View;->clearFocusInternal(Landroid/view/View;ZZ)V

    .line 4596
    return v4

    .line 4600
    .end local v0    # "focused":Landroid/view/View;
    .end local v2    # "ancestorToTakeFocus":Landroid/view/ViewGroup;
    :cond_1
    return v1
.end method

.method private static findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .param p0, "focused"    # Landroid/view/View;

    .line 4610
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4611
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_0
    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4612
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 4613
    .local v1, "vgParent":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x40000

    if-ne v3, v4, :cond_0

    .line 4614
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4615
    return-object v1

    .line 4617
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4618
    return-object v2

    .line 4620
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4622
    .end local v1    # "vgParent":Landroid/view/ViewGroup;
    goto :goto_0

    .line 4623
    :cond_2
    return-object v2
.end method

.method private findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 10
    .param p1, "provider"    # Landroid/view/accessibility/AccessibilityNodeProvider;

    .line 2853
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeProvider;->findFocus(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 2855
    .local v0, "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v0, :cond_0

    .line 2856
    return-object v0

    .line 2859
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isAutofillCompatibilityEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 2860
    return-object v2

    .line 2865
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    .line 2867
    .local v1, "current":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2868
    return-object v1

    .line 2871
    :cond_2
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 2872
    .local v3, "fringe":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    invoke-interface {v3, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2874
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 2875
    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 2876
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getChildNodeIds()Landroid/util/LongArray;

    move-result-object v4

    .line 2877
    .local v4, "childNodeIds":Landroid/util/LongArray;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    if-gtz v5, :cond_4

    .line 2878
    goto :goto_0

    .line 2880
    :cond_4
    invoke-virtual {v4}, Landroid/util/LongArray;->size()I

    move-result v5

    .line 2881
    .local v5, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v5, :cond_7

    .line 2882
    nop

    .line 2883
    invoke-virtual {v4, v6}, Landroid/util/LongArray;->get(I)J

    move-result-wide v7

    .line 2882
    invoke-static {v7, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v7

    .line 2884
    .local v7, "virtualId":I
    invoke-virtual {p1, v7}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v8

    .line 2885
    .local v8, "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v8, :cond_6

    .line 2886
    invoke-virtual {v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2887
    return-object v8

    .line 2889
    :cond_5
    invoke-interface {v3, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 2881
    .end local v7    # "virtualId":I
    .end local v8    # "child":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2892
    .end local v6    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2893
    .end local v4    # "childNodeIds":Landroid/util/LongArray;
    .end local v5    # "childCount":I
    goto :goto_0

    .line 2895
    :cond_8
    return-object v2
.end method

.method private finishInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 4
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7711
    const-string v0, "deliverInputEvent"

    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7712
    invoke-virtual {v1}, Landroid/view/InputEvent;->getSequenceNumber()I

    move-result v1

    .line 7711
    const-wide/16 v2, 0x8

    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 7714
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    if-eqz v0, :cond_1

    .line 7715
    iget v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 7716
    .local v0, "handled":Z
    :goto_0
    iget-object v1, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    iget-object v2, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v1, v2, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 7717
    .end local v0    # "handled":Z
    goto :goto_1

    .line 7718
    :cond_1
    iget-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v0}, Landroid/view/InputEvent;->recycleIfNeededAfterDispatch()V

    .line 7721
    :goto_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7722
    return-void
.end method

.method private fireAccessibilityFocusEventIfHasFocusedNode()V
    .locals 7

    .line 2819
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2820
    return-void

    .line 2822
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2823
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    .line 2824
    return-void

    .line 2826
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 2827
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/16 v2, 0x8

    if-nez v1, :cond_2

    .line 2828
    invoke-virtual {v0, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    .line 2830
    :cond_2
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findFocusedVirtualNode(Landroid/view/accessibility/AccessibilityNodeProvider;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2831
    .local v3, "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    if-eqz v3, :cond_3

    .line 2832
    nop

    .line 2833
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v4

    .line 2832
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v4

    .line 2837
    .local v4, "virtualId":I
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 2839
    .local v2, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v2, v0, v4}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2840
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getPackageName()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2841
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isChecked()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 2842
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2843
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isPassword()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    .line 2844
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2845
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->isEnabled()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2846
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v0, v2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2847
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 2850
    .end local v2    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v3    # "focusedNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v4    # "virtualId":I
    :cond_3
    :goto_0
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 4177
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 4178
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 4179
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4180
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 4181
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 4182
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 4181
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4185
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private getAccessibilityFocusedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 3736
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3737
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3738
    .local v0, "value":Landroid/util/TypedValue;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, v1, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1110004

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    .line 3740
    .local v1, "resolved":Z
    if-eqz v1, :cond_0

    .line 3741
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v3, v3, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3742
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 3745
    .end local v0    # "value":Landroid/util/TypedValue;
    .end local v1    # "resolved":Z
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mAccessibilityFocusDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getAccessibilityFocusedRect(Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 3703
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 3704
    .local v0, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 3708
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3709
    .local v1, "host":Landroid/view/View;
    if-eqz v1, :cond_5

    iget-object v3, v1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v3, :cond_1

    goto :goto_1

    .line 3713
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    .line 3714
    .local v3, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 3715
    invoke-virtual {v1, p1, v4}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    goto :goto_0

    .line 3716
    :cond_2
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v5, :cond_4

    .line 3717
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v5, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 3723
    :goto_0
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3724
    .local v5, "attachInfo":Landroid/view/View$AttachInfo;
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mScrollY:I

    invoke-virtual {p1, v2, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 3725
    iget v6, v5, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v6, v6

    iget v7, v5, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v7, v7

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Rect;->offset(II)V

    .line 3726
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mWidth:I

    iget-object v7, v5, Landroid/view/View$AttachInfo;->mViewRootImpl:Landroid/view/ViewRootImpl;

    iget v7, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1, v2, v2, v6, v7}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3729
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3731
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v4

    return v2

    .line 3719
    .end local v5    # "attachInfo":Landroid/view/View$AttachInfo;
    :cond_4
    return v2

    .line 3710
    .end local v3    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_5
    :goto_1
    return v2

    .line 3705
    .end local v1    # "host":Landroid/view/View;
    :cond_6
    :goto_2
    return v2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .line 7059
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7062
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 7063
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 7065
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0

    .line 7060
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAutofillManager()Landroid/view/autofill/AutofillManager;
    .locals 3

    .line 7069
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 7070
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 7071
    .local v0, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 7075
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/view/autofill/AutofillManager;

    .line 7076
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 7075
    return-object v1

    .line 7079
    .end local v0    # "decorView":Landroid/view/ViewGroup;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getCommonPredecessor(Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 8366
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    if-nez v0, :cond_0

    .line 8367
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 8369
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempHashSet:Ljava/util/HashSet;

    .line 8370
    .local v0, "seen":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8371
    move-object v1, p1

    .line 8372
    .local v1, "firstCurrent":Landroid/view/View;
    :goto_0
    if-eqz v1, :cond_2

    .line 8373
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8374
    iget-object v2, v1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8375
    .local v2, "firstCurrentParent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 8376
    move-object v1, v2

    check-cast v1, Landroid/view/View;

    goto :goto_1

    .line 8378
    :cond_1
    const/4 v1, 0x0

    .line 8380
    .end local v2    # "firstCurrentParent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 8381
    :cond_2
    move-object v2, p2

    .line 8382
    .local v2, "secondCurrent":Landroid/view/View;
    :goto_2
    if-eqz v2, :cond_5

    .line 8383
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8384
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8385
    return-object v2

    .line 8387
    :cond_3
    iget-object v3, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 8388
    .local v3, "secondCurrentParent":Landroid/view/ViewParent;
    instance-of v4, v3, Landroid/view/View;

    if-eqz v4, :cond_4

    .line 8389
    move-object v2, v3

    check-cast v2, Landroid/view/View;

    goto :goto_3

    .line 8391
    :cond_4
    const/4 v2, 0x0

    .line 8393
    .end local v3    # "secondCurrentParent":Landroid/view/ViewParent;
    :goto_3
    goto :goto_2

    .line 8394
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 8395
    const/4 v3, 0x0

    return-object v3
.end method

.method private static getGfxInfo(Landroid/view/View;[I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # [I

    .line 7290
    iget-object v0, p0, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    .line 7291
    .local v0, "renderNode":Landroid/view/RenderNode;
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 7292
    if-eqz v0, :cond_0

    .line 7293
    aget v2, p1, v3

    invoke-virtual {v0}, Landroid/view/RenderNode;->getDebugSize()I

    move-result v4

    add-int/2addr v2, v4

    aput v2, p1, v3

    .line 7296
    :cond_0
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 7297
    move-object v2, p0

    check-cast v2, Landroid/view/ViewGroup;

    .line 7299
    .local v2, "group":Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 7300
    .local v3, "count":I
    nop

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 7301
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 7300
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7304
    .end local v1    # "i":I
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "count":I
    :cond_1
    return-void
.end method

.method private getImpliedSystemUiVisibility(Landroid/view/WindowManager$LayoutParams;)I
    .locals 3
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .line 1682
    const/4 v0, 0x0

    .line 1684
    .local v0, "vis":I
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x4000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 1685
    or-int/lit16 v0, v0, 0x500

    .line 1687
    :cond_0
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x8000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    .line 1688
    or-int/lit16 v0, v0, 0x300

    .line 1690
    :cond_1
    return v0
.end method

.method private static getRootMeasureSpec(II)I
    .locals 1
    .param p0, "windowSize"    # I
    .param p1, "rootDimension"    # I

    .line 3142
    const/high16 v0, 0x40000000    # 2.0f

    packed-switch p1, :pswitch_data_0

    .line 3154
    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 3146
    :pswitch_0
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3147
    .local v0, "measureSpec":I
    goto :goto_0

    .line 3150
    .end local v0    # "measureSpec":I
    :pswitch_1
    const/high16 v0, -0x80000000

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 3151
    .restart local v0    # "measureSpec":I
    nop

    .line 3154
    :goto_0
    nop

    .line 3157
    return v0

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/HandlerActionQueue;
    .locals 2

    .line 8767
    sget-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HandlerActionQueue;

    .line 8768
    .local v0, "rq":Landroid/view/HandlerActionQueue;
    if-eqz v0, :cond_0

    .line 8769
    return-object v0

    .line 8771
    :cond_0
    new-instance v1, Landroid/view/HandlerActionQueue;

    invoke-direct {v1}, Landroid/view/HandlerActionQueue;-><init>()V

    move-object v0, v1

    .line 8772
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 8773
    return-object v0
.end method

.method private getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 9
    .param p2, "secondLayoutRequests"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;Z)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 3065
    .local p1, "layoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3066
    .local v0, "numViewsRequestingLayout":I
    const/4 v1, 0x0

    .line 3067
    .local v1, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    move-object v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    :goto_0
    const/16 v4, 0x1000

    if-ge v1, v0, :cond_6

    .line 3068
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3069
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_5

    iget-object v6, v5, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_5

    iget-object v6, v5, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_5

    if-nez p2, :cond_0

    iget v6, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v6, v4

    if-ne v6, v4, :cond_5

    .line 3072
    :cond_0
    const/4 v4, 0x0

    .line 3073
    .local v4, "gone":Z
    move-object v6, v5

    .line 3075
    .local v6, "parent":Landroid/view/View;
    :goto_1
    if-eqz v6, :cond_3

    .line 3076
    iget v7, v6, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 3077
    const/4 v4, 0x1

    .line 3078
    goto :goto_2

    .line 3080
    :cond_1
    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v7, v7, Landroid/view/View;

    if-eqz v7, :cond_2

    .line 3081
    iget-object v7, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v6, v7

    check-cast v6, Landroid/view/View;

    goto :goto_1

    .line 3083
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 3086
    :cond_3
    :goto_2
    if-nez v4, :cond_5

    .line 3087
    if-nez v3, :cond_4

    .line 3088
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v7

    .line 3090
    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3067
    .end local v4    # "gone":Z
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "parent":Landroid/view/View;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3094
    .end local v1    # "i":I
    :cond_6
    if-nez p2, :cond_9

    .line 3096
    nop

    .local v2, "i":I
    :goto_3
    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    if-ge v1, v0, :cond_9

    .line 3097
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3098
    .local v2, "view":Landroid/view/View;
    :goto_4
    if-eqz v2, :cond_8

    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_8

    .line 3100
    iget v5, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v5, v5, -0x1001

    iput v5, v2, Landroid/view/View;->mPrivateFlags:I

    .line 3101
    iget-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_7

    .line 3102
    iget-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object v2, v5

    check-cast v2, Landroid/view/View;

    goto :goto_4

    .line 3104
    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 3096
    .end local v2    # "view":Landroid/view/View;
    :cond_8
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    goto :goto_3

    .line 3109
    .end local v2    # "i":I
    :cond_9
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 3110
    return-object v3
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 6878
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_e

    .line 6879
    iget v0, p1, Landroid/view/DragEvent;->mAction:I

    .line 6883
    .local v0, "what":I
    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 6884
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6885
    iget-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    goto :goto_0

    .line 6887
    :cond_0
    if-ne v0, v2, :cond_1

    .line 6888
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 6890
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v1, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    .line 6893
    :goto_0
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 6897
    sget-boolean v1, Landroid/view/View;->sCascadedDragDrop:Z

    if-eqz v1, :cond_2

    .line 6898
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchDragEnterExitInPreN(Landroid/view/DragEvent;)Z

    .line 6900
    :cond_2
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    goto/16 :goto_5

    .line 6903
    :cond_3
    const/4 v1, 0x2

    const/4 v4, 0x3

    if-eq v0, v1, :cond_4

    if-ne v0, v4, :cond_7

    .line 6904
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v6, p1, Landroid/view/DragEvent;->mX:F

    iget v7, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 6905
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v5, :cond_5

    .line 6906
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 6909
    :cond_5
    iget v5, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v5, :cond_6

    .line 6910
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v6, 0x0

    iget v7, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->offset(FF)V

    .line 6913
    :cond_6
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iput v5, p1, Landroid/view/DragEvent;->mX:F

    .line 6914
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iput v5, p1, Landroid/view/DragEvent;->mY:F

    .line 6918
    :cond_7
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6920
    .local v5, "prevDragView":Landroid/view/View;
    if-ne v0, v4, :cond_8

    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    if-eqz v6, :cond_8

    .line 6921
    iget-object v6, p1, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->prepareToEnterProcess()V

    .line 6925
    :cond_8
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v6

    .line 6927
    .local v6, "result":Z
    if-ne v0, v1, :cond_9

    iget-boolean v1, p1, Landroid/view/DragEvent;->mEventHandlerWasCalled:Z

    if-nez v1, :cond_9

    .line 6930
    invoke-virtual {p0, v3, p1}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V

    .line 6934
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v5, v1, :cond_c

    .line 6936
    if-eqz v5, :cond_a

    .line 6937
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v7}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    goto :goto_1

    .line 6942
    :catch_0
    move-exception v1

    goto :goto_2

    .line 6939
    :cond_a
    :goto_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v1, :cond_b

    .line 6940
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v7}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6944
    :cond_b
    goto :goto_3

    .line 6942
    :goto_2
    nop

    .line 6943
    .local v1, "e":Landroid/os/RemoteException;
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v8, "Unable to note drag target change"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6948
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_c
    :goto_3
    if-ne v0, v4, :cond_d

    .line 6950
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reporting drop result: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6951
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v4, v6}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 6954
    goto :goto_4

    .line 6952
    :catch_1
    move-exception v1

    .line 6953
    .restart local v1    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v7, "Unable to report drop result"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6958
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_d
    :goto_4
    if-ne v0, v2, :cond_e

    .line 6959
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 6960
    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    .line 6961
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mDragToken:Landroid/os/IBinder;

    .line 6962
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    if-eqz v1, :cond_e

    .line 6963
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 6964
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v3, v1, Landroid/view/View$AttachInfo;->mDragSurface:Landroid/view/Surface;

    .line 6969
    .end local v0    # "what":I
    .end local v5    # "prevDragView":Landroid/view/View;
    .end local v6    # "result":Z
    :cond_e
    :goto_5
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 6970
    return-void
.end method

.method private handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    .locals 2
    .param p1, "e"    # Landroid/view/Surface$OutOfResourcesException;

    .line 2899
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "OutOfResourcesException initializing HW surface"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2901
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2902
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 2903
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v1, "No processes killed for memory; killing self"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2904
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2907
    :cond_0
    goto :goto_0

    .line 2906
    :catch_0
    move-exception v0

    .line 2908
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2909
    return-void
.end method

.method private handlePointerCaptureChanged(Z)V
    .locals 1
    .param p1, "hasCapture"    # Z

    .line 3952
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    .line 3953
    return-void

    .line 3955
    :cond_0
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    .line 3956
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3957
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPointerCaptureChanged(Z)V

    .line 3959
    :cond_1
    return-void
.end method

.method private handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 16
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    move-object/from16 v0, p0

    .line 8241
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8242
    .local v1, "focusedHost":Landroid/view/View;
    if-eqz v1, :cond_9

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 8247
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v2

    .line 8248
    .local v2, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 8250
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8251
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8252
    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 8253
    return-void

    .line 8258
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v5

    .line 8259
    .local v5, "changes":I
    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 8261
    return-void

    .line 8264
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v6

    .line 8265
    .local v6, "eventSourceNodeId":J
    invoke-static {v6, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v8

    .line 8268
    .local v8, "changedViewId":I
    const/4 v9, 0x0

    .line 8269
    .local v9, "hostInSubtree":Z
    iget-object v10, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8270
    .local v10, "root":Landroid/view/View;
    :goto_0
    if-eqz v10, :cond_5

    if-nez v9, :cond_5

    .line 8271
    invoke-virtual {v10}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v11

    if-ne v8, v11, :cond_3

    .line 8272
    const/4 v9, 0x1

    goto :goto_0

    .line 8274
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 8275
    .local v11, "parent":Landroid/view/ViewParent;
    instance-of v12, v11, Landroid/view/View;

    if-eqz v12, :cond_4

    .line 8276
    move-object v10, v11

    check-cast v10, Landroid/view/View;

    goto :goto_1

    .line 8278
    :cond_4
    const/4 v10, 0x0

    .line 8280
    .end local v11    # "parent":Landroid/view/ViewParent;
    :goto_1
    goto :goto_0

    .line 8284
    :cond_5
    if-nez v9, :cond_6

    .line 8285
    return-void

    .line 8288
    :cond_6
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v11}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v11

    .line 8289
    .local v11, "focusedSourceNodeId":J
    invoke-static {v11, v12}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v13

    .line 8292
    .local v13, "focusedChildId":I
    iget-object v14, v0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 8293
    .local v14, "oldBounds":Landroid/graphics/Rect;
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v15, v14}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 8294
    invoke-virtual {v2, v13}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v15

    iput-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 8295
    iget-object v15, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-nez v15, :cond_7

    .line 8297
    iput-object v4, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 8298
    invoke-virtual {v1, v3}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 8302
    sget-object v3, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLEAR_ACCESSIBILITY_FOCUS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 8303
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v3

    .line 8302
    invoke-virtual {v2, v13, v3, v4}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 8304
    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 8307
    :cond_7
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInScreen()Landroid/graphics/Rect;

    move-result-object v3

    .line 8308
    .local v3, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 8309
    invoke-virtual {v14, v3}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 8310
    invoke-direct {v0, v14}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 8313
    .end local v3    # "newBounds":Landroid/graphics/Rect;
    :cond_8
    :goto_2
    return-void

    .line 8244
    .end local v2    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v5    # "changes":I
    .end local v6    # "eventSourceNodeId":J
    .end local v8    # "changedViewId":I
    .end local v9    # "hostInSubtree":Z
    .end local v10    # "root":Landroid/view/View;
    .end local v11    # "focusedSourceNodeId":J
    .end local v13    # "focusedChildId":I
    .end local v14    # "oldBounds":Landroid/graphics/Rect;
    :cond_9
    :goto_3
    return-void
.end method

.method private handleWindowFocusChanged()V
    .locals 12

    .line 2730
    monitor-enter p0

    .line 2731
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    if-nez v0, :cond_0

    .line 2732
    monitor-exit p0

    return-void

    .line 2734
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    .line 2735
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    .line 2736
    .local v1, "hasWindowFocus":Z
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    .line 2737
    .local v2, "inTouchMode":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2739
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v3, :cond_8

    .line 2740
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    .line 2742
    const/4 v3, 0x1

    if-eqz v1, :cond_3

    .line 2743
    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2744
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2745
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2747
    :try_start_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 2748
    .local v4, "lp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    move-object v11, v5

    .line 2749
    .local v11, "surfaceInsets":Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget v7, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v8, p0, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual/range {v6 .. v11}, Landroid/view/ThreadedRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2765
    .end local v4    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v11    # "surfaceInsets":Landroid/graphics/Rect;
    goto :goto_2

    .line 2751
    :catch_0
    move-exception v0

    .line 2752
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "OutOfResourcesException locking surface"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2754
    :try_start_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2755
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "No processes killed for memory; killing self"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2760
    :cond_2
    goto :goto_1

    .line 2759
    :catch_1
    move-exception v3

    .line 2762
    :goto_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2764
    return-void

    .line 2769
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_3
    :goto_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v1, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2771
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2772
    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2774
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v4

    .line 2775
    .local v4, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v4, :cond_4

    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2776
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2778
    :cond_4
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 2779
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v5}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2780
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2781
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v5, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 2783
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    if-eqz v5, :cond_5

    .line 2784
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mTooltipHost:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->hideTooltip()V

    .line 2790
    :cond_5
    if-eqz v1, :cond_7

    .line 2791
    if-eqz v4, :cond_6

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2792
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v7

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    xor-int/lit8 v9, v0, 0x1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v10, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object v5, v4

    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2798
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2800
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2804
    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2808
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->fireAccessibilityFocusEventIfHasFocusedNode()V

    goto :goto_3

    .line 2810
    :cond_7
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-eqz v3, :cond_8

    .line 2811
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->handlePointerCaptureChanged(Z)V

    .line 2815
    .end local v4    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    :goto_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$InputStage;->onWindowFocusChanged(Z)V

    .line 2816
    return-void

    .line 2737
    .end local v1    # "hasWindowFocus":Z
    .end local v2    # "inTouchMode":Z
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private invalidateRectOnScreen(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "dirty"    # Landroid/graphics/Rect;

    .line 1468
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 1469
    .local v0, "localDirty":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1470
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 1471
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 1475
    :cond_0
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1478
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 1479
    .local v1, "appScale":F
    iget v2, p0, Landroid/view/ViewRootImpl;->mWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v1

    add-float/2addr v4, v3

    float-to-int v3, v4

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    .line 1481
    .local v2, "intersected":Z
    if-nez v2, :cond_1

    .line 1482
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 1484
    :cond_1
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-eqz v3, :cond_3

    .line 1485
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1487
    :cond_3
    return-void
.end method

.method public static invokeFunctor(JZ)V
    .locals 0
    .param p0, "functor"    # J
    .param p2, "waitForCompletion"    # Z

    .line 1106
    invoke-static {p0, p1, p2}, Landroid/view/ThreadedRenderer;->invokeFunctor(JZ)V

    .line 1107
    return-void
.end method

.method private isAutofillUiShowing()Z
    .locals 2

    .line 7083
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAutofillManager()Landroid/view/autofill/AutofillManager;

    move-result-object v0

    .line 7084
    .local v0, "afm":Landroid/view/autofill/AutofillManager;
    if-nez v0, :cond_0

    .line 7085
    const/4 v1, 0x0

    return v1

    .line 7087
    :cond_0
    invoke-virtual {v0}, Landroid/view/autofill/AutofillManager;->isAutofillUiShowing()Z

    move-result v1

    return v1
.end method

.method private isInLocalFocusMode()Z
    .locals 2

    .line 1046
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isInTouchMode()Z
    .locals 2

    .line 762
    invoke-static {}, Landroid/view/WindowManagerGlobal;->peekWindowSession()Landroid/view/IWindowSession;

    move-result-object v0

    .line 763
    .local v0, "windowSession":Landroid/view/IWindowSession;
    if-eqz v0, :cond_0

    .line 765
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 766
    :catch_0
    move-exception v1

    .line 769
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .line 6799
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 6814
    const/4 v0, 0x0

    return v0

    .line 6812
    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method static isTerminalInputEvent(Landroid/view/InputEvent;)Z
    .locals 5
    .param p0, "event"    # Landroid/view/InputEvent;

    .line 7738
    instance-of v0, p0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7739
    move-object v0, p0

    check-cast v0, Landroid/view/KeyEvent;

    .line 7740
    .local v0, "keyEvent":Landroid/view/KeyEvent;
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 7742
    .end local v0    # "keyEvent":Landroid/view/KeyEvent;
    :cond_1
    move-object v0, p0

    check-cast v0, Landroid/view/MotionEvent;

    .line 7743
    .local v0, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 7744
    .local v3, "action":I
    if-eq v3, v2, :cond_3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    move v1, v2

    :goto_1
    return v1
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyEvent"    # Landroid/view/KeyEvent;

    .line 6823
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "parent"    # Landroid/view/View;

    .line 4168
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 4169
    return v0

    .line 4172
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 4173
    .local v1, "theParent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    invoke-static {v2, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$dznxCZGM2R1fsBljsJKomLjBRoM(Landroid/view/ViewRootImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->postDrawFinished()V

    return-void
.end method

.method public static synthetic lambda$performDraw$0(Landroid/view/ViewRootImpl;J)V
    .locals 0
    .param p1, "frameNr"    # J

    .line 3309
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 3310
    return-void
.end method

.method private leaveTouchMode()Z
    .locals 4

    .line 4627
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 4628
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4629
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4630
    .local v0, "focusedView":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-nez v2, :cond_0

    .line 4632
    return v1

    .line 4633
    :cond_0
    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_1

    .line 4637
    return v1

    .line 4643
    .end local v0    # "focusedView":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 4645
    :cond_2
    return v1
.end method

.method private maybeHandleWindowMove(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 2709
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2711
    .local v0, "windowMoved":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 2712
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2

    .line 2713
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 2715
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2716
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p1, Landroid/graphics/Rect;->top:I

    iput v3, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2718
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    if-eqz v1, :cond_6

    .line 2720
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v1, :cond_5

    .line 2721
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v1, v3}, Landroid/view/ThreadedRenderer;->setLightCenter(Landroid/view/View$AttachInfo;)V

    .line 2723
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v2, v1, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 2725
    :cond_6
    return-void
.end method

.method private maybeUpdateTooltip(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5787
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5788
    return-void

    .line 5790
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 5791
    .local v0, "action":I
    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 5794
    return-void

    .line 5796
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 5797
    .local v1, "manager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5798
    return-void

    .line 5800
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v2, :cond_3

    .line 5801
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v3, "maybeUpdateTooltip called after view was removed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5802
    return-void

    .line 5804
    :cond_3
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchTooltipHoverEvent(Landroid/view/MotionEvent;)Z

    .line 5805
    return-void
.end method

.method private measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z
    .locals 8
    .param p1, "host"    # Landroid/view/View;
    .param p2, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "res"    # Landroid/content/res/Resources;
    .param p4, "desiredWindowWidth"    # I
    .param p5, "desiredWindowHeight"    # I

    .line 1697
    const/4 v0, 0x0

    .line 1703
    .local v0, "windowSizeMayChange":Z
    const/4 v1, 0x0

    .line 1704
    .local v1, "goodMeasure":Z
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_2

    .line 1709
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1710
    .local v2, "packageMetrics":Landroid/util/DisplayMetrics;
    const v3, 0x105004c

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v5, 0x1

    invoke-virtual {p3, v3, v4, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1711
    const/4 v3, 0x0

    .line 1712
    .local v3, "baseSize":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_0

    .line 1713
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    invoke-virtual {v4, v2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v3, v4

    .line 1717
    :cond_0
    if-eqz v3, :cond_2

    if-le p4, v3, :cond_2

    .line 1718
    iget v4, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v3, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v4

    .line 1719
    .local v4, "childWidthMeasureSpec":I
    iget v5, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v5

    .line 1720
    .local v5, "childHeightMeasureSpec":I
    invoke-direct {p0, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1725
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v6

    const/high16 v7, 0x1000000

    and-int/2addr v6, v7

    if-nez v6, :cond_1

    .line 1726
    const/4 v1, 0x1

    goto :goto_0

    .line 1729
    :cond_1
    add-int v6, v3, p4

    div-int/lit8 v6, v6, 0x2

    .line 1732
    .end local v3    # "baseSize":I
    .local v6, "baseSize":I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v6, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    .line 1733
    .end local v4    # "childWidthMeasureSpec":I
    .local v3, "childWidthMeasureSpec":I
    invoke-direct {p0, v3, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1736
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    and-int/2addr v4, v7

    if-nez v4, :cond_2

    .line 1738
    const/4 v1, 0x1

    .line 1744
    .end local v2    # "packageMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "childWidthMeasureSpec":I
    .end local v5    # "childHeightMeasureSpec":I
    .end local v6    # "baseSize":I
    :cond_2
    :goto_0
    if-nez v1, :cond_4

    .line 1745
    iget v2, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {p4, v2}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v2

    .line 1746
    .local v2, "childWidthMeasureSpec":I
    iget v3, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p5, v3}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v3

    .line 1747
    .local v3, "childHeightMeasureSpec":I
    invoke-direct {p0, v2, v3}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 1748
    iget v4, p0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_3

    iget v4, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_4

    .line 1749
    :cond_3
    const/4 v0, 0x1

    .line 1759
    .end local v2    # "childWidthMeasureSpec":I
    .end local v3    # "childHeightMeasureSpec":I
    :cond_4
    return v0
.end method

.method private obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I

    .line 7553
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7554
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7555
    iget v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7556
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7557
    iput-object v1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 7559
    :cond_0
    new-instance v2, Landroid/view/ViewRootImpl$QueuedInputEvent;

    invoke-direct {v2, v1}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>(Landroid/view/ViewRootImpl$1;)V

    move-object v0, v2

    .line 7562
    :goto_0
    iput-object p1, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7563
    iput-object p2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7564
    iput p3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    .line 7565
    return-object v0
.end method

.method private performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    .locals 6
    .param p1, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p2, "force"    # Z
    .param p3, "newDisplayId"    # I

    .line 4081
    if-eqz p1, :cond_3

    .line 4085
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4086
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4092
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    .line 4093
    .local v2, "ci":Landroid/content/res/CompatibilityInfo;
    sget-object v3, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4094
    new-instance v3, Landroid/content/res/Configuration;

    invoke-direct {v3, v0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v0, v3

    .line 4095
    iget v3, p0, Landroid/view/ViewRootImpl;->mNoncompatDensity:I

    invoke-virtual {v2, v3, v0}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(ILandroid/content/res/Configuration;)V

    .line 4098
    :cond_0
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 4099
    :try_start_0
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 4100
    sget-object v5, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewRootImpl$ConfigChangedCallback;

    invoke-interface {v5, v0}, Landroid/view/ViewRootImpl$ConfigChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4099
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 4102
    .end local v4    # "i":I
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4104
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v3, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 4106
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 4107
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    if-eqz v3, :cond_2

    .line 4112
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    invoke-interface {v3, v1, p3}, Landroid/view/ViewRootImpl$ActivityConfigCallback;->onConfigurationChanged(Landroid/content/res/Configuration;I)V

    goto :goto_1

    .line 4115
    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/ViewRootImpl;->updateConfiguration(I)V

    .line 4117
    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    .line 4118
    return-void

    .line 4102
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 4082
    .end local v0    # "globalConfig":Landroid/content/res/Configuration;
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No merged config provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private performDraw()V
    .locals 8

    .line 3291
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    .line 3292
    return-void

    .line 3293
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3294
    return-void

    .line 3297
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 3298
    .local v0, "fullRedrawNeeded":Z
    :goto_1
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3300
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3301
    const-string v1, "draw"

    const-wide/16 v3, 0x8

    invoke-static {v3, v4, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3303
    const/4 v1, 0x0

    .line 3304
    .local v1, "usingAsyncReport":Z
    iget-boolean v5, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 3305
    invoke-virtual {v5}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3306
    const/4 v1, 0x1

    .line 3307
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    new-instance v6, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;

    invoke-direct {v6, p0}, Landroid/view/-$$Lambda$ViewRootImpl$zmAX2p20-kqxknxcUyGhSNjsJvM;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v5, v6}, Landroid/view/ThreadedRenderer;->setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V

    .line 3314
    :cond_4
    :try_start_0
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->draw(Z)Z

    move-result v5

    .line 3315
    .local v5, "canUseAsync":Z
    const/4 v6, 0x0

    if-eqz v1, :cond_5

    if-nez v5, :cond_5

    .line 3316
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, v7, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v7, v6}, Landroid/view/ThreadedRenderer;->setFrameCompleteCallback(Landroid/view/ThreadedRenderer$FrameCompleteCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3317
    const/4 v1, 0x0

    .line 3320
    .end local v5    # "canUseAsync":Z
    :cond_5
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3321
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3322
    nop

    .line 3326
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 3327
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 3328
    .local v3, "count":I
    move v4, v2

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_6

    .line 3329
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/RenderNode;

    invoke-virtual {v5}, Landroid/view/RenderNode;->endAllAnimators()V

    .line 3328
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 3331
    .end local v4    # "i":I
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 3334
    .end local v3    # "count":I
    :cond_7
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v3, :cond_c

    .line 3335
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3338
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v2, :cond_8

    .line 3340
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3343
    goto :goto_3

    .line 3341
    :catch_0
    move-exception v2

    .line 3342
    .local v2, "e":Ljava/lang/InterruptedException;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v4, "Window redraw count down interrupted!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3344
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_3
    iput-object v6, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 3347
    :cond_8
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_9

    .line 3348
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v2, v3}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 3355
    :cond_9
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v2, :cond_a

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3356
    new-instance v2, Lcom/android/internal/view/SurfaceCallbackHelper;

    new-instance v3, Landroid/view/-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM;

    invoke-direct {v3, p0}, Landroid/view/-$$Lambda$ViewRootImpl$dznxCZGM2R1fsBljsJKomLjBRoM;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-direct {v2, v3}, Lcom/android/internal/view/SurfaceCallbackHelper;-><init>(Ljava/lang/Runnable;)V

    .line 3357
    .local v2, "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v3}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    .line 3359
    .local v3, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/view/SurfaceCallbackHelper;->dispatchSurfaceRedrawNeededAsync(Landroid/view/SurfaceHolder;[Landroid/view/SurfaceHolder$Callback;)V

    .line 3360
    .end local v2    # "sch":Lcom/android/internal/view/SurfaceCallbackHelper;
    .end local v3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    goto :goto_4

    :cond_a
    if-nez v1, :cond_c

    .line 3361
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v2, :cond_b

    .line 3362
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v2}, Landroid/view/ThreadedRenderer;->fence()V

    .line 3364
    :cond_b
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pendingDrawFinished()V

    .line 3367
    :cond_c
    :goto_4
    return-void

    .line 3320
    :catchall_0
    move-exception v5

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    .line 3321
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    throw v5
.end method

.method private performLayout(Landroid/view/WindowManager$LayoutParams;II)V
    .locals 15
    .param p1, "lp"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "desiredWindowWidth"    # I
    .param p3, "desiredWindowHeight"    # I

    move-object v7, p0

    .line 2976
    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2977
    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2978
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2980
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2981
    .local v9, "host":Landroid/view/View;
    if-nez v9, :cond_0

    .line 2982
    return-void

    .line 2989
    :cond_0
    const-string v1, "layout"

    const-wide/16 v10, 0x8

    invoke-static {v10, v11, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2991
    :try_start_0
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 2993
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 2994
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v12, v1

    .line 2995
    .local v12, "numViewsRequestingLayout":I
    if-lez v12, :cond_2

    .line 3000
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v0}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    move-object v13, v1

    .line 3002
    .local v13, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v13, :cond_2

    .line 3006
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 3009
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v14, v1

    .line 3010
    .local v14, "numValidRequests":I
    move v1, v0

    .line 3010
    .local v1, "i":I
    :goto_0
    if-ge v1, v14, :cond_1

    .line 3011
    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 3012
    .local v2, "view":Landroid/view/View;
    const-string v3, "View"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestLayout() improperly called by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " during layout: running second layout pass"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3014
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 3010
    .end local v2    # "view":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3016
    .end local v1    # "i":I
    :cond_1
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object v1, v7

    move-object v2, v9

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    .line 3018
    iput-boolean v8, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 3019
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v9, v0, v0, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 3021
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    .line 3025
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-direct {v7, v1, v8}, Landroid/view/ViewRootImpl;->getValidLayoutRequesters(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 3026
    .end local v13    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local v1, "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v1, :cond_2

    .line 3027
    move-object v2, v1

    .line 3029
    .local v2, "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v3

    new-instance v4, Landroid/view/ViewRootImpl$2;

    invoke-direct {v4, v7, v2}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/view/HandlerActionQueue;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3046
    .end local v1    # "validLayoutRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v2    # "finalRequesters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "numViewsRequestingLayout":I
    .end local v14    # "numValidRequests":I
    :cond_2
    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 3047
    nop

    .line 3048
    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mInLayout:Z

    .line 3049
    return-void

    .line 3046
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performMeasure(II)V
    .locals 3
    .param p1, "childWidthMeasureSpec"    # I
    .param p2, "childHeightMeasureSpec"    # I

    .line 2912
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2913
    return-void

    .line 2915
    :cond_0
    const-string/jumbo v0, "measure"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2917
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2919
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 2920
    nop

    .line 2921
    return-void

    .line 2919
    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private performTraversals()V
    .locals 59

    .line 1853
    move-object/from16 v7, p0

    iget-object v8, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1861
    .local v8, "host":Landroid/view/View;
    if-eqz v8, :cond_97

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v0, :cond_0

    goto/16 :goto_4c

    .line 1864
    :cond_0
    const/4 v9, 0x1

    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 1865
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1866
    const/4 v0, 0x0

    .line 1867
    .local v0, "windowSizeMayChange":Z
    const/4 v10, 0x0

    .line 1868
    .local v10, "newSurface":Z
    const/4 v1, 0x0

    .line 1869
    .local v1, "surfaceChanged":Z
    iget-object v11, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 1874
    .local v11, "lp":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v12

    .line 1875
    .local v12, "viewVisibility":I
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v13, 0x0

    if-nez v2, :cond_2

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-ne v2, v12, :cond_1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-nez v2, :cond_1

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    if-eqz v2, :cond_2

    :cond_1
    move v2, v9

    goto :goto_0

    :cond_2
    move v2, v13

    :goto_0
    move v14, v2

    .line 1880
    .local v14, "viewVisibilityChanged":Z
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 1881
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_5

    iget v2, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-nez v2, :cond_3

    move v2, v9

    goto :goto_1

    :cond_3
    move v2, v13

    :goto_1
    if-nez v12, :cond_4

    move v3, v9

    goto :goto_2

    :cond_4
    move v3, v13

    :goto_2
    if-eq v2, v3, :cond_5

    move v2, v9

    goto :goto_3

    :cond_5
    move v2, v13

    :goto_3
    move v15, v2

    .line 1884
    .local v15, "viewUserVisibilityChanged":Z
    const/4 v2, 0x0

    .line 1885
    .local v2, "params":Landroid/view/WindowManager$LayoutParams;
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v3, :cond_6

    .line 1886
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1887
    const/4 v1, 0x1

    .line 1888
    move-object v2, v11

    .line 1890
    .end local v1    # "surfaceChanged":Z
    .local v16, "surfaceChanged":Z
    :cond_6
    move/from16 v16, v1

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 1891
    invoke-virtual {v1}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v6

    .line 1892
    .local v6, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v6}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v1, v3, :cond_8

    .line 1893
    move-object v2, v11

    .line 1894
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1895
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1896
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v1, :cond_7

    .line 1897
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v1, v1, -0x81

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1898
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto :goto_4

    .line 1900
    :cond_7
    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v1, v1, 0x80

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1901
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1905
    :cond_8
    :goto_4
    move-object/from16 v17, v2

    .end local v2    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v17, "params":Landroid/view/WindowManager$LayoutParams;
    iput v13, v7, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1907
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 1908
    .local v5, "frame":Landroid/graphics/Rect;
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v1, :cond_c

    .line 1909
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1910
    iput-boolean v9, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1912
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1913
    .local v1, "config":Landroid/content/res/Configuration;
    invoke-static {v11}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1915
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1916
    .local v2, "size":Landroid/graphics/Point;
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1917
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 1918
    .local v3, "desiredWindowWidth":I
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 1919
    .local v2, "desiredWindowHeight":I
    goto :goto_5

    .line 1920
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    :cond_9
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1921
    .restart local v3    # "desiredWindowWidth":I
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1927
    .restart local v2    # "desiredWindowHeight":I
    :goto_5
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v9, v4, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1933
    sget-boolean v4, Landroid/view/ViewRootImpl;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_a

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_a

    .line 1934
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v9, "first traversal already has focus"

    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    :cond_a
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v4, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1939
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v13, v4, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1940
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1941
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v4, v4, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v4, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 1943
    iget v4, v7, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v9, 0x2

    if-ne v4, v9, :cond_b

    .line 1944
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1946
    :cond_b
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v8, v4, v13}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1947
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 1948
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 1949
    .end local v1    # "config":Landroid/content/res/Configuration;
    goto :goto_6

    .line 1950
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    :cond_c
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 1951
    .restart local v3    # "desiredWindowWidth":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1952
    .restart local v2    # "desiredWindowHeight":I
    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v3, v1, :cond_d

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v2, v1, :cond_e

    .line 1954
    :cond_d
    const/4 v1, 0x1

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1955
    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1956
    const/4 v0, 0x1

    .line 1960
    :cond_e
    :goto_6
    if-eqz v14, :cond_13

    .line 1961
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v12, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1962
    invoke-virtual {v8, v12}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1963
    if-eqz v15, :cond_10

    .line 1964
    if-nez v12, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    move v1, v13

    :goto_7
    invoke-virtual {v8, v1}, Landroid/view/View;->dispatchVisibilityAggregated(Z)Z

    .line 1966
    :cond_10
    if-nez v12, :cond_11

    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v1, :cond_12

    .line 1967
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 1968
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1970
    :cond_12
    const/16 v1, 0x8

    if-ne v12, v1, :cond_13

    .line 1973
    iput-boolean v13, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1978
    :cond_13
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    if-eqz v1, :cond_14

    .line 1979
    invoke-virtual {v8}, Landroid/view/View;->clearAccessibilityFocus()V

    .line 1983
    :cond_14
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/HandlerActionQueue;

    move-result-object v1

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/view/HandlerActionQueue;->executeActions(Landroid/os/Handler;)V

    .line 1985
    const/4 v1, 0x0

    .line 1987
    .local v1, "insetsChanged":Z
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_16

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v4, :cond_15

    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_16

    :cond_15
    const/4 v4, 0x1

    goto :goto_8

    :cond_16
    move v4, v13

    :goto_8
    move v9, v4

    .line 1988
    .local v9, "layoutRequested":Z
    if-eqz v9, :cond_22

    .line 1990
    iget-object v13, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 1992
    .local v13, "res":Landroid/content/res/Resources;
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_18

    .line 1995
    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v21, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .end local v0    # "windowSizeMayChange":Z
    .local v21, "windowSizeMayChange":Z
    const/16 v18, 0x1

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, v4, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1996
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2040
    .end local v1    # "insetsChanged":Z
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    .local v0, "desiredWindowWidth":I
    .local v20, "desiredWindowHeight":I
    .local v23, "insetsChanged":Z
    :cond_17
    move/from16 v23, v1

    move/from16 v20, v2

    move v0, v3

    goto/16 :goto_a

    .line 1998
    .end local v20    # "desiredWindowHeight":I
    .end local v21    # "windowSizeMayChange":Z
    .end local v23    # "insetsChanged":Z
    .local v0, "windowSizeMayChange":Z
    .restart local v1    # "insetsChanged":Z
    .restart local v2    # "desiredWindowHeight":I
    .restart local v3    # "desiredWindowWidth":I
    :cond_18
    move/from16 v21, v0

    .end local v0    # "windowSizeMayChange":Z
    .restart local v21    # "windowSizeMayChange":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 1999
    const/4 v1, 0x1

    .line 2001
    :cond_19
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2002
    const/4 v1, 0x1

    .line 2004
    :cond_1a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2005
    const/4 v1, 0x1

    .line 2007
    :cond_1b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v4}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2008
    const/4 v1, 0x1

    .line 2010
    :cond_1c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 2011
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2015
    :cond_1d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2016
    const/4 v1, 0x1

    .line 2018
    :cond_1e
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    if-eq v0, v4, :cond_1f

    .line 2019
    const/4 v1, 0x1

    .line 2021
    :cond_1f
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x2

    if-eq v0, v4, :cond_20

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v4, :cond_17

    .line 2023
    :cond_20
    const/4 v0, 0x1

    .line 2025
    .end local v21    # "windowSizeMayChange":Z
    .restart local v0    # "windowSizeMayChange":Z
    invoke-static {v11}, Landroid/view/ViewRootImpl;->shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v20

    if-eqz v20, :cond_21

    .line 2027
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 2028
    .local v4, "size":Landroid/graphics/Point;
    move/from16 v23, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .end local v0    # "windowSizeMayChange":Z
    .local v23, "windowSizeMayChange":Z
    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 2029
    iget v0, v4, Landroid/graphics/Point;->x:I

    .line 2030
    .end local v3    # "desiredWindowWidth":I
    .local v0, "desiredWindowWidth":I
    iget v2, v4, Landroid/graphics/Point;->y:I

    .line 2031
    .end local v4    # "size":Landroid/graphics/Point;
    nop

    .line 2040
    move/from16 v20, v2

    .end local v1    # "insetsChanged":Z
    .end local v2    # "desiredWindowHeight":I
    .restart local v20    # "desiredWindowHeight":I
    .restart local v21    # "windowSizeMayChange":Z
    .local v23, "insetsChanged":Z
    :goto_9
    move/from16 v21, v23

    move/from16 v23, v1

    goto :goto_a

    .line 2032
    .end local v20    # "desiredWindowHeight":I
    .end local v21    # "windowSizeMayChange":Z
    .end local v23    # "insetsChanged":Z
    .local v0, "windowSizeMayChange":Z
    .restart local v1    # "insetsChanged":Z
    .restart local v2    # "desiredWindowHeight":I
    .restart local v3    # "desiredWindowWidth":I
    :cond_21
    move/from16 v23, v0

    .end local v0    # "windowSizeMayChange":Z
    .local v23, "windowSizeMayChange":Z
    invoke-virtual {v13}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2033
    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v7, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v3

    .line 2034
    iget v4, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-direct {v7, v4}, Landroid/view/ViewRootImpl;->dipToPx(I)I

    move-result v0

    .line 2040
    .end local v2    # "desiredWindowHeight":I
    .local v0, "desiredWindowHeight":I
    move/from16 v20, v0

    move v0, v3

    goto :goto_9

    .end local v1    # "insetsChanged":Z
    .end local v3    # "desiredWindowWidth":I
    .local v0, "desiredWindowWidth":I
    .restart local v20    # "desiredWindowHeight":I
    .restart local v21    # "windowSizeMayChange":Z
    .local v23, "insetsChanged":Z
    :goto_a
    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move/from16 v24, v10

    const/4 v10, -0x2

    move-object v4, v13

    .end local v10    # "newSurface":Z
    .local v24, "newSurface":Z
    move-object/from16 v25, v5

    move v5, v0

    .end local v5    # "frame":Landroid/graphics/Rect;
    .local v25, "frame":Landroid/graphics/Rect;
    move-object/from16 v22, v6

    move/from16 v6, v20

    .end local v6    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v22, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v1

    or-int v1, v21, v1

    .line 2044
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v21    # "windowSizeMayChange":Z
    .local v1, "windowSizeMayChange":Z
    move v13, v0

    move/from16 v21, v1

    goto :goto_b

    .end local v20    # "desiredWindowHeight":I
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v23    # "insetsChanged":Z
    .end local v24    # "newSurface":Z
    .end local v25    # "frame":Landroid/graphics/Rect;
    .local v0, "windowSizeMayChange":Z
    .local v1, "insetsChanged":Z
    .restart local v2    # "desiredWindowHeight":I
    .restart local v3    # "desiredWindowWidth":I
    .restart local v5    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v10    # "newSurface":Z
    :cond_22
    move/from16 v21, v0

    move-object/from16 v25, v5

    move-object/from16 v22, v6

    move/from16 v24, v10

    const/4 v10, -0x2

    move/from16 v23, v1

    move v6, v2

    move v13, v3

    .end local v0    # "windowSizeMayChange":Z
    .end local v1    # "insetsChanged":Z
    .end local v2    # "desiredWindowHeight":I
    .end local v3    # "desiredWindowWidth":I
    .end local v5    # "frame":Landroid/graphics/Rect;
    .end local v10    # "newSurface":Z
    .local v6, "desiredWindowHeight":I
    .local v13, "desiredWindowWidth":I
    .restart local v21    # "windowSizeMayChange":Z
    .restart local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v23    # "insetsChanged":Z
    .restart local v24    # "newSurface":Z
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :goto_b
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2045
    move-object/from16 v17, v11

    .line 2047
    :cond_23
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v0, :cond_24

    .line 2048
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 2049
    move-object/from16 v17, v11

    .line 2052
    :cond_24
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_25

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v0, :cond_29

    .line 2053
    :cond_25
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 2054
    iget v0, v7, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v0, 0xf0

    .line 2058
    .local v0, "resizeMode":I
    if-nez v0, :cond_29

    .line 2059
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2060
    .local v1, "N":I
    move v2, v0

    const/4 v0, 0x0

    .local v0, "i":I
    .local v2, "resizeMode":I
    :goto_c
    if-ge v0, v1, :cond_27

    .line 2061
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v3, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isShown()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 2062
    const/16 v2, 0x10

    .line 2060
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 2065
    .end local v0    # "i":I
    :cond_27
    if-nez v2, :cond_28

    .line 2066
    const/16 v2, 0x20

    .line 2068
    :cond_28
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, 0xf0

    if-eq v0, v2, :cond_29

    .line 2070
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v0, v0, -0xf1

    or-int/2addr v0, v2

    iput v0, v11, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2073
    move-object/from16 v17, v11

    .line 2078
    .end local v1    # "N":I
    .end local v2    # "resizeMode":I
    .end local v17    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v5, "params":Landroid/view/WindowManager$LayoutParams;
    :cond_29
    move-object/from16 v5, v17

    if-eqz v5, :cond_2c

    .line 2079
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_2a

    .line 2080
    iget v0, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 2081
    const/4 v0, -0x3

    iput v0, v5, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2084
    :cond_2a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    goto :goto_d

    :cond_2b
    const/4 v1, 0x0

    :goto_d
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    .line 2088
    :cond_2c
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-eqz v0, :cond_2d

    .line 2089
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2090
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 2091
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V

    .line 2092
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v0, :cond_2d

    .line 2096
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2097
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2096
    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move-object/from16 v26, v5

    move v5, v13

    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v26, "params":Landroid/view/WindowManager$LayoutParams;
    move/from16 v27, v6

    .end local v6    # "desiredWindowHeight":I
    .local v27, "desiredWindowHeight":I
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->measureHierarchy(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/content/res/Resources;II)Z

    move-result v0

    or-int v21, v21, v0

    goto :goto_e

    .line 2102
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v27    # "desiredWindowHeight":I
    .restart local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "desiredWindowHeight":I
    :cond_2d
    move-object/from16 v26, v5

    move/from16 v27, v6

    .end local v5    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v6    # "desiredWindowHeight":I
    .restart local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v27    # "desiredWindowHeight":I
    :goto_e
    if-eqz v9, :cond_2e

    .line 2106
    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 2109
    :cond_2e
    if-eqz v9, :cond_34

    if-eqz v21, :cond_34

    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2110
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-ne v0, v1, :cond_33

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    if-ne v0, v1, :cond_33

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v0, v10, :cond_30

    .line 2112
    move-object/from16 v6, v25

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v25    # "frame":Landroid/graphics/Rect;
    .local v6, "frame":Landroid/graphics/Rect;
    if-ge v0, v13, :cond_31

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v0, v1, :cond_2f

    goto :goto_f

    .line 2114
    :cond_2f
    move/from16 v10, v27

    goto :goto_10

    .line 2112
    .end local v6    # "frame":Landroid/graphics/Rect;
    .restart local v25    # "frame":Landroid/graphics/Rect;
    :cond_30
    move-object/from16 v6, v25

    .end local v25    # "frame":Landroid/graphics/Rect;
    .restart local v6    # "frame":Landroid/graphics/Rect;
    :cond_31
    :goto_f
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v10, :cond_32

    .line 2114
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    move/from16 v10, v27

    if-ge v0, v10, :cond_35

    .end local v27    # "desiredWindowHeight":I
    .local v10, "desiredWindowHeight":I
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, v7, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v0, v1, :cond_35

    goto :goto_10

    .end local v10    # "desiredWindowHeight":I
    .restart local v27    # "desiredWindowHeight":I
    :cond_32
    move/from16 v10, v27

    .end local v27    # "desiredWindowHeight":I
    .restart local v10    # "desiredWindowHeight":I
    goto :goto_11

    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v10    # "desiredWindowHeight":I
    .restart local v25    # "frame":Landroid/graphics/Rect;
    .restart local v27    # "desiredWindowHeight":I
    :cond_33
    move-object/from16 v6, v25

    move/from16 v10, v27

    .end local v25    # "frame":Landroid/graphics/Rect;
    .end local v27    # "desiredWindowHeight":I
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v10    # "desiredWindowHeight":I
    :goto_10
    const/4 v0, 0x1

    goto :goto_12

    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v10    # "desiredWindowHeight":I
    .restart local v25    # "frame":Landroid/graphics/Rect;
    .restart local v27    # "desiredWindowHeight":I
    :cond_34
    move-object/from16 v6, v25

    move/from16 v10, v27

    .end local v25    # "frame":Landroid/graphics/Rect;
    .end local v27    # "desiredWindowHeight":I
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v10    # "desiredWindowHeight":I
    :cond_35
    :goto_11
    const/4 v0, 0x0

    .line 2115
    .local v0, "windowShouldResize":Z
    :goto_12
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_36

    iget v1, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    if-nez v1, :cond_36

    const/4 v1, 0x1

    goto :goto_13

    :cond_36
    const/4 v1, 0x0

    :goto_13
    or-int/2addr v0, v1

    .line 2120
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    or-int v17, v0, v1

    .line 2125
    .end local v0    # "windowShouldResize":Z
    .local v17, "windowShouldResize":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    .line 2126
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    if-eqz v0, :cond_37

    goto :goto_14

    :cond_37
    const/4 v0, 0x0

    goto :goto_15

    :cond_38
    :goto_14
    const/4 v0, 0x1

    :goto_15
    move/from16 v20, v0

    .line 2129
    .local v20, "computesInternalInsets":Z
    const/4 v0, 0x0

    .line 2130
    .local v0, "insetsPending":Z
    const/4 v1, 0x0

    .line 2131
    .local v1, "relayoutResult":I
    const/4 v2, 0x0

    .line 2133
    .local v2, "updatedConfiguration":Z
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getGenerationId()I

    move-result v5

    .line 2135
    .local v5, "surfaceGenerationId":I
    if-nez v12, :cond_39

    const/4 v3, 0x1

    goto :goto_16

    :cond_39
    const/4 v3, 0x0

    :goto_16
    move/from16 v25, v3

    .line 2136
    .local v25, "isViewVisible":Z
    iget-boolean v4, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 2137
    .local v4, "windowRelayoutWasForced":Z
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v3, :cond_3c

    if-nez v17, :cond_3c

    if-nez v23, :cond_3c

    if-nez v14, :cond_3c

    move-object/from16 v3, v26

    if-nez v3, :cond_3b

    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .local v3, "params":Landroid/view/WindowManager$LayoutParams;
    move/from16 v28, v0

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .end local v0    # "insetsPending":Z
    .local v28, "insetsPending":Z
    if-eqz v0, :cond_3a

    goto :goto_17

    .line 2497
    :cond_3a
    invoke-direct {v7, v6}, Landroid/view/ViewRootImpl;->maybeHandleWindowMove(Landroid/graphics/Rect;)V

    .line 2500
    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v51, v5

    move/from16 v34, v10

    move/from16 v41, v28

    move-object v10, v6

    goto/16 :goto_37

    .line 2139
    .end local v28    # "insetsPending":Z
    .restart local v0    # "insetsPending":Z
    :cond_3b
    move/from16 v28, v0

    .end local v0    # "insetsPending":Z
    .restart local v28    # "insetsPending":Z
    goto :goto_17

    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v28    # "insetsPending":Z
    .restart local v0    # "insetsPending":Z
    .restart local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_3c
    move/from16 v28, v0

    move-object/from16 v3, v26

    .end local v0    # "insetsPending":Z
    .end local v26    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v28    # "insetsPending":Z
    :goto_17
    move/from16 v29, v1

    const/4 v1, 0x0

    iput-boolean v1, v7, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 2141
    .end local v1    # "relayoutResult":I
    .local v29, "relayoutResult":I
    if-eqz v25, :cond_3f

    .line 2151
    if-eqz v20, :cond_3e

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v0, :cond_3d

    if-eqz v14, :cond_3e

    :cond_3d
    const/4 v0, 0x1

    goto :goto_18

    :cond_3e
    const/4 v0, 0x0

    .line 2154
    .end local v28    # "insetsPending":Z
    .restart local v0    # "insetsPending":Z
    :goto_18
    move v1, v0

    goto :goto_19

    .end local v0    # "insetsPending":Z
    .restart local v28    # "insetsPending":Z
    :cond_3f
    move/from16 v1, v28

    .end local v28    # "insetsPending":Z
    .local v1, "insetsPending":Z
    :goto_19
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_40

    .line 2155
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2156
    move/from16 v30, v2

    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    goto :goto_1a

    .line 2159
    :cond_40
    move/from16 v30, v2

    .end local v2    # "updatedConfiguration":Z
    .local v30, "updatedConfiguration":Z
    :goto_1a
    const/4 v2, 0x0

    .line 2160
    .local v2, "hwInitialized":Z
    const/16 v26, 0x0

    .line 2161
    .local v26, "contentInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    move/from16 v27, v0

    .line 2169
    .local v27, "hadSurface":Z
    :try_start_0
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_12

    if-eqz v0, :cond_42

    .line 2173
    :try_start_1
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_6

    move/from16 v31, v2

    :try_start_2
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .end local v2    # "hwInitialized":Z
    .local v31, "hwInitialized":Z
    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->pauseSurface(Landroid/view/Surface;)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v0, :cond_41

    .line 2176
    :try_start_3
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v2, v7, Landroid/view/ViewRootImpl;->mWidth:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move-object/from16 v32, v6

    :try_start_4
    iget v6, v7, Landroid/view/ViewRootImpl;->mHeight:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .end local v6    # "frame":Landroid/graphics/Rect;
    .local v32, "frame":Landroid/graphics/Rect;
    move/from16 v33, v9

    const/4 v9, 0x0

    :try_start_5
    invoke-virtual {v0, v9, v9, v2, v6}, Landroid/graphics/Rect;->set(IIII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v9    # "layoutRequested":Z
    .local v33, "layoutRequested":Z
    goto :goto_1b

    .line 2365
    :catch_0
    move-exception v0

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v34, v10

    goto :goto_1c

    .end local v33    # "layoutRequested":Z
    .restart local v9    # "layoutRequested":Z
    :catch_1
    move-exception v0

    move/from16 v33, v9

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v34, v10

    move/from16 v47, v29

    move-object/from16 v10, v32

    .end local v9    # "layoutRequested":Z
    .restart local v33    # "layoutRequested":Z
    goto/16 :goto_2d

    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v33    # "layoutRequested":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    :catch_2
    move-exception v0

    move/from16 v33, v9

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v34, v10

    move/from16 v47, v29

    move-object v10, v6

    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v33    # "layoutRequested":Z
    goto/16 :goto_2d

    .line 2178
    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v33    # "layoutRequested":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    :cond_41
    move-object/from16 v32, v6

    move/from16 v33, v9

    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v33    # "layoutRequested":Z
    :goto_1b
    :try_start_6
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v0, v0, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    move/from16 v34, v10

    const-wide/16 v9, 0x1

    .end local v10    # "desiredWindowHeight":I
    .local v34, "desiredWindowHeight":I
    :try_start_7
    invoke-virtual {v0, v9, v10}, Landroid/view/FrameInfo;->addFlags(J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1d

    .line 2365
    :catch_3
    move-exception v0

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v29    # "relayoutResult":I
    .end local v32    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .local v41, "insetsPending":Z
    .local v45, "params":Landroid/view/WindowManager$LayoutParams;
    .local v46, "windowRelayoutWasForced":Z
    .local v47, "relayoutResult":I
    :goto_1c
    move/from16 v47, v29

    move-object/from16 v10, v32

    goto/16 :goto_2d

    .end local v9    # "surfaceGenerationId":I
    .end local v34    # "desiredWindowHeight":I
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v10, "desiredWindowHeight":I
    .restart local v29    # "relayoutResult":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    :catch_4
    move-exception v0

    move/from16 v34, v10

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move/from16 v47, v29

    move-object/from16 v10, v32

    .end local v10    # "desiredWindowHeight":I
    .restart local v34    # "desiredWindowHeight":I
    goto/16 :goto_2d

    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v33    # "layoutRequested":Z
    .end local v34    # "desiredWindowHeight":I
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .local v9, "layoutRequested":Z
    .restart local v10    # "desiredWindowHeight":I
    :catch_5
    move-exception v0

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move-object v10, v6

    move/from16 v47, v29

    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .end local v10    # "desiredWindowHeight":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v33    # "layoutRequested":Z
    .restart local v34    # "desiredWindowHeight":I
    goto/16 :goto_2d

    .end local v31    # "hwInitialized":Z
    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v33    # "layoutRequested":Z
    .end local v34    # "desiredWindowHeight":I
    .restart local v2    # "hwInitialized":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    .restart local v10    # "desiredWindowHeight":I
    :catch_6
    move-exception v0

    move/from16 v31, v2

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move-object v10, v6

    move/from16 v47, v29

    .end local v2    # "hwInitialized":Z
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .end local v10    # "desiredWindowHeight":I
    .restart local v31    # "hwInitialized":Z
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v33    # "layoutRequested":Z
    .restart local v34    # "desiredWindowHeight":I
    goto/16 :goto_2d

    .line 2180
    .end local v31    # "hwInitialized":Z
    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v33    # "layoutRequested":Z
    .end local v34    # "desiredWindowHeight":I
    .restart local v2    # "hwInitialized":Z
    .restart local v6    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "layoutRequested":Z
    .restart local v10    # "desiredWindowHeight":I
    :cond_42
    move/from16 v31, v2

    move-object/from16 v32, v6

    move/from16 v33, v9

    move/from16 v34, v10

    .end local v2    # "hwInitialized":Z
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v9    # "layoutRequested":Z
    .end local v10    # "desiredWindowHeight":I
    .restart local v31    # "hwInitialized":Z
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v33    # "layoutRequested":Z
    .restart local v34    # "desiredWindowHeight":I
    :goto_1d
    :try_start_8
    invoke-direct {v7, v3, v12, v1}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_11

    move v9, v0

    .line 2196
    .end local v29    # "relayoutResult":I
    .local v9, "relayoutResult":I
    :try_start_9
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mLastReportedMergedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, v2}, Landroid/util/MergedConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_10

    if-nez v0, :cond_43

    .line 2199
    :try_start_a
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    const/4 v6, 0x1

    xor-int/2addr v2, v6

    const/4 v6, -0x1

    invoke-direct {v7, v0, v2, v6}, Landroid/view/ViewRootImpl;->performConfigurationChange(Landroid/util/MergedConfiguration;ZI)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    .line 2201
    const/4 v2, 0x1

    .line 2204
    .end local v30    # "updatedConfiguration":Z
    .local v2, "updatedConfiguration":Z
    move/from16 v30, v2

    goto :goto_20

    .line 2365
    .end local v2    # "updatedConfiguration":Z
    .restart local v30    # "updatedConfiguration":Z
    :catch_7
    move-exception v0

    move/from16 v41, v1

    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v32    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v41    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    :goto_1e
    move-object/from16 v45, v3

    move/from16 v46, v4

    :goto_1f
    move/from16 v47, v9

    move-object/from16 v10, v32

    move v9, v5

    goto/16 :goto_2d

    .line 2204
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    :cond_43
    :goto_20
    :try_start_b
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move v10, v0

    .line 2206
    .local v10, "overscanInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v26, v0

    .line 2208
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v28, v0

    .line 2210
    .local v28, "visibleInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v29, v0

    .line 2212
    .local v29, "stableInsetsChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v35, v0

    .line 2214
    .local v35, "cutoutChanged":Z
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    move/from16 v36, v0

    .line 2215
    .local v36, "outsetsChanged":Z
    and-int/lit8 v0, v9, 0x20

    if-eqz v0, :cond_44

    const/4 v0, 0x1

    goto :goto_21

    :cond_44
    const/4 v0, 0x0

    :goto_21
    move/from16 v37, v0

    .line 2217
    .local v37, "surfaceSizeChanged":Z
    or-int v16, v16, v37

    .line 2218
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_10

    if-eq v0, v2, :cond_45

    const/4 v0, 0x1

    goto :goto_22

    :cond_45
    const/4 v0, 0x0

    :goto_22
    move/from16 v38, v0

    .line 2220
    .local v38, "alwaysConsumeNavBarChanged":Z
    if-eqz v26, :cond_46

    .line 2221
    :try_start_c
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2225
    :cond_46
    if-eqz v10, :cond_47

    .line 2226
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2230
    const/4 v0, 0x1

    .line 2232
    .end local v26    # "contentInsetsChanged":Z
    .local v0, "contentInsetsChanged":Z
    move/from16 v26, v0

    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_47
    if-eqz v29, :cond_48

    .line 2233
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2237
    const/4 v0, 0x1

    .line 2239
    .end local v26    # "contentInsetsChanged":Z
    .restart local v0    # "contentInsetsChanged":Z
    move/from16 v26, v0

    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_48
    if-eqz v35, :cond_49

    .line 2240
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0, v2}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 2245
    const/4 v0, 0x1

    .line 2247
    .end local v26    # "contentInsetsChanged":Z
    .restart local v0    # "contentInsetsChanged":Z
    move/from16 v26, v0

    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_49
    if-eqz v38, :cond_4a

    .line 2248
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 2249
    const/4 v0, 0x1

    .line 2251
    .end local v26    # "contentInsetsChanged":Z
    .restart local v0    # "contentInsetsChanged":Z
    move/from16 v26, v0

    .end local v0    # "contentInsetsChanged":Z
    .restart local v26    # "contentInsetsChanged":Z
    :cond_4a
    if-nez v26, :cond_4b

    iget v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    if-ne v0, v2, :cond_4b

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    if-nez v0, :cond_4b

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mOverscanRequested:Z
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_7

    if-ne v0, v2, :cond_4b

    if-eqz v36, :cond_4c

    .line 2255
    :cond_4b
    :try_start_d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iput v0, v7, Landroid/view/ViewRootImpl;->mLastSystemUiVisibility:I

    .line 2256
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mOverscanRequested:Z

    iput-boolean v0, v7, Landroid/view/ViewRootImpl;->mLastOverscanRequested:Z

    .line 2257
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2258
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 2259
    invoke-virtual {v7, v8}, Landroid/view/ViewRootImpl;->dispatchApplyInsets(Landroid/view/View;)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_10

    .line 2261
    :cond_4c
    if-eqz v28, :cond_4d

    .line 2262
    :try_start_e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2267
    :cond_4d
    if-nez v27, :cond_50

    .line 2268
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_7

    if-eqz v0, :cond_56

    .line 2276
    const/4 v2, 0x1

    .line 2277
    .end local v24    # "newSurface":Z
    .local v2, "newSurface":Z
    const/4 v6, 0x1

    :try_start_f
    iput-boolean v6, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2278
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    .line 2283
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_b

    if-eqz v0, :cond_4f

    .line 2285
    :try_start_10
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v6}, Landroid/view/ThreadedRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0
    :try_end_10
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_b

    move v6, v0

    .line 2287
    .end local v31    # "hwInitialized":Z
    .local v6, "hwInitialized":Z
    if-eqz v6, :cond_4e

    :try_start_11
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_4e

    .line 2291
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->allocateBuffers()V
    :try_end_11
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_11 .. :try_end_11} :catch_9
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_8

    goto :goto_23

    .line 2365
    .end local v10    # "overscanInsetsChanged":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v29    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_8
    move-exception v0

    move/from16 v41, v1

    move/from16 v24, v2

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v31, v6

    goto/16 :goto_1f

    .line 2293
    .restart local v10    # "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v29    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_9
    move-exception v0

    move/from16 v31, v6

    goto :goto_24

    .line 2296
    :cond_4e
    :goto_23
    nop

    .line 2338
    move/from16 v24, v2

    move/from16 v31, v6

    goto/16 :goto_25

    .line 2293
    .end local v6    # "hwInitialized":Z
    .restart local v31    # "hwInitialized":Z
    :catch_a
    move-exception v0

    .line 2294
    .local v0, "e":Landroid/view/Surface$OutOfResourcesException;
    :goto_24
    :try_start_12
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_b

    .line 2295
    return-void

    .line 2338
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_4f
    move/from16 v24, v2

    goto/16 :goto_25

    .line 2365
    .end local v10    # "overscanInsetsChanged":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v29    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    :catch_b
    move-exception v0

    move/from16 v41, v1

    move/from16 v24, v2

    goto/16 :goto_1e

    .line 2299
    .end local v2    # "newSurface":Z
    .restart local v10    # "overscanInsetsChanged":Z
    .restart local v24    # "newSurface":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v29    # "stableInsetsChanged":Z
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    :cond_50
    :try_start_13
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_10

    if-nez v0, :cond_54

    .line 2302
    :try_start_14
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_51

    .line 2303
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 2305
    :cond_51
    const/4 v2, 0x0

    iput v2, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    iput v2, v7, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2306
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_52

    .line 2307
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    iget v2, v7, Landroid/view/ViewRootImpl;->mCurScrollY:I

    invoke-interface {v0, v2}, Lcom/android/internal/view/RootViewSurfaceTaker;->onRootViewScrollYChanged(I)V

    .line 2309
    :cond_52
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_53

    .line 2310
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2313
    :cond_53
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_56

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 2314
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 2315
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_25

    .line 2317
    :cond_54
    :try_start_15
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-ne v5, v0, :cond_55

    if-nez v37, :cond_55

    if-eqz v4, :cond_56

    :cond_55
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_10

    if-nez v0, :cond_56

    :try_start_16
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_56

    .line 2321
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7

    .line 2331
    :try_start_17
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/view/ThreadedRenderer;->updateSurface(Landroid/view/Surface;)V
    :try_end_17
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_17 .. :try_end_17} :catch_c
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_7

    .line 2335
    goto :goto_25

    .line 2332
    :catch_c
    move-exception v0

    .line 2333
    .restart local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_18
    invoke-direct {v7, v0}, Landroid/view/ViewRootImpl;->handleOutOfResourcesException(Landroid/view/Surface$OutOfResourcesException;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_7

    .line 2334
    return-void

    .line 2338
    .end local v0    # "e":Landroid/view/Surface$OutOfResourcesException;
    :cond_56
    :goto_25
    and-int/lit8 v0, v9, 0x10

    if-eqz v0, :cond_57

    const/4 v0, 0x1

    goto :goto_26

    :cond_57
    const/4 v0, 0x0

    .line 2340
    .local v0, "freeformResizing":Z
    :goto_26
    and-int/lit8 v2, v9, 0x8

    if-eqz v2, :cond_58

    const/4 v2, 0x1

    goto :goto_27

    :cond_58
    const/4 v2, 0x0

    :goto_27
    move/from16 v39, v2

    .line 2342
    .local v39, "dockedResizing":Z
    if-nez v0, :cond_5a

    if-eqz v39, :cond_59

    goto :goto_28

    :cond_59
    const/4 v2, 0x0

    goto :goto_29

    :cond_5a
    :goto_28
    const/4 v2, 0x1

    :goto_29
    move v6, v2

    .line 2343
    .local v6, "dragResizing":Z
    :try_start_19
    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eq v2, v6, :cond_5d

    .line 2344
    if-eqz v6, :cond_5c

    .line 2345
    if-eqz v0, :cond_5b

    .line 2346
    nop

    .line 2347
    const/4 v2, 0x0

    goto :goto_2a

    :cond_5b
    const/4 v2, 0x1

    :goto_2a
    iput v2, v7, Landroid/view/ViewRootImpl;->mResizeMode:I

    .line 2349
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    move/from16 v40, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_10

    .end local v0    # "freeformResizing":Z
    .local v40, "freeformResizing":Z
    move/from16 v41, v1

    :try_start_1a
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    .line 2350
    .end local v1    # "insetsPending":Z
    .restart local v41    # "insetsPending":Z
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, v7, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_e

    move/from16 v42, v5

    :try_start_1b
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .end local v5    # "surfaceGenerationId":I
    .local v42, "surfaceGenerationId":I
    move/from16 v43, v6

    iget v6, v7, Landroid/view/ViewRootImpl;->mResizeMode:I
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_d

    .line 2349
    .end local v6    # "dragResizing":Z
    .local v43, "dragResizing":Z
    move-object/from16 v44, v1

    move-object v1, v7

    move-object/from16 v45, v3

    move v3, v0

    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    move/from16 v46, v4

    move-object/from16 v4, v44

    .end local v4    # "windowRelayoutWasForced":Z
    .restart local v46    # "windowRelayoutWasForced":Z
    move/from16 v47, v9

    move/from16 v9, v42

    .end local v42    # "surfaceGenerationId":I
    .local v9, "surfaceGenerationId":I
    .restart local v47    # "relayoutResult":I
    move/from16 v48, v10

    move-object/from16 v10, v32

    move/from16 v0, v43

    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v43    # "dragResizing":Z
    .local v0, "dragResizing":Z
    .local v10, "frame":Landroid/graphics/Rect;
    .local v48, "overscanInsetsChanged":Z
    :try_start_1c
    invoke-direct/range {v1 .. v6}, Landroid/view/ViewRootImpl;->startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto :goto_2b

    .line 2365
    .end local v0    # "dragResizing":Z
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v28    # "visibleInsetsChanged":Z
    .end local v29    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    .end local v39    # "dockedResizing":Z
    .end local v40    # "freeformResizing":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .end local v48    # "overscanInsetsChanged":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .local v9, "relayoutResult":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v42    # "surfaceGenerationId":I
    :catch_d
    move-exception v0

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v47, v9

    move-object/from16 v10, v32

    move/from16 v9, v42

    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v32    # "frame":Landroid/graphics/Rect;
    .end local v42    # "surfaceGenerationId":I
    .local v9, "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    goto/16 :goto_2d

    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    :catch_e
    move-exception v0

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v47, v9

    move-object/from16 v10, v32

    move v9, v5

    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v32    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    goto/16 :goto_2d

    .line 2354
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .local v0, "freeformResizing":Z
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .restart local v6    # "dragResizing":Z
    .local v9, "relayoutResult":I
    .local v10, "overscanInsetsChanged":Z
    .restart local v28    # "visibleInsetsChanged":Z
    .restart local v29    # "stableInsetsChanged":Z
    .restart local v32    # "frame":Landroid/graphics/Rect;
    .restart local v35    # "cutoutChanged":Z
    .restart local v36    # "outsetsChanged":Z
    .restart local v37    # "surfaceSizeChanged":Z
    .restart local v38    # "alwaysConsumeNavBarChanged":Z
    .restart local v39    # "dockedResizing":Z
    :cond_5c
    move/from16 v40, v0

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v0, v6

    move/from16 v47, v9

    move/from16 v48, v10

    move-object/from16 v10, v32

    move v9, v5

    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v6    # "dragResizing":Z
    .end local v32    # "frame":Landroid/graphics/Rect;
    .local v0, "dragResizing":Z
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v40    # "freeformResizing":Z
    .restart local v41    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    .restart local v48    # "overscanInsetsChanged":Z
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    goto :goto_2b

    .line 2357
    .end local v40    # "freeformResizing":Z
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .end local v48    # "overscanInsetsChanged":Z
    .local v0, "freeformResizing":Z
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .restart local v6    # "dragResizing":Z
    .local v9, "relayoutResult":I
    .local v10, "overscanInsetsChanged":Z
    .restart local v32    # "frame":Landroid/graphics/Rect;
    :cond_5d
    move/from16 v40, v0

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v0, v6

    move/from16 v47, v9

    move/from16 v48, v10

    move-object/from16 v10, v32

    move v9, v5

    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v6    # "dragResizing":Z
    .end local v32    # "frame":Landroid/graphics/Rect;
    .local v0, "dragResizing":Z
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v40    # "freeformResizing":Z
    .restart local v41    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    .restart local v48    # "overscanInsetsChanged":Z
    :goto_2b
    iget-boolean v1, v7, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v1, :cond_5f

    .line 2358
    if-eqz v0, :cond_5e

    .line 2359
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I

    .line 2360
    iget-object v1, v7, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    goto :goto_2c

    .line 2362
    :cond_5e
    const/4 v1, 0x0

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetY:I

    iput v1, v7, Landroid/view/ViewRootImpl;->mCanvasOffsetX:I
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_1c} :catch_f

    .line 2366
    .end local v0    # "dragResizing":Z
    .end local v28    # "visibleInsetsChanged":Z
    .end local v29    # "stableInsetsChanged":Z
    .end local v35    # "cutoutChanged":Z
    .end local v36    # "outsetsChanged":Z
    .end local v37    # "surfaceSizeChanged":Z
    .end local v38    # "alwaysConsumeNavBarChanged":Z
    .end local v39    # "dockedResizing":Z
    .end local v40    # "freeformResizing":Z
    .end local v48    # "overscanInsetsChanged":Z
    :cond_5f
    :goto_2c
    goto :goto_2d

    .line 2365
    :catch_f
    move-exception v0

    goto :goto_2d

    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v9, "relayoutResult":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    :catch_10
    move-exception v0

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v47, v9

    move-object/from16 v10, v32

    move v9, v5

    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v32    # "frame":Landroid/graphics/Rect;
    .local v9, "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v41    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    .restart local v47    # "relayoutResult":I
    goto :goto_2d

    .end local v9    # "surfaceGenerationId":I
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v47    # "relayoutResult":I
    .restart local v1    # "insetsPending":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v29, "relayoutResult":I
    .restart local v32    # "frame":Landroid/graphics/Rect;
    :catch_11
    move-exception v0

    move/from16 v41, v1

    move-object/from16 v45, v3

    move/from16 v46, v4

    move v9, v5

    move-object/from16 v10, v32

    move/from16 v47, v29

    .end local v1    # "insetsPending":Z
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v32    # "frame":Landroid/graphics/Rect;
    .restart local v9    # "surfaceGenerationId":I
    .restart local v10    # "frame":Landroid/graphics/Rect;
    .restart local v41    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    goto :goto_2d

    .end local v31    # "hwInitialized":Z
    .end local v33    # "layoutRequested":Z
    .end local v34    # "desiredWindowHeight":I
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .restart local v1    # "insetsPending":Z
    .local v2, "hwInitialized":Z
    .restart local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v4    # "windowRelayoutWasForced":Z
    .restart local v5    # "surfaceGenerationId":I
    .local v6, "frame":Landroid/graphics/Rect;
    .local v9, "layoutRequested":Z
    .local v10, "desiredWindowHeight":I
    :catch_12
    move-exception v0

    move/from16 v41, v1

    move/from16 v31, v2

    move-object/from16 v45, v3

    move/from16 v46, v4

    move/from16 v33, v9

    move/from16 v34, v10

    move v9, v5

    move-object v10, v6

    move/from16 v47, v29

    .line 2371
    .end local v3    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "windowRelayoutWasForced":Z
    .end local v5    # "surfaceGenerationId":I
    .end local v6    # "frame":Landroid/graphics/Rect;
    .end local v29    # "relayoutResult":I
    .end local v30    # "updatedConfiguration":Z
    .local v1, "relayoutResult":I
    .local v2, "updatedConfiguration":Z
    .local v9, "surfaceGenerationId":I
    .local v10, "frame":Landroid/graphics/Rect;
    .restart local v31    # "hwInitialized":Z
    .restart local v33    # "layoutRequested":Z
    .restart local v34    # "desiredWindowHeight":I
    .restart local v41    # "insetsPending":Z
    .restart local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v46    # "windowRelayoutWasForced":Z
    :goto_2d
    move/from16 v2, v30

    move/from16 v1, v47

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v10, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2372
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v10, Landroid/graphics/Rect;->top:I

    iput v3, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 2377
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v0, v3, :cond_60

    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v0, v3, :cond_61

    .line 2378
    :cond_60
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2379
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2382
    :cond_61
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v0, :cond_6a

    .line 2384
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 2387
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v3, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 2389
    :cond_62
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 2390
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2391
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 2392
    if-nez v27, :cond_64

    .line 2393
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2395
    const/4 v3, 0x1

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 2396
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2397
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_63

    .line 2398
    array-length v3, v0

    const/4 v4, 0x0

    :goto_2e
    if-ge v4, v3, :cond_63

    aget-object v5, v0, v4

    .line 2399
    .local v5, "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 2398
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 2402
    :cond_63
    const/16 v16, 0x1

    .line 2404
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :cond_64
    if-nez v16, :cond_66

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->getGenerationId()I

    move-result v0

    if-eq v9, v0, :cond_65

    goto :goto_2f

    .line 2413
    :cond_65
    move/from16 v51, v9

    goto :goto_31

    .line 2405
    :cond_66
    :goto_2f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v0

    .line 2406
    .restart local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v0, :cond_67

    .line 2407
    array-length v3, v0

    const/4 v4, 0x0

    :goto_30
    if-ge v4, v3, :cond_67

    aget-object v5, v0, v4

    .line 2408
    .restart local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v49, v0

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->format:I

    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .local v49, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    move/from16 v50, v3

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v51, v9

    iget v9, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .end local v9    # "surfaceGenerationId":I
    .local v51, "surfaceGenerationId":I
    invoke-interface {v5, v6, v0, v3, v9}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 2407
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v49

    move/from16 v3, v50

    move/from16 v9, v51

    goto :goto_30

    .line 2413
    .end local v49    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v51    # "surfaceGenerationId":I
    .restart local v9    # "surfaceGenerationId":I
    :cond_67
    move/from16 v51, v9

    .end local v9    # "surfaceGenerationId":I
    .restart local v51    # "surfaceGenerationId":I
    :goto_31
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mIsCreating:Z

    goto :goto_33

    .line 2414
    .end local v51    # "surfaceGenerationId":I
    .restart local v9    # "surfaceGenerationId":I
    :cond_68
    move/from16 v51, v9

    .end local v9    # "surfaceGenerationId":I
    .restart local v51    # "surfaceGenerationId":I
    if-eqz v27, :cond_6b

    .line 2415
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 2416
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v3

    .line 2417
    .local v3, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    if-eqz v3, :cond_69

    .line 2418
    array-length v0, v3

    const/4 v4, 0x0

    :goto_32
    if-ge v4, v0, :cond_69

    aget-object v5, v3, v4

    .line 2419
    .restart local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    iget-object v6, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v5, v6}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 2418
    .end local v5    # "c":Landroid/view/SurfaceHolder$Callback;
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    .line 2422
    :cond_69
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2424
    :try_start_1d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4}, Landroid/view/Surface;-><init>()V

    iput-object v4, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    .line 2426
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v0, v0, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 2427
    goto :goto_33

    .line 2426
    :catchall_0
    move-exception v0

    iget-object v4, v7, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 2431
    .end local v3    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v51    # "surfaceGenerationId":I
    .restart local v9    # "surfaceGenerationId":I
    :cond_6a
    move/from16 v51, v9

    .end local v9    # "surfaceGenerationId":I
    .restart local v51    # "surfaceGenerationId":I
    :cond_6b
    :goto_33
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 2432
    .local v0, "threadedRenderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_6d

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2433
    if-nez v31, :cond_6c

    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    .line 2434
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_6c

    iget v3, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2435
    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->getHeight()I

    move-result v4

    if-ne v3, v4, :cond_6c

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    if-eqz v3, :cond_6d

    .line 2437
    :cond_6c
    iget v3, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/ThreadedRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 2439
    const/4 v3, 0x0

    iput-boolean v3, v7, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 2443
    :cond_6d
    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v3, :cond_6e

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v3, :cond_70

    .line 2444
    :cond_6e
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_6f

    const/4 v3, 0x1

    goto :goto_34

    :cond_6f
    const/4 v3, 0x0

    :goto_34
    invoke-direct {v7, v3}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v3

    .line 2446
    .local v3, "focusChangedDueToTouchMode":Z
    if-nez v3, :cond_71

    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_71

    iget v4, v7, Landroid/view/ViewRootImpl;->mHeight:I

    .line 2447
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_71

    if-nez v26, :cond_71

    if-eqz v2, :cond_70

    goto :goto_35

    .line 2491
    .end local v0    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .end local v3    # "focusChangedDueToTouchMode":Z
    .end local v26    # "contentInsetsChanged":Z
    .end local v27    # "hadSurface":Z
    .end local v31    # "hwInitialized":Z
    :cond_70
    move/from16 v53, v1

    move/from16 v9, v33

    goto :goto_36

    .line 2449
    .restart local v0    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .restart local v3    # "focusChangedDueToTouchMode":Z
    .restart local v26    # "contentInsetsChanged":Z
    .restart local v27    # "hadSurface":Z
    .restart local v31    # "hwInitialized":Z
    :cond_71
    :goto_35
    iget v4, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v11, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v4

    .line 2450
    .local v4, "childWidthMeasureSpec":I
    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    iget v6, v11, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v5

    .line 2459
    .local v5, "childHeightMeasureSpec":I
    invoke-direct {v7, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2464
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 2465
    .local v6, "width":I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 2466
    .local v9, "height":I
    const/16 v28, 0x0

    .line 2468
    .local v28, "measureAgain":Z
    move-object/from16 v52, v0

    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .end local v0    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .local v52, "threadedRenderer":Landroid/view/ThreadedRenderer;
    const/16 v29, 0x0

    cmpl-float v0, v0, v29

    move/from16 v53, v1

    .end local v1    # "relayoutResult":I
    .local v53, "relayoutResult":I
    if-lez v0, :cond_72

    .line 2469
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v6, v0

    .line 2470
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2472
    const/16 v28, 0x1

    .line 2474
    :cond_72
    iget v0, v11, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    cmpl-float v0, v0, v29

    if-lez v0, :cond_73

    .line 2475
    iget v0, v7, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int/2addr v0, v9

    int-to-float v0, v0

    iget v1, v11, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v9, v0

    .line 2476
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v9, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 2478
    const/16 v28, 0x1

    .line 2481
    :cond_73
    if-eqz v28, :cond_74

    .line 2485
    invoke-direct {v7, v4, v5}, Landroid/view/ViewRootImpl;->performMeasure(II)V

    .line 2488
    :cond_74
    const/4 v0, 0x1

    .line 2491
    .end local v3    # "focusChangedDueToTouchMode":Z
    .end local v4    # "childWidthMeasureSpec":I
    .end local v5    # "childHeightMeasureSpec":I
    .end local v6    # "width":I
    .end local v9    # "height":I
    .end local v26    # "contentInsetsChanged":Z
    .end local v27    # "hadSurface":Z
    .end local v28    # "measureAgain":Z
    .end local v31    # "hwInitialized":Z
    .end local v33    # "layoutRequested":Z
    .end local v52    # "threadedRenderer":Landroid/view/ThreadedRenderer;
    .local v0, "layoutRequested":Z
    move v9, v0

    .line 2500
    .end local v0    # "layoutRequested":Z
    .local v9, "layoutRequested":Z
    :goto_36
    move/from16 v1, v53

    .end local v53    # "relayoutResult":I
    .restart local v1    # "relayoutResult":I
    :goto_37
    if-eqz v9, :cond_76

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eqz v0, :cond_75

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v0, :cond_76

    :cond_75
    const/4 v0, 0x1

    goto :goto_38

    :cond_76
    const/4 v0, 0x0

    :goto_38
    move v3, v0

    .line 2501
    .local v3, "didLayout":Z
    if-nez v3, :cond_78

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v0, :cond_77

    goto :goto_39

    :cond_77
    const/4 v0, 0x0

    goto :goto_3a

    :cond_78
    :goto_39
    const/4 v0, 0x1

    :goto_3a
    move v4, v0

    .line 2503
    .local v4, "triggerGlobalLayoutListener":Z
    if-eqz v3, :cond_7a

    .line 2504
    iget v0, v7, Landroid/view/ViewRootImpl;->mWidth:I

    iget v5, v7, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-direct {v7, v11, v0, v5}, Landroid/view/ViewRootImpl;->performLayout(Landroid/view/WindowManager$LayoutParams;II)V

    .line 2509
    iget v0, v8, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_7a

    .line 2512
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    invoke-virtual {v8, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2513
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/16 v18, 0x1

    aget v6, v6, v18

    move/from16 v54, v2

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .end local v2    # "updatedConfiguration":Z
    .local v54, "updatedConfiguration":Z
    const/16 v19, 0x0

    aget v2, v2, v19

    move/from16 v55, v3

    iget v3, v8, Landroid/view/View;->mRight:I

    .end local v3    # "didLayout":Z
    .local v55, "didLayout":Z
    add-int/2addr v2, v3

    iget v3, v8, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    aget v3, v3, v18

    move/from16 v56, v9

    iget v9, v8, Landroid/view/View;->mBottom:I

    .end local v9    # "layoutRequested":Z
    .local v56, "layoutRequested":Z
    add-int/2addr v3, v9

    iget v9, v8, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v9

    invoke-virtual {v0, v5, v6, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 2517
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v8, v0}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 2518
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_79

    .line 2519
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 2522
    :cond_79
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 2523
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 2524
    const/4 v2, 0x1

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2527
    :try_start_1e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 2529
    goto :goto_3b

    .line 2528
    :catch_13
    move-exception v0

    goto :goto_3b

    .line 2540
    .end local v54    # "updatedConfiguration":Z
    .end local v55    # "didLayout":Z
    .end local v56    # "layoutRequested":Z
    .restart local v2    # "updatedConfiguration":Z
    .restart local v3    # "didLayout":Z
    .restart local v9    # "layoutRequested":Z
    :cond_7a
    move/from16 v54, v2

    move/from16 v55, v3

    move/from16 v56, v9

    .end local v2    # "updatedConfiguration":Z
    .end local v3    # "didLayout":Z
    .end local v9    # "layoutRequested":Z
    .restart local v54    # "updatedConfiguration":Z
    .restart local v55    # "didLayout":Z
    .restart local v56    # "layoutRequested":Z
    :cond_7b
    :goto_3b
    if-eqz v4, :cond_7c

    .line 2541
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2542
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 2545
    :cond_7c
    if-eqz v20, :cond_7f

    .line 2547
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 2548
    .local v2, "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 2551
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2552
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mHasNonEmptyGivenInternalInsets:Z

    .line 2555
    if-nez v41, :cond_7d

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 2556
    :cond_7d
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 2562
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_7e

    .line 2563
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2564
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v3, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2565
    .local v3, "visibleInsets":Landroid/graphics/Rect;
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v6, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5, v6}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v5

    .line 2569
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v3, "contentInsets":Landroid/graphics/Rect;
    .local v5, "visibleInsets":Landroid/graphics/Rect;
    .local v31, "touchableRegion":Landroid/graphics/Region;
    :goto_3c
    move-object/from16 v31, v5

    move-object v5, v3

    move-object v3, v0

    goto :goto_3d

    .line 2567
    .end local v3    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v31    # "touchableRegion":Landroid/graphics/Region;
    :cond_7e
    iget-object v0, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 2568
    .restart local v0    # "contentInsets":Landroid/graphics/Rect;
    iget-object v3, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 2569
    .local v3, "visibleInsets":Landroid/graphics/Rect;
    iget-object v5, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    goto :goto_3c

    .line 2573
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .local v3, "contentInsets":Landroid/graphics/Rect;
    .restart local v5    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v31    # "touchableRegion":Landroid/graphics/Region;
    :goto_3d
    :try_start_1f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v6, v7, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v9, v2, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    move-object/from16 v26, v0

    move-object/from16 v27, v6

    move/from16 v28, v9

    move-object/from16 v29, v3

    move-object/from16 v30, v5

    invoke-interface/range {v26 .. v31}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_14

    .line 2576
    goto :goto_3e

    .line 2575
    :catch_14
    move-exception v0

    .line 2580
    .end local v2    # "insets":Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .end local v3    # "contentInsets":Landroid/graphics/Rect;
    .end local v5    # "visibleInsets":Landroid/graphics/Rect;
    .end local v31    # "touchableRegion":Landroid/graphics/Region;
    :cond_7f
    :goto_3e
    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_82

    .line 2581
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_81

    invoke-static {}, Landroid/view/ViewRootImpl;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_3f

    .line 2616
    :cond_80
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_82

    .line 2617
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2618
    .local v0, "focused":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_82

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 2619
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_82

    .line 2621
    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .end local v0    # "focused":Landroid/view/View;
    goto :goto_40

    .line 2586
    :cond_81
    :goto_3f
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_82

    .line 2587
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_82

    .line 2588
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->restoreDefaultFocus()Z

    .line 2628
    :cond_82
    :goto_40
    if-nez v14, :cond_83

    iget-boolean v0, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v0, :cond_84

    :cond_83
    if-eqz v25, :cond_84

    const/4 v0, 0x1

    goto :goto_41

    :cond_84
    const/4 v0, 0x0

    .line 2629
    .local v0, "changedVisibility":Z
    :goto_41
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v2, :cond_85

    if-eqz v25, :cond_85

    const/4 v2, 0x1

    goto :goto_42

    :cond_85
    const/4 v2, 0x0

    .line 2630
    .local v2, "hasWindowFocus":Z
    :goto_42
    if-eqz v2, :cond_86

    iget-boolean v3, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    if-eqz v3, :cond_86

    const/4 v3, 0x1

    goto :goto_43

    :cond_86
    const/4 v3, 0x0

    .line 2631
    .local v3, "regainedFocus":Z
    :goto_43
    if-eqz v3, :cond_87

    .line 2632
    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    goto :goto_44

    .line 2633
    :cond_87
    if-nez v2, :cond_88

    iget-boolean v5, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    if-eqz v5, :cond_88

    .line 2634
    const/4 v5, 0x1

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLostWindowFocus:Z

    .line 2637
    :cond_88
    :goto_44
    if-nez v0, :cond_89

    if-eqz v3, :cond_8c

    .line 2639
    :cond_89
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    if-nez v5, :cond_8a

    .line 2640
    :goto_45
    const/4 v5, 0x0

    goto :goto_46

    :cond_8a
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d5

    if-ne v5, v6, :cond_8b

    const/4 v5, 0x1

    goto :goto_46

    :cond_8b
    goto :goto_45

    .line 2641
    .local v5, "isToast":Z
    :goto_46
    if-nez v5, :cond_8c

    .line 2642
    const/16 v6, 0x20

    invoke-virtual {v8, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 2646
    .end local v5    # "isToast":Z
    :cond_8c
    const/4 v5, 0x0

    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 2647
    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 2648
    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 2649
    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 2650
    iput v12, v7, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 2651
    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mHadWindowFocus:Z

    .line 2653
    if-eqz v2, :cond_8d

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z

    move-result v5

    if-nez v5, :cond_8d

    .line 2654
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2655
    invoke-static {v5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v5

    .line 2656
    .local v5, "imTarget":Z
    iget-boolean v6, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eq v5, v6, :cond_8d

    .line 2657
    iput-boolean v5, v7, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2658
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 2659
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_8d

    if-eqz v5, :cond_8d

    .line 2660
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v6, v9, v2}, Landroid/view/inputmethod/InputMethodManager;->onPreWindowFocus(Landroid/view/View;Z)V

    .line 2661
    iget-object v9, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v57, v0

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .end local v0    # "changedVisibility":Z
    .local v57, "changedVisibility":Z
    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v28

    iget-object v0, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move/from16 v58, v2

    iget-boolean v2, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .end local v2    # "hasWindowFocus":Z
    .local v58, "hasWindowFocus":Z
    const/16 v18, 0x1

    xor-int/lit8 v30, v2, 0x1

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    move-object/from16 v26, v6

    move-object/from16 v27, v9

    move/from16 v29, v0

    move/from16 v31, v2

    invoke-virtual/range {v26 .. v31}, Landroid/view/inputmethod/InputMethodManager;->onPostWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .end local v5    # "imTarget":Z
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    goto :goto_47

    .line 2669
    .end local v57    # "changedVisibility":Z
    .end local v58    # "hasWindowFocus":Z
    .restart local v0    # "changedVisibility":Z
    .restart local v2    # "hasWindowFocus":Z
    :cond_8d
    move/from16 v57, v0

    move/from16 v58, v2

    const/16 v18, 0x1

    .end local v0    # "changedVisibility":Z
    .end local v2    # "hasWindowFocus":Z
    .restart local v57    # "changedVisibility":Z
    .restart local v58    # "hasWindowFocus":Z
    :goto_47
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_8e

    .line 2670
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    .line 2673
    :cond_8e
    iget-object v0, v7, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v0

    if-nez v0, :cond_90

    if-nez v25, :cond_8f

    goto :goto_48

    :cond_8f
    const/16 v18, 0x0

    nop

    :cond_90
    :goto_48
    move/from16 v0, v18

    .line 2675
    .local v0, "cancelDraw":Z
    if-nez v0, :cond_93

    if-nez v24, :cond_93

    .line 2676
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_92

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_92

    .line 2677
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_49
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_91

    .line 2678
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/LayoutTransition;

    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 2677
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 2680
    .end local v2    # "i":I
    :cond_91
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2683
    :cond_92
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performDraw()V

    goto :goto_4b

    .line 2685
    :cond_93
    if-eqz v25, :cond_94

    .line 2687
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_4b

    .line 2688
    :cond_94
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v2, :cond_96

    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_96

    .line 2689
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4a
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_95

    .line 2690
    iget-object v5, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/LayoutTransition;

    invoke-virtual {v5}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 2689
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a

    .line 2692
    .end local v2    # "i":I
    :cond_95
    iget-object v2, v7, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2696
    :cond_96
    :goto_4b
    const/4 v2, 0x0

    iput-boolean v2, v7, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    .line 2697
    return-void

    .line 1862
    .end local v0    # "cancelDraw":Z
    .end local v1    # "relayoutResult":I
    .end local v3    # "regainedFocus":Z
    .end local v4    # "triggerGlobalLayoutListener":Z
    .end local v10    # "frame":Landroid/graphics/Rect;
    .end local v11    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v12    # "viewVisibility":I
    .end local v13    # "desiredWindowWidth":I
    .end local v14    # "viewVisibilityChanged":Z
    .end local v15    # "viewUserVisibilityChanged":Z
    .end local v16    # "surfaceChanged":Z
    .end local v17    # "windowShouldResize":Z
    .end local v20    # "computesInternalInsets":Z
    .end local v21    # "windowSizeMayChange":Z
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .end local v23    # "insetsChanged":Z
    .end local v24    # "newSurface":Z
    .end local v25    # "isViewVisible":Z
    .end local v34    # "desiredWindowHeight":I
    .end local v41    # "insetsPending":Z
    .end local v45    # "params":Landroid/view/WindowManager$LayoutParams;
    .end local v46    # "windowRelayoutWasForced":Z
    .end local v51    # "surfaceGenerationId":I
    .end local v54    # "updatedConfiguration":Z
    .end local v55    # "didLayout":Z
    .end local v56    # "layoutRequested":Z
    .end local v57    # "changedVisibility":Z
    .end local v58    # "hasWindowFocus":Z
    :cond_97
    :goto_4c
    return-void
.end method

.method private postDrawFinished()V
    .locals 2

    .line 3278
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 3279
    return-void
.end method

.method private postSendWindowContentChangedCallback(Landroid/view/View;I)V
    .locals 2
    .param p1, "source"    # Landroid/view/View;
    .param p2, "changeType"    # I

    .line 8130
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 8131
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 8134
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->runOrPost(Landroid/view/View;I)V

    .line 8135
    return-void
.end method

.method private profileRendering(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3201
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_3

    .line 3202
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 3204
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-eqz v0, :cond_0

    .line 3205
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 3207
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    if-eqz v0, :cond_2

    .line 3208
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    if-nez v0, :cond_1

    .line 3209
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 3220
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 3222
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Landroid/view/Choreographer$FrameCallback;

    .line 3225
    :cond_3
    :goto_0
    return-void
.end method

.method private recycleQueuedInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V
    .locals 2
    .param p1, "q"    # Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7569
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    .line 7570
    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mReceiver:Landroid/view/InputEventReceiver;

    .line 7572
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 7573
    iget v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPoolSize:I

    .line 7574
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v0, p1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7575
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mQueuedInputEventPool:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7577
    :cond_0
    return-void
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 27
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "viewVisibility"    # I
    .param p3, "insetsPending"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 7104
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 7105
    .local v14, "appScale":F
    const/4 v1, 0x0

    .line 7106
    .local v1, "restore":Z
    if-eqz v15, :cond_0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 7107
    const/4 v1, 0x1

    .line 7108
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 7109
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, v15}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 7112
    .end local v1    # "restore":Z
    .local v21, "restore":Z
    :cond_0
    move/from16 v21, v1

    if-eqz v15, :cond_1

    .line 7115
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iget v2, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_1

    .line 7117
    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    .line 7118
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7120
    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    iput v1, v15, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 7125
    :cond_1
    const-wide/16 v1, -0x1

    .line 7126
    .local v1, "frameNumber":J
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7127
    iget-object v3, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->getNextFrameNumber()J

    move-result-wide v1

    .line 7130
    .end local v1    # "frameNumber":J
    .local v22, "frameNumber":J
    :cond_2
    move-wide/from16 v22, v1

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 7131
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v6, v4

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 7132
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    add-float/2addr v4, v5

    float-to-int v7, v4

    .line 7133
    iget-object v11, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v8, v0, Landroid/view/ViewRootImpl;->mPendingOutsets:Landroid/graphics/Rect;

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingBackDropFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    move/from16 v24, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mPendingMergedConfiguration:Landroid/util/MergedConfiguration;

    .end local v14    # "appScale":F
    .local v24, "appScale":F
    move-object/from16 v25, v14

    iget-object v14, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 7130
    move-object/from16 v18, v4

    move-object v4, v15

    move-object/from16 v17, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p2

    move-object/from16 v16, v8

    move/from16 v8, p3

    move-object/from16 v19, v9

    move-object/from16 v20, v10

    move-wide/from16 v9, v22

    move-object/from16 v26, v14

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    move-object/from16 v19, v25

    move-object/from16 v20, v26

    invoke-interface/range {v1 .. v20}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIIJLandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/util/MergedConfiguration;Landroid/view/Surface;)I

    move-result v1

    .line 7138
    .local v1, "relayoutResult":I
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 7141
    if-eqz v21, :cond_4

    .line 7142
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 7145
    :cond_4
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_5

    .line 7146
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 7147
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7148
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7149
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7150
    iget-object v2, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 7152
    :cond_5
    return v1
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 2

    .line 8142
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 8143
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8145
    :cond_0
    return-void
.end method

.method private reportDrawFinished()V
    .locals 2

    .line 3283
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3284
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3287
    goto :goto_0

    .line 3285
    :catch_0
    move-exception v0

    .line 3288
    :goto_0
    return-void
.end method

.method private reportNextDraw()V
    .locals 1

    .line 8473
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-nez v0, :cond_0

    .line 8474
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->drawPending()V

    .line 8476
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 8477
    return-void
.end method

.method private requestDrawWindow()V
    .locals 3

    .line 8821
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-nez v0, :cond_0

    .line 8822
    return-void

    .line 8824
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    .line 8825
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 8826
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    invoke-interface {v1, v2}, Landroid/view/WindowCallbacks;->onRequestDraw(Z)V

    .line 8825
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 8828
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private resetPointerIcon(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5748
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 5749
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->updatePointerIcon(Landroid/view/MotionEvent;)Z

    .line 5750
    return-void
.end method

.method private scheduleProcessInputEvents()V
    .locals 3

    .line 7613
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-nez v0, :cond_0

    .line 7614
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7615
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 7616
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7617
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7619
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private setTag()V
    .locals 3

    .line 1038
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1039
    .local v0, "split":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_0

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewRootImpl["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    .line 1042
    :cond_0
    return-void
.end method

.method private static shouldUseDisplaySize(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p0, "lp"    # Landroid/view/WindowManager$LayoutParams;

    .line 1841
    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7de

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e4

    if-ne v0, v1, :cond_0

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

.method private startDragResizing(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 9
    .param p1, "initialBounds"    # Landroid/graphics/Rect;
    .param p2, "fullscreen"    # Z
    .param p3, "systemInsets"    # Landroid/graphics/Rect;
    .param p4, "stableInsets"    # Landroid/graphics/Rect;
    .param p5, "resizeMode"    # I

    .line 8781
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-nez v0, :cond_1

    .line 8782
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    .line 8783
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v1, :cond_0

    .line 8784
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8785
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/view/WindowCallbacks;

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/view/WindowCallbacks;->onWindowDragResizeStart(Landroid/graphics/Rect;ZLandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 8784
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8789
    .end local v1    # "i":I
    :cond_0
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 8791
    :cond_1
    return-void
.end method

.method private trackFPS()V
    .locals 12

    .line 3233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 3234
    .local v0, "nowTime":J
    iget-wide v2, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 3235
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 3236
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0

    .line 3238
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 3239
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 3240
    .local v2, "thisHash":Ljava/lang/String;
    iget-wide v4, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v4, v0, v4

    .line 3241
    .local v4, "frameTime":J
    iget-wide v6, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v0, v6

    .line 3242
    .local v6, "totalTime":J
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 3244
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_1

    .line 3245
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a0000    # 1000.0f

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float/2addr v8, v9

    .line 3246
    .local v8, "fps":F
    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "0x"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\tFPS:\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3247
    iput-wide v0, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 3248
    iput v3, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 3251
    .end local v2    # "thisHash":Ljava/lang/String;
    .end local v4    # "frameTime":J
    .end local v6    # "totalTime":J
    .end local v8    # "fps":F
    :cond_1
    :goto_0
    return-void
.end method

.method private updateContentDrawBounds()Z
    .locals 8

    .line 8809
    const/4 v0, 0x0

    .line 8810
    .local v0, "updated":Z
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 8811
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 8812
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    .line 8813
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowCallbacks;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v6, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/view/WindowCallbacks;->onContentDrawn(IIII)Z

    move-result v3

    or-int/2addr v0, v3

    .line 8811
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 8817
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mDragResizing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    or-int v1, v0, v2

    return v1
.end method

.method private updatePointerIcon(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 5753
    const/4 v0, 0x0

    .line 5754
    .local v0, "pointerIndex":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 5755
    .local v2, "x":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 5756
    .local v3, "y":F
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v4, :cond_0

    .line 5758
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called after view was removed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5759
    return v1

    .line 5761
    :cond_0
    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-ltz v5, :cond_5

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-gez v5, :cond_5

    cmpg-float v4, v3, v4

    if-ltz v4, :cond_5

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    goto :goto_1

    .line 5766
    :cond_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1, v1}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v1

    .line 5767
    .local v1, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz v1, :cond_2

    .line 5768
    invoke-virtual {v1}, Landroid/view/PointerIcon;->getType()I

    move-result v4

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e8

    .line 5770
    .local v4, "pointerType":I
    :goto_0
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v5, v4, :cond_3

    .line 5771
    iput v4, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    .line 5772
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5773
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-eq v5, v7, :cond_3

    .line 5774
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 5775
    return v6

    .line 5778
    :cond_3
    iget v5, p0, Landroid/view/ViewRootImpl;->mPointerIconType:I

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5779
    invoke-virtual {v1, v5}, Landroid/view/PointerIcon;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 5780
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    .line 5781
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v5

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mCustomPointerIcon:Landroid/view/PointerIcon;

    invoke-virtual {v5, v7}, Landroid/hardware/input/InputManager;->setCustomPointerIcon(Landroid/view/PointerIcon;)V

    .line 5783
    :cond_4
    return v6

    .line 5763
    .end local v1    # "pointerIcon":Landroid/view/PointerIcon;
    .end local v4    # "pointerType":I
    :cond_5
    :goto_1
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "updatePointerIcon called with position out of bounds"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5764
    return v1
.end method


# virtual methods
.method public addWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    .line 725
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method addWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/view/ViewRootImpl$WindowStoppedCallback;

    .line 1499
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1500
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 1564
    return-void
.end method

.method public canResolveLayoutDirection()Z
    .locals 1

    .line 8322
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextAlignment()Z
    .locals 1

    .line 8352
    const/4 v0, 0x1

    return v0
.end method

.method public canResolveTextDirection()Z
    .locals 1

    .line 8337
    const/4 v0, 0x1

    return v0
.end method

.method public cancelInvalidate(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 7952
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7955
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(ILjava/lang/Object;)V

    .line 7956
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->removeView(Landroid/view/View;)V

    .line 7957
    return-void
.end method

.method changeCanvasOpacity(Z)V
    .locals 3
    .param p1, "opaque"    # Z

    .line 8493
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCanvasOpacity: opaque="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8494
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 8495
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->setOpaque(Z)V

    .line 8497
    :cond_0
    return-void
.end method

.method checkThread()V
    .locals 2

    .line 8399
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 8403
    return-void

    .line 8400
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 8174
    return-void
.end method

.method public childHasTransientStateChanged(Landroid/view/View;Z)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "hasTransientState"    # Z

    .line 8432
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .line 3975
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3976
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3977
    return-void
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;

    .line 8170
    return-void
.end method

.method public debug()V
    .locals 1

    .line 7228
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 7229
    return-void
.end method

.method destroyHardwareResources()V
    .locals 2

    .line 1082
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1083
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1084
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->destroy()V

    .line 1086
    :cond_0
    return-void
.end method

.method public detachFunctor(J)V
    .locals 1
    .param p1, "functor"    # J

    .line 1089
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->stopDrawing()V

    .line 1094
    :cond_0
    return-void
.end method

.method die(Z)Z
    .locals 3
    .param p1, "immediate"    # Z

    .line 7313
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsInTraversal:Z

    if-nez v0, :cond_0

    .line 7314
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 7315
    const/4 v0, 0x0

    return v0

    .line 7318
    :cond_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsDrawing:Z

    if-nez v0, :cond_1

    .line 7319
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    goto :goto_0

    .line 7321
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to destroy the window while drawing!\n  window="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 7322
    invoke-virtual {v2}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7321
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7324
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 7325
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 8004
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8005
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 8006
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8007
    return-void
.end method

.method dispatchApplyInsets(Landroid/view/View;)V
    .locals 3
    .param p1, "host"    # Landroid/view/View;

    .line 1829
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->getWindowInsets(Z)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1830
    .local v1, "insets":Landroid/view/WindowInsets;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1832
    .local v0, "dispatchCutout":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1835
    invoke-virtual {v1}, Landroid/view/WindowInsets;->consumeDisplayCutout()Landroid/view/WindowInsets;

    move-result-object v1

    .line 1837
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 1838
    return-void
.end method

.method public dispatchCheckFocus()V
    .locals 2

    .line 8104
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8106
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 8108
    :cond_0
    return-void
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 8065
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8066
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 8067
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8068
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8069
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .line 4020
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputStage;->onDetachedFromWindow()V

    .line 4021
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_0

    .line 4022
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->dispatchOnWindowAttachedChange(Z)V

    .line 4023
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4026
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 4027
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 4029
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    .line 4031
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 4033
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 4035
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4037
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 4038
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4039
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v0, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 4041
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 4043
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v1, :cond_1

    .line 4044
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 4045
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-virtual {v1}, Landroid/view/InputQueue;->dispose()V

    .line 4046
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 4047
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 4049
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v1, :cond_2

    .line 4050
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->dispose()V

    .line 4051
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 4054
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4056
    goto :goto_0

    .line 4055
    :catch_0
    move-exception v1

    .line 4060
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_3

    .line 4061
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 4062
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 4065
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 4067
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 4068
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 8073
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 8074
    const/16 v0, 0x10

    .line 8075
    .local v0, "what":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    goto :goto_0

    .line 8077
    .end local v0    # "what":I
    :cond_0
    const/16 v0, 0xf

    .line 8079
    .restart local v0    # "what":I
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 8080
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8081
    return-void
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .line 8010
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 8011
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8012
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7960
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V

    .line 7961
    return-void
.end method

.method public dispatchInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;)V
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;

    .line 7964
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 7965
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 7966
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 7967
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 7968
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7969
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7970
    return-void
.end method

.method public dispatchInvalidateDelayed(Landroid/view/View;J)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMilliseconds"    # J

    .line 7933
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7934
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7935
    return-void
.end method

.method public dispatchInvalidateOnAnimation(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 7944
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addView(Landroid/view/View;)V

    .line 7945
    return-void
.end method

.method public dispatchInvalidateRectDelayed(Landroid/view/View$AttachInfo$InvalidateInfo;J)V
    .locals 2
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;
    .param p2, "delayMilliseconds"    # J

    .line 7939
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7940
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7941
    return-void
.end method

.method public dispatchInvalidateRectOnAnimation(Landroid/view/View$AttachInfo$InvalidateInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 7948
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInvalidateOnAnimationRunnable:Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl$InvalidateOnAnimationRunnable;->addViewRect(Landroid/view/View$AttachInfo$InvalidateInfo;)V

    .line 7949
    return-void
.end method

.method public dispatchKeyFromAutofill(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 7985
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7986
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7987
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7988
    return-void
.end method

.method public dispatchKeyFromIme(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 7979
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7980
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7981
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7982
    return-void
.end method

.method public dispatchMoved(II)V
    .locals 5
    .param p1, "newX"    # I
    .param p2, "newY"    # I

    .line 7466
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_0

    .line 7467
    new-instance v0, Landroid/graphics/PointF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 7468
    .local v0, "point":Landroid/graphics/PointF;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 7469
    iget v1, v0, Landroid/graphics/PointF;->x:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    .line 7470
    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-int p2, v1

    .line 7472
    .end local v0    # "point":Landroid/graphics/PointF;
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 7473
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7474
    return-void
.end method

.method public dispatchPointerCaptureChanged(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 8116
    const/16 v0, 0x1c

    .line 8117
    .local v0, "what":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8118
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 8119
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 8120
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8121
    return-void
.end method

.method public dispatchRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 8111
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x1a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 8112
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 8113
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 4
    .param p1, "seq"    # I
    .param p2, "globalVisibility"    # I
    .param p3, "localValue"    # I
    .param p4, "localChanges"    # I

    .line 8095
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 8096
    .local v0, "args":Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 8097
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 8098
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 8099
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 8100
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v3, 0x11

    invoke-virtual {v2, v3, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8101
    return-void
.end method

.method public dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7997
    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 7998
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    invoke-static {v0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 8000
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->synthesizeInputEvent(Landroid/view/InputEvent;)V

    .line 8001
    return-void
.end method

.method public dispatchUnhandledKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 8506
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mUnhandledKeyManager:Landroid/view/ViewRootImpl$UnhandledKeyManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$UnhandledKeyManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchWindowShown()V
    .locals 2

    .line 8061
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendEmptyMessage(I)Z

    .line 8062
    return-void
.end method

.method doConsumeBatchedInput(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .line 7775
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_1

    .line 7776
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7777
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    if-eqz v0, :cond_0

    .line 7778
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;->consumeBatchedInputEvents(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 7785
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 7788
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    .line 7790
    :cond_1
    return-void
.end method

.method doDie()V
    .locals 5

    .line 7329
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7331
    monitor-enter p0

    .line 7332
    :try_start_0
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    if-eqz v0, :cond_0

    .line 7333
    monitor-exit p0

    return-void

    .line 7335
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    .line 7336
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    .line 7337
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 7340
    :cond_1
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v1, :cond_6

    .line 7341
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 7343
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_6

    .line 7344
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 7345
    .local v1, "viewVisibility":I
    iget v3, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v3, v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 7346
    .local v0, "viewVisibilityChanged":Z
    :goto_0
    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_3

    if-eqz v0, :cond_5

    .line 7351
    :cond_3
    :try_start_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v3, v1, v2}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 7353
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7356
    :cond_4
    goto :goto_1

    .line 7355
    :catch_0
    move-exception v3

    .line 7359
    :cond_5
    :goto_1
    :try_start_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 7363
    .end local v0    # "viewVisibilityChanged":Z
    .end local v1    # "viewVisibility":I
    :cond_6
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 7364
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7365
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/WindowManagerGlobal;->doRemoveView(Landroid/view/ViewRootImpl;)V

    .line 7366
    return-void

    .line 7364
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method doProcessInputEvents()V
    .locals 12

    .line 7623
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 7624
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7625
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7626
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 7627
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7629
    :cond_0
    iput-object v3, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7631
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 7632
    const-wide/16 v4, 0x4

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v6, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v4, v5, v2, v6}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7635
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    invoke-virtual {v2}, Landroid/view/InputEvent;->getEventTimeNano()J

    move-result-wide v4

    .line 7636
    .local v4, "eventTime":J
    move-wide v6, v4

    .line 7637
    .local v6, "oldestEventTime":J
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_6

    .line 7638
    iget-object v2, v0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    check-cast v2, Landroid/view/MotionEvent;

    .line 7639
    .local v2, "me":Landroid/view/MotionEvent;
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    if-lez v8, :cond_1

    .line 7640
    invoke-virtual {v2, v1}, Landroid/view/MotionEvent;->getHistoricalEventTimeNano(I)J

    move-result-wide v6

    .line 7644
    :cond_1
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_5

    .line 7645
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 7646
    .local v1, "action":I
    if-nez v1, :cond_3

    .line 7647
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 7648
    .local v8, "now":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v10, v8, v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") doProcessInputEvents ACTION_DOWN"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7649
    .local v3, "msg":Ljava/lang/String;
    sget-boolean v10, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v10, :cond_2

    .line 7650
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7652
    :cond_2
    const-string v10, "APP_LAUNCH_START"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7653
    .end local v3    # "msg":Ljava/lang/String;
    .end local v8    # "now":J
    goto :goto_1

    :cond_3
    if-ne v1, v3, :cond_5

    .line 7654
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 7655
    .restart local v8    # "now":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v10, v8, v10

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, ") doProcessInputEvents ACTION_UP"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7656
    .restart local v3    # "msg":Ljava/lang/String;
    sget-boolean v10, Landroid/os/Build;->AUTO_TEST_ONEPLUS:Z

    if-eqz v10, :cond_4

    .line 7657
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    float-to-int v11, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 7659
    :cond_4
    const-string v10, "APP_LAUNCH"

    invoke-static {v10, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7666
    .end local v1    # "action":I
    .end local v3    # "msg":Ljava/lang/String;
    .end local v8    # "now":J
    :cond_5
    :goto_1
    sget-boolean v1, Landroid/view/ViewRootImpl;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v1, :cond_6

    .line 7667
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mForceGetX:Z

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mForceGetY:Z

    iget v8, p0, Landroid/view/ViewRootImpl;->mTouchOffSet:I

    invoke-virtual {v2, v1, v3, v8}, Landroid/view/MotionEvent;->forceGetXY(ZZI)V

    .line 7671
    .end local v2    # "me":Landroid/view/MotionEvent;
    :cond_6
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v1, v1, Landroid/view/Choreographer;->mFrameInfo:Landroid/view/FrameInfo;

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/FrameInfo;->updateInputEventTime(JJ)V

    .line 7673
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl;->deliverInputEvent(Landroid/view/ViewRootImpl$QueuedInputEvent;)V

    .line 7674
    .end local v0    # "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    .end local v4    # "eventTime":J
    .end local v6    # "oldestEventTime":J
    goto/16 :goto_0

    .line 7678
    :cond_7
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    if-eqz v0, :cond_8

    .line 7679
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 7680
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 7682
    :cond_8
    return-void
.end method

.method doTraversal()V
    .locals 3

    .line 1627
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_1

    .line 1628
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1629
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v1

    iget v2, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v1, v2}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1631
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_0

    .line 1632
    const-string v1, "ViewAncestor"

    invoke-static {v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 1635
    :cond_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 1637
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v1, :cond_1

    .line 1638
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 1639
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1642
    :cond_1
    return-void
.end method

.method drawPending()V
    .locals 1

    .line 3264
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3265
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 7232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7233
    .local v0, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "ViewRoot:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7234
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAdded="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7235
    const-string v1, " mRemoved="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mRemoved:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7236
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7237
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7238
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mConsumeBatchedInputImmediatelyScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7239
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7240
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPendingInputEventCount="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7241
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 7242
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mProcessInputEventsScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7243
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 7244
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTraversalScheduled="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7245
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7246
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsAmbientMode="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 7247
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 7248
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_0

    .line 7249
    const-string v1, " (barrier="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ")"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 7251
    :cond_0
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 7253
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-virtual {v1, v0, p3}, Landroid/view/ViewRootImpl$InputStage;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7255
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v1, p1, p3}, Landroid/view/Choreographer;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 7257
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "View Hierarchy:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 7258
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p3, v1}, Landroid/view/ViewRootImpl;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 7259
    return-void
.end method

.method public dumpGfxInfo([I)V
    .locals 2
    .param p1, "info"    # [I

    .line 7283
    const/4 v0, 0x0

    const/4 v1, 0x1

    aput v0, p1, v1

    aput v0, p1, v0

    .line 7284
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7285
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 7287
    :cond_0
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7580
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    .line 7581
    return-void
.end method

.method enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V
    .locals 6
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "receiver"    # Landroid/view/InputEventReceiver;
    .param p3, "flags"    # I
    .param p4, "processImmediately"    # Z

    .line 7585
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->adjustInputEventForCompatibility(Landroid/view/InputEvent;)V

    .line 7586
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewRootImpl;->obtainQueuedInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;I)Landroid/view/ViewRootImpl$QueuedInputEvent;

    move-result-object v0

    .line 7593
    .local v0, "q":Landroid/view/ViewRootImpl$QueuedInputEvent;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7594
    .local v1, "last":Landroid/view/ViewRootImpl$QueuedInputEvent;
    if-nez v1, :cond_0

    .line 7595
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventHead:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7596
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    goto :goto_0

    .line 7598
    :cond_0
    iput-object v0, v1, Landroid/view/ViewRootImpl$QueuedInputEvent;->mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7599
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEventTail:Landroid/view/ViewRootImpl$QueuedInputEvent;

    .line 7601
    :goto_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    .line 7602
    const-wide/16 v2, 0x4

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;

    iget v5, p0, Landroid/view/ViewRootImpl;->mPendingInputEventCount:I

    invoke-static {v2, v3, v4, v5}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 7605
    if-eqz p4, :cond_1

    .line 7606
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_1

    .line 7608
    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->scheduleProcessInputEvents()V

    .line 7610
    :goto_1
    return-void
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .param p1, "inTouchMode"    # Z

    .line 4548
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4552
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4555
    nop

    .line 4558
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v0

    return v0

    .line 4553
    :catch_0
    move-exception v0

    .line 4554
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 7209
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7210
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 7211
    const/4 v0, 0x0

    return-object v0

    .line 7213
    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 3986
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3987
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3988
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3989
    sget-boolean v0, Landroid/view/ViewRootImpl;->sAlwaysAssignFocus:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v0, :cond_2

    .line 3990
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3996
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3997
    .local v0, "focused":Landroid/view/View;
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 3998
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 3999
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v2

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_2

    .line 4000
    invoke-static {p1, v0}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4001
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 4006
    .end local v0    # "focused":Landroid/view/View;
    .end local v1    # "group":Landroid/view/ViewGroup;
    :cond_2
    :goto_0
    return-void
.end method

.method public getAccessibilityFocusedHost()Landroid/view/View;
    .locals 1

    .line 3881
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    return-object v0
.end method

.method public getAccessibilityFocusedVirtualView()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 1

    .line 3888
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    return-object v0
.end method

.method public getAccessibilityInteractionController()Landroid/view/AccessibilityInteractionController;
    .locals 2

    .line 7091
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7095
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    if-nez v0, :cond_0

    .line 7096
    new-instance v0, Landroid/view/AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    .line 7098
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/AccessibilityInteractionController;

    return-object v0

    .line 7092
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;
    .param p3, "offset"    # Landroid/graphics/Point;

    .line 1554
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 1559
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0

    .line 1555
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDisplayId()I
    .locals 1

    .line 1054
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 1078
    iget v0, p0, Landroid/view/ViewRootImpl;->mHeight:I

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .line 1567
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_1
    return v0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .param p1, "outLocation"    # Landroid/graphics/Point;

    .line 7018
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 7019
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 7020
    return-void
.end method

.method public getLastTouchSource()I
    .locals 1

    .line 7023
    iget v0, p0, Landroid/view/ViewRootImpl;->mLastTouchSource:I

    return v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 8332
    const/4 v0, 0x0

    return v0
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .line 1218
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .line 1549
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentForAccessibility()Landroid/view/ViewParent;
    .locals 1

    .line 3981
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextAlignment()I
    .locals 1

    .line 8362
    const/4 v0, 0x1

    return v0
.end method

.method public getTextDirection()I
    .locals 1

    .line 8347
    const/4 v0, 0x1

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1058
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1214
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 1068
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    return v0
.end method

.method public getWindowFlags()I
    .locals 1

    .line 1050
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    return v0
.end method

.method getWindowInsets(Z)Landroid/view/WindowInsets;
    .locals 12
    .param p1, "forceConstruct"    # Z

    .line 1783
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    .line 1784
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1785
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1786
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v0}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    .line 1788
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDispatchContentInsets:Landroid/graphics/Rect;

    .line 1789
    .local v0, "contentInsets":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDispatchStableInsets:Landroid/graphics/Rect;

    .line 1790
    .local v1, "stableInsets":Landroid/graphics/Rect;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mDispatchDisplayCutout:Landroid/view/DisplayCutout;

    .line 1793
    .local v2, "displayCutout":Landroid/view/DisplayCutout;
    if-nez p1, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1794
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1795
    invoke-virtual {v3, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    .line 1796
    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1797
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 1798
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    .line 1799
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v3}, Landroid/view/DisplayCutout$ParcelableWrapper;->get()Landroid/view/DisplayCutout;

    move-result-object v2

    .line 1801
    .end local v2    # "displayCutout":Landroid/view/DisplayCutout;
    .local v9, "displayCutout":Landroid/view/DisplayCutout;
    :cond_2
    move-object v9, v2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v10, v2, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;

    .line 1802
    .local v10, "outsets":Landroid/graphics/Rect;
    iget v2, v10, Landroid/graphics/Rect;->left:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->top:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->right:I

    if-gtz v2, :cond_3

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_4

    .line 1803
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v10, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v2

    .line 1807
    :cond_4
    const-string v2, "content"

    invoke-direct {p0, v0, v2}, Landroid/view/ViewRootImpl;->ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1808
    const-string/jumbo v2, "stable"

    invoke-direct {p0, v1, v2}, Landroid/view/ViewRootImpl;->ensureInsetsNonNegative(Landroid/graphics/Rect;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1809
    new-instance v11, Landroid/view/WindowInsets;

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 1811
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v6

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v7, v2, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    move-object v2, v11

    move-object v3, v0

    move-object v5, v1

    move-object v8, v9

    invoke-direct/range {v2 .. v8}, Landroid/view/WindowInsets;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/DisplayCutout;)V

    iput-object v11, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    .line 1814
    .end local v0    # "contentInsets":Landroid/graphics/Rect;
    .end local v1    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "displayCutout":Landroid/view/DisplayCutout;
    .end local v10    # "outsets":Landroid/graphics/Rect;
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastWindowInsets:Landroid/view/WindowInsets;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1296
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 1297
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 1298
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisibilityChanged:Z

    .line 1299
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1300
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-nez v0, :cond_0

    .line 1301
    invoke-static {}, Landroid/view/WindowManagerGlobal;->trimForeground()V

    .line 1304
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 3
    .param p1, "args"    # Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    .line 6973
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v1, :cond_0

    .line 6977
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 6978
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6979
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 6981
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    .line 6982
    :cond_1
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_2

    .line 6983
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)Z

    .line 6986
    :cond_2
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    and-int/lit8 v0, v0, 0x7

    .line 6987
    .local v0, "visibility":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    if-eq v0, v1, :cond_3

    .line 6988
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v1, Landroid/view/View$AttachInfo;->mGlobalSystemUiVisibility:I

    .line 6989
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 6991
    :cond_3
    return-void
.end method

.method public handleDispatchWindowShown()V
    .locals 1

    .line 7001
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowShown()V

    .line 7002
    return-void
.end method

.method handleGetNewSurface()V
    .locals 1

    .line 1307
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1308
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1309
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1310
    return-void
.end method

.method public handleRequestKeyboardShortcuts(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "deviceId"    # I

    .line 7005
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7006
    .local v0, "data":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7007
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/KeyboardShortcutGroup;>;"
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 7008
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v1, p2}, Landroid/view/View;->requestKeyboardShortcuts(Ljava/util/List;I)V

    .line 7010
    :cond_0
    const-string/jumbo v2, "shortcuts_array"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 7012
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7014
    goto :goto_0

    .line 7013
    :catch_0
    move-exception v2

    .line 7015
    :goto_0
    return-void
.end method

.method hasPointerCapture()Z
    .locals 1

    .line 3941
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    return v0
.end method

.method invalidate()V
    .locals 4

    .line 1415
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1416
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 1417
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1419
    :cond_0
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 1433
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    .line 1434
    return-void
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 3
    .param p1, "location"    # [I
    .param p2, "dirty"    # Landroid/graphics/Rect;

    .line 1438
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1441
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1442
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1443
    return-object v0

    .line 1444
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    if-nez v1, :cond_1

    .line 1445
    return-object v0

    .line 1448
    :cond_1
    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_5

    .line 1449
    :cond_2
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1450
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 1451
    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v1, :cond_3

    .line 1452
    const/4 v1, 0x0

    iget v2, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 1454
    :cond_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 1455
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 1457
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v1, :cond_5

    .line 1458
    const/4 v1, -0x1

    invoke-virtual {p2, v1, v1}, Landroid/graphics/Rect;->inset(II)V

    .line 1462
    :cond_5
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->invalidateRectOnScreen(Landroid/graphics/Rect;)V

    .line 1464
    return-object v0
.end method

.method invalidateWorld(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1422
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 1423
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1424
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 1425
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1426
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    .line 1425
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1429
    .end local v0    # "parent":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method isInLayout()Z
    .locals 1

    .line 2930
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mInLayout:Z

    return v0
.end method

.method public isLayoutDirectionResolved()Z
    .locals 1

    .line 8327
    const/4 v0, 0x1

    return v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .line 1403
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public isTextAlignmentResolved()Z
    .locals 1

    .line 8357
    const/4 v0, 0x1

    return v0
.end method

.method public isTextDirectionResolved()Z
    .locals 1

    .line 8342
    const/4 v0, 0x1

    return v0
.end method

.method public keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 7222
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7223
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/view/FocusFinder;->findNextKeyboardNavigationCluster(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public loadSystemProperties()V
    .locals 2

    .line 7374
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    new-instance v1, Landroid/view/ViewRootImpl$4;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$4;-><init>(Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7398
    return-void
.end method

.method public notifyChildRebuilt()V
    .locals 2

    .line 782
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 787
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 788
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 790
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_1

    .line 791
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 792
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 793
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v1}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 795
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 798
    :goto_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 799
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 800
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_2

    .line 801
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 804
    :cond_2
    return-void
.end method

.method notifyRendererOfFramePending()V
    .locals 1

    .line 1598
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1599
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->notifyFramePending()V

    .line 1601
    :cond_0
    return-void
.end method

.method public notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Landroid/view/View;
    .param p3, "changeType"    # I

    .line 8317
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-direct {p0, v0, p3}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback(Landroid/view/View;I)V

    .line 8318
    return-void
.end method

.method public onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "descendant"    # Landroid/view/View;

    .line 1408
    iget v0, p2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 1411
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 1412
    return-void
.end method

.method public onMovedToDisplay(ILandroid/content/res/Configuration;)V
    .locals 2
    .param p1, "displayId"    # I
    .param p2, "config"    # Landroid/content/res/Configuration;

    .line 1359
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1360
    return-void

    .line 1365
    :cond_0
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 1366
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1365
    invoke-virtual {v0, p1, v1}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 1367
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    iput v1, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1369
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, v1, p2}, Landroid/view/View;->dispatchMovedToDisplay(Landroid/view/Display;Landroid/content/res/Configuration;)V

    .line 1370
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 8458
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 8463
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPrePerformAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "target"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .line 8468
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 8454
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 8450
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8445
    return-void
.end method

.method public onPostDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 3179
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->drawAccessibilityFocusedDrawableIfNeeded(Landroid/graphics/Canvas;)V

    .line 3180
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eqz v0, :cond_0

    .line 3181
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3182
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowCallbacks;

    invoke-interface {v1, p1}, Landroid/view/WindowCallbacks;->onPostDraw(Landroid/view/DisplayListCanvas;)V

    .line 3181
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3185
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public onPreDraw(Landroid/view/DisplayListCanvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/view/DisplayListCanvas;

    .line 3171
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3172
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/view/DisplayListCanvas;->drawColor(I)V

    .line 3174
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mHardwareXOffset:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/DisplayListCanvas;->translate(FF)V

    .line 3175
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 8436
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 0
    .param p1, "target"    # Landroid/view/View;

    .line 8441
    return-void
.end method

.method public onWindowTitleChanged()V
    .locals 2

    .line 6997
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 6998
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 3191
    iget-object v0, p1, Landroid/view/View;->mRenderNode:Landroid/view/RenderNode;

    invoke-virtual {v0}, Landroid/view/RenderNode;->output()V

    .line 3192
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 3193
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->serializeDisplayListTree()V

    .line 3195
    :cond_0
    return-void
.end method

.method pendingDrawFinished()V
    .locals 2

    .line 3268
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-eqz v0, :cond_1

    .line 3271
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    .line 3272
    iget v0, p0, Landroid/view/ViewRootImpl;->mDrawsNeededToReport:I

    if-nez v0, :cond_0

    .line 3273
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportDrawFinished()V

    .line 3275
    :cond_0
    return-void

    .line 3269
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unbalanced drawPending/pendingDrawFinished calls"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performHapticFeedback(IZ)Z
    .locals 2
    .param p1, "effectId"    # I
    .param p2, "always"    # Z

    .line 7198
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 7199
    :catch_0
    move-exception v0

    .line 7200
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    return v1
.end method

.method public playSoundEffect(I)V
    .locals 4
    .param p1, "effectId"    # I

    .line 7160
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 7163
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 7165
    .local v0, "audioManager":Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 7182
    new-instance v1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    .line 7170
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7171
    return-void

    .line 7176
    :pswitch_1
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7177
    return-void

    .line 7179
    :pswitch_2
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7180
    return-void

    .line 7173
    :pswitch_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7174
    return-void

    .line 7167
    :pswitch_4
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    .line 7168
    return-void

    .line 7182
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown effect id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " not defined in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v3, Landroid/view/SoundEffectConstants;

    .line 7183
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7185
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :catch_0
    move-exception v0

    .line 7187
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7188
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 7190
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method pokeDrawLockIfNeeded()V
    .locals 3

    .line 1373
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 1374
    .local v0, "displayState":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1378
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->pokeDrawLock(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    goto :goto_0

    .line 1379
    :catch_0
    move-exception v1

    .line 1383
    :cond_1
    :goto_0
    return-void
.end method

.method public profile()V
    .locals 1

    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 751
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 4010
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 4011
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 4012
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 4013
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 4014
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 4017
    :cond_0
    return-void
.end method

.method public registerAnimatingRenderNode(Landroid/view/RenderNode;)V
    .locals 2
    .param p1, "animator"    # Landroid/view/RenderNode;

    .line 1110
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerAnimatingRenderNode(Landroid/view/RenderNode;)V

    goto :goto_0

    .line 1113
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1114
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    .line 1116
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mPendingAnimatingRenderNodes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1118
    :goto_0
    return-void
.end method

.method public registerRtFrameCallback(Landroid/view/ThreadedRenderer$FrameDrawingCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 1135
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mNextRtFrameCallback:Landroid/view/ThreadedRenderer$FrameDrawingCallback;

    .line 1136
    return-void
.end method

.method public registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V
    .locals 1
    .param p1, "animator"    # Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;

    .line 1122
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_0

    .line 1123
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0, p1}, Landroid/view/ThreadedRenderer;->registerVectorDrawableAnimator(Landroid/graphics/drawable/AnimatedVectorDrawable$VectorDrawableAnimatorRT;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public removeWindowCallbacks(Landroid/view/WindowCallbacks;)V
    .locals 2
    .param p1, "callback"    # Landroid/view/WindowCallbacks;

    .line 731
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 733
    monitor-exit v0

    .line 734
    return-void

    .line 733
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeWindowStoppedCallback(Landroid/view/ViewRootImpl$WindowStoppedCallback;)V
    .locals 1
    .param p1, "c"    # Landroid/view/ViewRootImpl$WindowStoppedCallback;

    .line 1503
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1504
    return-void
.end method

.method public reportActivityRelaunched()V
    .locals 1

    .line 8836
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mActivityRelaunched:Z

    .line 8837
    return-void
.end method

.method public reportDrawFinish()V
    .locals 1

    .line 737
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowDrawCountDown:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 740
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 3966
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3967
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3968
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 8412
    if-nez p2, :cond_0

    .line 8413
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0

    .line 8415
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 8416
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8415
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 8417
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    .line 8418
    .local v0, "scrolled":Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 8419
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8420
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, v3, Landroid/view/View$AttachInfo;->mWindowTop:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 8422
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2, v3}, Landroid/view/IWindowSession;->onRectangleOnScreenRequested(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8425
    goto :goto_0

    .line 8423
    :catch_0
    move-exception v1

    .line 8426
    :goto_0
    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .param p1, "disallowIntercept"    # Z

    .line 8408
    return-void
.end method

.method public requestFitSystemWindows()V
    .locals 1

    .line 1387
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1388
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mApplyInsetsRequested:Z

    .line 1389
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1390
    return-void
.end method

.method public requestInvalidateRootRenderNode()V
    .locals 1

    .line 3753
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mInvalidateRootRequested:Z

    .line 3754
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .line 1394
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_0

    .line 1395
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1396
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1397
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1399
    :cond_0
    return-void
.end method

.method requestLayoutDuringLayout(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 2956
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2960
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2961
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequesters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2963
    :cond_1
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mHandlingLayoutInLayoutRequest:Z

    if-nez v0, :cond_2

    .line 2966
    return v1

    .line 2970
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 2958
    :cond_3
    :goto_0
    return v1
.end method

.method requestPointerCapture(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 3945
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPointerCapture:Z

    if-ne v0, p1, :cond_0

    .line 3946
    return-void

    .line 3948
    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->requestPointerCapture(Landroid/os/IBinder;Z)V

    .line 3949
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 8178
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 8183
    :cond_0
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-object v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mSource:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 8186
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->removeCallbacksAndRun()V

    .line 8191
    :cond_1
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    .line 8192
    .local v0, "eventType":I
    if-eq v0, v1, :cond_6

    const v1, 0x8000

    if-eq v0, v1, :cond_4

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 8210
    :cond_2
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    .line 8211
    .local v1, "sourceNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 8213
    .local v3, "accessibilityViewId":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 8214
    .local v4, "source":Landroid/view/View;
    if-eqz v4, :cond_3

    .line 8215
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 8216
    .local v5, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v5, :cond_3

    .line 8217
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8220
    .end local v1    # "sourceNodeId":J
    .end local v3    # "accessibilityViewId":I
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_3
    goto :goto_0

    .line 8194
    :cond_4
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getSourceNodeId()J

    move-result-wide v1

    .line 8195
    .restart local v1    # "sourceNodeId":J
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getAccessibilityViewId(J)I

    move-result v3

    .line 8197
    .restart local v3    # "accessibilityViewId":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewByAccessibilityId(I)Landroid/view/View;

    move-result-object v4

    .line 8198
    .restart local v4    # "source":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 8199
    invoke-virtual {v4}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v5

    .line 8200
    .restart local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v5, :cond_5

    .line 8201
    invoke-static {v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v6

    .line 8204
    .local v6, "virtualNodeId":I
    invoke-virtual {v5, v6}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v7

    .line 8205
    .local v7, "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    invoke-virtual {p0, v4, v7}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 8208
    .end local v1    # "sourceNodeId":J
    .end local v3    # "accessibilityViewId":I
    .end local v4    # "source":Landroid/view/View;
    .end local v5    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    .end local v6    # "virtualNodeId":I
    .end local v7    # "node":Landroid/view/accessibility/AccessibilityNodeInfo;
    :cond_5
    goto :goto_0

    .line 8224
    :cond_6
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->handleWindowContentChangedEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8227
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 8228
    const/4 v1, 0x1

    return v1

    .line 8179
    .end local v0    # "eventType":I
    :cond_7
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .param p1, "transition"    # Landroid/animation/LayoutTransition;

    .line 1584
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1585
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 1586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 1588
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 3116
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3117
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 3118
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3121
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 3122
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 3123
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 3125
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 7369
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7370
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7371
    return-void
.end method

.method scheduleConsumeBatchedInput()V
    .locals 4

    .line 7751
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-nez v0, :cond_0

    .line 7752
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7753
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7756
    :cond_0
    return-void
.end method

.method scheduleConsumeBatchedInputImmediately()V
    .locals 2

    .line 7767
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    if-nez v0, :cond_0

    .line 7768
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleConsumeBatchedInput()V

    .line 7769
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyScheduled:Z

    .line 7770
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputImmediatelyRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputImmediatelyRunnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->post(Ljava/lang/Runnable;)Z

    .line 7772
    :cond_0
    return-void
.end method

.method scheduleTraversals()V
    .locals 4

    .line 1604
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_1

    .line 1605
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1606
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    .line 1607
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1609
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mUnbufferedInputDispatch:Z

    if-nez v0, :cond_0

    .line 1610
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleConsumeBatchedInput()V

    .line 1612
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->notifyRendererOfFramePending()V

    .line 1613
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 1615
    :cond_1
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 3757
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 3758
    .local v0, "ci":Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 3759
    .local v1, "vi":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 3760
    .local v2, "scrollY":I
    const/4 v3, 0x0

    .line 3762
    .local v3, "handled":Z
    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->left:I

    const/4 v6, 0x0

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_0

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_a

    .line 3768
    :cond_0
    iget v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3775
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 3776
    .local v4, "focus":Landroid/view/View;
    if-nez v4, :cond_1

    .line 3777
    return v6

    .line 3779
    :cond_1
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    goto :goto_0

    :cond_2
    move-object v5, v7

    .line 3780
    .local v5, "lastScrolledFocus":Landroid/view/View;
    :goto_0
    if-eq v4, v5, :cond_3

    .line 3784
    const/4 p1, 0x0

    .line 3789
    :cond_3
    if-ne v4, v5, :cond_4

    iget-boolean v8, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v8, :cond_4

    if-nez p1, :cond_4

    .end local v4    # "focus":Landroid/view/View;
    .end local v5    # "lastScrolledFocus":Landroid/view/View;
    goto/16 :goto_4

    .line 3799
    .restart local v4    # "focus":Landroid/view/View;
    .restart local v5    # "lastScrolledFocus":Landroid/view/View;
    :cond_4
    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Ljava/lang/ref/WeakReference;

    .line 3800
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 3803
    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8, v7}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3808
    if-nez p1, :cond_5

    .line 3809
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3812
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    .line 3813
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v4, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_1

    .line 3821
    :cond_5
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3827
    :cond_6
    :goto_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 3831
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 3832
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_7

    goto :goto_3

    .line 3843
    :cond_7
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_8

    .line 3844
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 3854
    .end local v2    # "scrollY":I
    .local v7, "scrollY":I
    :goto_2
    move v2, v7

    goto :goto_3

    .line 3847
    .end local v7    # "scrollY":I
    .restart local v2    # "scrollY":I
    :cond_8
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_9

    .line 3848
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v7, v8

    goto :goto_2

    .line 3852
    :cond_9
    const/4 v2, 0x0

    .line 3854
    :goto_3
    const/4 v3, 0x1

    .line 3860
    .end local v4    # "focus":Landroid/view/View;
    .end local v5    # "lastScrolledFocus":Landroid/view/View;
    :cond_a
    :goto_4
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v2, v4, :cond_e

    .line 3863
    if-nez p2, :cond_c

    .line 3864
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v4, :cond_b

    .line 3865
    new-instance v4, Landroid/widget/Scroller;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 3867
    :cond_b
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v5, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v7, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v7, v2, v7

    invoke-virtual {v4, v6, v5, v6, v7}, Landroid/widget/Scroller;->startScroll(IIII)V

    goto :goto_5

    .line 3868
    :cond_c
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_d

    .line 3869
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 3871
    :cond_d
    :goto_5
    iput v2, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 3874
    :cond_e
    return v3
.end method

.method setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "node"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3894
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    const/16 v1, 0x40

    if-eqz v0, :cond_1

    .line 3896
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3897
    .local v0, "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3904
    .local v2, "focusHost":Landroid/view/View;
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3905
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3909
    invoke-virtual {v2, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 3912
    invoke-virtual {v2}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v4

    .line 3913
    .local v4, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v4, :cond_0

    .line 3915
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->getBoundsInParent(Landroid/graphics/Rect;)V

    .line 3916
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 3918
    nop

    .line 3919
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v5

    .line 3918
    invoke-static {v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->getVirtualDescendantId(J)I

    move-result v5

    .line 3920
    .local v5, "virtualNodeId":I
    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6, v3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    .line 3923
    .end local v5    # "virtualNodeId":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 3925
    .end local v0    # "focusNode":Landroid/view/accessibility/AccessibilityNodeInfo;
    .end local v2    # "focusHost":Landroid/view/View;
    .end local v4    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    if-eq v0, p1, :cond_2

    .line 3927
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->clearAccessibilityFocusNoCallbacks(I)V

    .line 3932
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedHost:Landroid/view/View;

    .line 3933
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mAccessibilityFocusedVirtualView:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 3935
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_3

    .line 3936
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    invoke-virtual {v0}, Landroid/view/ThreadedRenderer;->invalidateRoot()V

    .line 3938
    :cond_3
    return-void
.end method

.method public setActivityConfigCallback(Landroid/view/ViewRootImpl$ActivityConfigCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 721
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mActivityConfigCallback:Landroid/view/ViewRootImpl$ActivityConfigCallback;

    .line 722
    return-void
.end method

.method public setDragFocus(Landroid/view/View;Landroid/view/DragEvent;)V
    .locals 5
    .param p1, "newDragTarget"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .line 7027
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_2

    sget-boolean v0, Landroid/view/View;->sCascadedDragDrop:Z

    if-nez v0, :cond_2

    .line 7030
    iget v0, p2, Landroid/view/DragEvent;->mX:F

    .line 7031
    .local v0, "tx":F
    iget v1, p2, Landroid/view/DragEvent;->mY:F

    .line 7032
    .local v1, "ty":F
    iget v2, p2, Landroid/view/DragEvent;->mAction:I

    .line 7033
    .local v2, "action":I
    iget-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 7035
    .local v3, "td":Landroid/content/ClipData;
    const/4 v4, 0x0

    iput v4, p2, Landroid/view/DragEvent;->mX:F

    .line 7036
    iput v4, p2, Landroid/view/DragEvent;->mY:F

    .line 7037
    const/4 v4, 0x0

    iput-object v4, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 7039
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 7040
    const/4 v4, 0x6

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    .line 7041
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v4, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 7044
    :cond_0
    if-eqz p1, :cond_1

    .line 7045
    const/4 v4, 0x5

    iput v4, p2, Landroid/view/DragEvent;->mAction:I

    .line 7046
    invoke-virtual {p1, p2}, Landroid/view/View;->callDragEventHandler(Landroid/view/DragEvent;)Z

    .line 7049
    :cond_1
    iput v2, p2, Landroid/view/DragEvent;->mAction:I

    .line 7050
    iput v0, p2, Landroid/view/DragEvent;->mX:F

    .line 7051
    iput v1, p2, Landroid/view/DragEvent;->mY:F

    .line 7052
    iput-object v3, p2, Landroid/view/DragEvent;->mClipData:Landroid/content/ClipData;

    .line 7055
    .end local v0    # "tx":F
    .end local v1    # "ty":F
    .end local v2    # "action":I
    .end local v3    # "td":Landroid/content/ClipData;
    :cond_2
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 7056
    return-void
.end method

.method public setIsAmbientMode(Z)V
    .locals 0
    .param p1, "ambient"    # Z

    .line 1490
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mIsAmbientMode:Z

    .line 1491
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 11
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p2, "newView"    # Z

    .line 1222
    monitor-enter p0

    .line 1223
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1224
    .local v0, "oldInsetLeft":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1225
    .local v1, "oldInsetTop":I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 1226
    .local v2, "oldInsetRight":I
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 1227
    .local v3, "oldInsetBottom":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1228
    .local v4, "oldSoftInputMode":I
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v5, v5, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    .line 1237
    .local v5, "oldHasManualSurfaceInsets":Z
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v6, p0, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 1240
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v6, v6, 0x80

    .line 1244
    .local v6, "compatibleWindowFlag":I
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 1245
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    iput v7, p1, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1247
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v7

    iput v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1248
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    const/high16 v8, 0x80000

    and-int/2addr v7, v8

    const/4 v8, 0x1

    if-eqz v7, :cond_0

    .line 1251
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1253
    :cond_0
    iget v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    and-int/2addr v7, v8

    if-eqz v7, :cond_1

    .line 1256
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v8, v7, Landroid/view/View$AttachInfo;->mNeedsUpdateLightCenter:Z

    .line 1258
    :cond_1
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v7, :cond_2

    .line 1259
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v9, v7, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1261
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/2addr v9, v6

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1263
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v7, v7, Landroid/view/WindowManager$LayoutParams;->preservePreviousSurfaceInsets:Z

    if-eqz v7, :cond_3

    .line 1265
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1267
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iput-boolean v5, v7, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    goto :goto_0

    .line 1268
    :cond_3
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    if-ne v7, v0, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ne v7, v1, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    if-ne v7, v2, :cond_4

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    if-eq v7, v3, :cond_5

    .line 1272
    :cond_4
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mNeedsRendererSetup:Z

    .line 1275
    :cond_5
    :goto_0
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v7}, Landroid/view/ViewRootImpl;->applyKeepScreenOnFlag(Landroid/view/WindowManager$LayoutParams;)V

    .line 1277
    if-eqz p2, :cond_6

    .line 1278
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v7, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 1279
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1283
    :cond_6
    iget v7, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v7, v7, 0xf0

    if-nez v7, :cond_7

    .line 1285
    iget-object v7, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v9, v9, -0xf1

    and-int/lit16 v10, v4, 0xf0

    or-int/2addr v9, v10

    iput v9, v7, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1290
    :cond_7
    iput-boolean v8, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1291
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 1292
    .end local v0    # "oldInsetLeft":I
    .end local v1    # "oldInsetTop":I
    .end local v2    # "oldInsetRight":I
    .end local v3    # "oldInsetBottom":I
    .end local v4    # "oldSoftInputMode":I
    .end local v5    # "oldHasManualSurfaceInsets":Z
    .end local v6    # "compatibleWindowFlag":I
    monitor-exit p0

    .line 1293
    return-void

    .line 1292
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6871
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 6872
    return-void
.end method

.method public setPausedForTransition(Z)V
    .locals 0
    .param p1, "paused"    # Z

    .line 1544
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mPausedForTransition:Z

    .line 1545
    return-void
.end method

.method public setReportNextDraw()V
    .locals 0

    .line 8488
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->reportNextDraw()V

    .line 8489
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 8490
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 24
    .param p1, "view"    # Landroid/view/View;
    .param p2, "attrs"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "panelParentView"    # Landroid/view/View;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 810
    monitor-enter p0

    .line 811
    :try_start_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_18

    .line 812
    iput-object v2, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 814
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    iput v3, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 815
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v3, v1, Landroid/view/ViewRootImpl;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0, v3, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 817
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    .line 818
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v0, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 819
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v3, p2

    :try_start_1
    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 820
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 821
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    iput-object v4, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 823
    :cond_0
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object v3, v0

    .line 824
    .end local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .local v3, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->setTag()V

    .line 832
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mClientWindowLayoutFlags:I

    .line 834
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 836
    instance-of v0, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    .line 837
    move-object v0, v2

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 838
    invoke-interface {v0}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 839
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v0, :cond_1

    .line 840
    new-instance v0, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 841
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v0, v5}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 842
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    invoke-virtual {v0, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 848
    :cond_1
    iget-boolean v0, v3, Landroid/view/WindowManager$LayoutParams;->hasManualSurfaceInsets:Z

    const/4 v6, 0x1

    if-nez v0, :cond_2

    .line 849
    invoke-virtual {v3, v2, v5, v6}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    .line 852
    :cond_2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 853
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    move-object v7, v0

    .line 854
    .local v7, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v0

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 857
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v0, :cond_4

    .line 860
    invoke-direct {v1, v3}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 861
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    if-eqz v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    .line 863
    .local v0, "useMTRenderer":Z
    :goto_0
    iget-boolean v8, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    if-eq v8, v0, :cond_4

    .line 866
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->endDragResizing()V

    .line 867
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mUseMTRenderer:Z

    .line 871
    .end local v0    # "useMTRenderer":Z
    :cond_4
    const/4 v0, 0x0

    .line 872
    .local v0, "restore":Z
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v8, :cond_5

    .line 873
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v8, v9}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 874
    const/4 v0, 0x1

    .line 875
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 876
    iget-object v8, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v8, v3}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 880
    :cond_5
    move v8, v0

    .end local v0    # "restore":Z
    .local v8, "restore":Z
    invoke-virtual {v7}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v0

    if-nez v0, :cond_6

    .line 881
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v0, v0, 0x80

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 882
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 885
    :cond_6
    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 886
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 887
    const/4 v0, -0x1

    iput v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 888
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 889
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v9, :cond_7

    move v9, v6

    goto :goto_1

    :cond_7
    move v9, v5

    :goto_1
    iput-boolean v9, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 890
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 891
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_8
    iget-object v9, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v9, v9, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    :goto_2
    iput v9, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 892
    if-eqz p3, :cond_9

    .line 893
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 894
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v10

    iput-object v10, v0, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 896
    :cond_9
    iput-boolean v6, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 902
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 903
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    .line 905
    new-instance v0, Landroid/view/InputChannel;

    invoke-direct {v0}, Landroid/view/InputChannel;-><init>()V

    iput-object v0, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 907
    :cond_a
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_b

    move v0, v6

    goto :goto_3

    :cond_b
    move v0, v5

    :goto_3
    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mForceDecorViewVisibility:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 910
    :try_start_2
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v0, v1, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 911
    iget-object v0, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v6, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 912
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->collectViewAttributes()Z

    .line 913
    iget-object v10, v1, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    iget-object v11, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v12, v1, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v13, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 914
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v14

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v15

    iget-object v0, v1, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mOutsets:Landroid/graphics/Rect;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v22, v7

    :try_start_3
    iget-object v7, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .end local v7    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v22, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    iget-object v7, v7, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v9, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 913
    move-object/from16 v16, v0

    move-object/from16 v17, v6

    move-object/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v9

    invoke-interface/range {v10 .. v21}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayCutout$ParcelableWrapper;Landroid/view/InputChannel;)I

    move-result v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 927
    .local v0, "res":I
    if-eqz v8, :cond_c

    .line 928
    :try_start_4
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 932
    :cond_c
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_d

    .line 933
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 935
    :cond_d
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 936
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 937
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingStableInsets:Landroid/graphics/Rect;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 938
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mDisplayCutout:Landroid/view/DisplayCutout$ParcelableWrapper;

    invoke-virtual {v4, v5}, Landroid/view/DisplayCutout$ParcelableWrapper;->set(Landroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 939
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 940
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_e

    const/4 v5, 0x1

    goto :goto_4

    :cond_e
    const/4 v5, 0x0

    :goto_4
    iput-boolean v5, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    .line 942
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mAlwaysConsumeNavBar:Z

    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mPendingAlwaysConsumeNavBar:Z

    .line 944
    if-gez v0, :cond_f

    .line 945
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v5, 0x0

    iput-object v5, v4, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 946
    const/4 v4, 0x0

    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 947
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v4, v5}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 948
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 949
    invoke-virtual {v1, v5, v5}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 950
    packed-switch v0, :pswitch_data_0

    .line 988
    new-instance v4, Ljava/lang/RuntimeException;

    goto/16 :goto_5

    .line 953
    :pswitch_0
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not valid; is your activity running?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 957
    :pswitch_1
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not for an application"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 961
    :pswitch_2
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- app for token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is exiting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 965
    :pswitch_3
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " has already been added"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 971
    :pswitch_4
    monitor-exit p0

    return-void

    .line 973
    :pswitch_5
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- another window of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 977
    :pswitch_6
    new-instance v4, Landroid/view/WindowManager$BadTokenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- permission denied for window type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 981
    :pswitch_7
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- the specified display can not be found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 984
    :pswitch_8
    new-instance v4, Landroid/view/WindowManager$InvalidDisplayException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " -- the specified window type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not valid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/WindowManager$InvalidDisplayException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 988
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to add window -- unknown error code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 992
    :cond_f
    instance-of v4, v2, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v4, :cond_10

    .line 993
    move-object v4, v2

    check-cast v4, Lcom/android/internal/view/RootViewSurfaceTaker;

    .line 994
    invoke-interface {v4}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v4

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 996
    :cond_10
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v4, :cond_12

    .line 997
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v4, :cond_11

    .line 998
    new-instance v4, Landroid/view/InputQueue;

    invoke-direct {v4}, Landroid/view/InputQueue;-><init>()V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 999
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v4, v5}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 1001
    :cond_11
    new-instance v4, Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    iget-object v5, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 1002
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v1, v5, v6}, Landroid/view/ViewRootImpl$WindowInputEventReceiver;-><init>(Landroid/view/ViewRootImpl;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputEventReceiver:Landroid/view/ViewRootImpl$WindowInputEventReceiver;

    .line 1005
    :cond_12
    invoke-virtual {v2, v1}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 1006
    and-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_13

    const/4 v4, 0x1

    goto :goto_6

    :cond_13
    const/4 v4, 0x0

    :goto_6
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 1007
    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_14

    const/4 v4, 0x1

    goto :goto_7

    :cond_14
    const/4 v4, 0x0

    :goto_7
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 1009
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1010
    iget-object v4, v1, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 1013
    :cond_15
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    if-nez v4, :cond_16

    .line 1014
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 1018
    :cond_16
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    .line 1019
    .local v4, "counterSuffix":Ljava/lang/CharSequence;
    new-instance v5, Landroid/view/ViewRootImpl$SyntheticInputStage;

    invoke-direct {v5, v1}, Landroid/view/ViewRootImpl$SyntheticInputStage;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v5, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 1020
    new-instance v5, Landroid/view/ViewRootImpl$ViewPostImeInputStage;

    iget-object v6, v1, Landroid/view/ViewRootImpl;->mSyntheticInputStage:Landroid/view/ViewRootImpl$InputStage;

    invoke-direct {v5, v1, v6}, Landroid/view/ViewRootImpl$ViewPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 1021
    .local v5, "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v6, Landroid/view/ViewRootImpl$NativePostImeInputStage;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "aq:native-post-ime:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v1, v5, v7}, Landroid/view/ViewRootImpl$NativePostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 1023
    .local v6, "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v7, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;

    invoke-direct {v7, v1, v6}, Landroid/view/ViewRootImpl$EarlyPostImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 1024
    .local v7, "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v9, Landroid/view/ViewRootImpl$ImeInputStage;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "aq:ime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v1, v7, v10}, Landroid/view/ViewRootImpl$ImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 1026
    .local v9, "imeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v10, Landroid/view/ViewRootImpl$ViewPreImeInputStage;

    invoke-direct {v10, v1, v9}, Landroid/view/ViewRootImpl$ViewPreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;)V

    .line 1027
    .local v10, "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    new-instance v11, Landroid/view/ViewRootImpl$NativePreImeInputStage;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "aq:native-pre-ime:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v1, v10, v12}, Landroid/view/ViewRootImpl$NativePreImeInputStage;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$InputStage;Ljava/lang/String;)V

    .line 1030
    .local v11, "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    iput-object v11, v1, Landroid/view/ViewRootImpl;->mFirstInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 1031
    iput-object v7, v1, Landroid/view/ViewRootImpl;->mFirstPostImeInputStage:Landroid/view/ViewRootImpl$InputStage;

    .line 1032
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "aq:pending:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/view/ViewRootImpl;->mPendingInputEventQueueLengthCounterName:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .end local v0    # "res":I
    .end local v4    # "counterSuffix":Ljava/lang/CharSequence;
    .end local v5    # "viewPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v6    # "nativePostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v7    # "earlyPostImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v8    # "restore":Z
    .end local v9    # "imeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v10    # "viewPreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v11    # "nativePreImeStage":Landroid/view/ViewRootImpl$InputStage;
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    goto :goto_a

    .line 917
    .restart local v8    # "restore":Z
    .restart local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :catch_0
    move-exception v0

    goto :goto_8

    .line 927
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v7, "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :catchall_0
    move-exception v0

    move-object/from16 v22, v7

    .end local v7    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    goto :goto_9

    .line 917
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local v7    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :catch_1
    move-exception v0

    move-object/from16 v22, v7

    .line 918
    .end local v7    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    :goto_8
    const/4 v4, 0x0

    :try_start_5
    iput-boolean v4, v1, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 919
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 920
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v4, v5, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 921
    iput-object v4, v1, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 922
    iget-object v5, v1, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v5, v4}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 923
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 924
    invoke-virtual {v1, v4, v4}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 925
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Adding window failed"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 927
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_1
    move-exception v0

    :goto_9
    if-eqz v8, :cond_17

    .line 928
    :try_start_6
    invoke-virtual {v3}, Landroid/view/WindowManager$LayoutParams;->restore()V

    :cond_17
    throw v0

    .line 1034
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .end local v8    # "restore":Z
    .end local v22    # "compatibilityInfo":Landroid/content/res/CompatibilityInfo;
    .restart local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_18
    move-object/from16 v3, p2

    .end local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_a
    monitor-exit p0

    .line 1035
    return-void

    .line 1034
    .end local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :catchall_2
    move-exception v0

    move-object/from16 v3, p2

    .end local p2    # "attrs":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_b
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_b

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method setWindowStopped(Z)V
    .locals 3
    .param p1, "stopped"    # Z

    .line 1507
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_3

    .line 1508
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 1509
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mThreadedRenderer:Landroid/view/ThreadedRenderer;

    .line 1510
    .local v0, "renderer":Landroid/view/ThreadedRenderer;
    if-eqz v0, :cond_0

    .line 1512
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->setStopped(Z)V

    .line 1514
    :cond_0
    iget-boolean v1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v1, :cond_1

    .line 1515
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0

    .line 1517
    :cond_1
    if-eqz v0, :cond_2

    .line 1518
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ThreadedRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 1522
    :cond_2
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1523
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowStoppedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$WindowStoppedCallback;

    invoke-interface {v2, p1}, Landroid/view/ViewRootImpl$WindowStoppedCallback;->windowStopped(Z)V

    .line 1522
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1535
    .end local v0    # "renderer":Landroid/view/ThreadedRenderer;
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;

    .line 8149
    const/4 v0, 0x0

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;FF)Z
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 8154
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .line 8159
    const/4 v0, 0x0

    return-object v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .param p1, "originalView"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;
    .param p3, "type"    # I

    .line 8165
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthesizeInputEvent(Landroid/view/InputEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 7973
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 7974
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 7975
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 7976
    return-void
.end method

.method transformMatrixToGlobal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .line 1769
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1770
    return-void
.end method

.method transformMatrixToLocal(Landroid/graphics/Matrix;)V
    .locals 2
    .param p1, "m"    # Landroid/graphics/Matrix;

    .line 1779
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    neg-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mWindowTop:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1780
    return-void
.end method

.method unscheduleConsumeBatchedInput()V
    .locals 4

    .line 7759
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    if-eqz v0, :cond_0

    .line 7760
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mConsumeBatchedInputScheduled:Z

    .line 7761
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mConsumedBatchedInputRunnable:Landroid/view/ViewRootImpl$ConsumeBatchedInputRunnable;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 7764
    :cond_0
    return-void
.end method

.method unscheduleTraversals()V
    .locals 4

    .line 1618
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 1619
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 1620
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Landroid/view/ViewRootImpl;->mTraversalBarrier:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 1621
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mChoreographer:Landroid/view/Choreographer;

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTraversalRunnable:Landroid/view/ViewRootImpl$TraversalRunnable;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 1624
    :cond_0
    return-void
.end method

.method public updateConfiguration(I)V
    .locals 6
    .param p1, "newDisplayId"    # I

    .line 4125
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4126
    return-void

    .line 4132
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4133
    .local v0, "localResources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 4136
    .local v1, "config":Landroid/content/res/Configuration;
    const/4 v2, -0x1

    if-eq p1, v2, :cond_1

    .line 4137
    invoke-virtual {p0, p1, v1}, Landroid/view/ViewRootImpl;->onMovedToDisplay(ILandroid/content/res/Configuration;)V

    .line 4141
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mForceNextConfigUpdate:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    if-eqz v2, :cond_4

    .line 4143
    :cond_2
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 4144
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 4143
    invoke-virtual {v2, v3, v0}, Landroid/app/ResourcesManager;->getAdjustedDisplay(ILandroid/content/res/Resources;)Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 4146
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    .line 4147
    .local v2, "lastLayoutDirection":I
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    .line 4148
    .local v3, "currentLayoutDirection":I
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mLastConfigurationFromResources:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4149
    if-eq v2, v3, :cond_3

    iget v4, p0, Landroid/view/ViewRootImpl;->mViewLayoutDirectionInitial:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 4151
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutDirection(I)V

    .line 4153
    :cond_3
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4159
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mForceNextWindowRelayout:Z

    .line 4160
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 4162
    .end local v2    # "lastLayoutDirection":I
    .end local v3    # "currentLayoutDirection":I
    :cond_4
    return-void
.end method

.method public updatePointerIcon(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 8084
    const/16 v0, 0x1b

    .line 8085
    .local v0, "what":I
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->removeMessages(I)V

    .line 8086
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 8087
    .local v11, "now":J
    const-wide/16 v3, 0x0

    const/4 v7, 0x7

    const/4 v10, 0x0

    move-wide v5, v11

    move v8, p1

    move v9, p2

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 8089
    .local v1, "event":Landroid/view/MotionEvent;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2, v1}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 8090
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v3, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8091
    return-void
.end method

.method public windowFocusChanged(ZZ)V
    .locals 5
    .param p1, "hasFocus"    # Z
    .param p2, "inTouchMode"    # Z

    .line 8017
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x3c

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 8019
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 8020
    :try_start_0
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 8021
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowCallbacks;

    invoke-interface {v4, p1}, Landroid/view/WindowCallbacks;->onWindowFocusChangedFromViewRoot(Z)V

    .line 8020
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 8023
    .end local v3    # "i":I
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 8030
    :cond_1
    :goto_1
    sget-boolean v1, Landroid/view/ViewRootImpl;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v1, :cond_5

    .line 8032
    const-string v1, "com.android.systemui"

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mBasePackageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8033
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 8034
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    const-string v3, "StatusBar"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8035
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mIsKeyguard:Z

    goto :goto_2

    .line 8037
    :cond_2
    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsKeyguard:Z

    .line 8041
    :cond_3
    :goto_2
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_GESTURE_BUTTON:Z

    if-eqz v1, :cond_4

    .line 8042
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[GESTURE_BUTTON] tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8046
    :cond_4
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    const/16 v2, 0x1e6c

    invoke-virtual {v1, v2}, Landroid/view/ViewRootImpl$ViewRootHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 8050
    :cond_5
    monitor-enter p0

    .line 8051
    :try_start_1
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowFocusChanged:Z

    .line 8052
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mUpcomingWindowFocus:Z

    .line 8053
    iput-boolean p2, p0, Landroid/view/ViewRootImpl;->mUpcomingInTouchMode:Z

    .line 8054
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8055
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 8056
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 8057
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mHandler:Landroid/view/ViewRootImpl$ViewRootHandler;

    invoke-virtual {v1, v0}, Landroid/view/ViewRootImpl$ViewRootHandler;->sendMessage(Landroid/os/Message;)Z

    .line 8058
    return-void

    .line 8054
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
