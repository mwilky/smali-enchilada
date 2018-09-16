.class Lcom/android/server/wm/WindowState;
.super Lcom/android/server/wm/WindowContainer;
.source "WindowState.java"

# interfaces
.implements Lcom/android/server/policy/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$MoveAnimationSpec;,
        Lcom/android/server/wm/WindowState$WindowId;,
        Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;,
        Lcom/android/server/wm/WindowState$DeathRecipient;,
        Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;,
        Lcom/android/server/wm/WindowState$PowerManagerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowState;",
        ">;",
        "Lcom/android/server/policy/WindowManagerPolicy$WindowState;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field static final MINIMUM_VISIBLE_HEIGHT_IN_DP:I = 0x20

.field static final MINIMUM_VISIBLE_WIDTH_IN_DP:I = 0x30

.field static final RESIZE_HANDLE_WIDTH_IN_DP:I = 0x1e

.field static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sWindowSubLayerComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAnimateReplacingWindow:Z

.field mAnimatingExit:Z

.field mAppDied:Z

.field mAppFreezing:Z

.field final mAppOp:I

.field private mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field final mClient:Landroid/view/IWindow;

.field private mClientChannel:Landroid/view/InputChannel;

.field final mCompatFrame:Landroid/graphics/Rect;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field private final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field private mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field private mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDestroying:Z

.field mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field private mDisplayCutoutChanged:Z

.field final mDisplayFrame:Landroid/graphics/Rect;

.field private mDragResizing:Z

.field private mDragResizingChangeReported:Z

.field private mDrawLock:Landroid/os/PowerManager$WakeLock;

.field private mDrawnStateEvaluated:Z

.field mEnforceSizeCompat:Z

.field private mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mForceHideNonSystemOverlayWindow:Z

.field final mFrame:Landroid/graphics/Rect;

.field private mFrameNumber:J

.field private mFrameSizeChanged:Z

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mHidden:Z

.field private mHiddenWhileSuspended:Z

.field mInRelayout:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field private final mInsetFrame:Landroid/graphics/Rect;

.field mInvGlobalScale:F

.field mIsAppWindowCompat:Z

.field private mIsChildWindow:Z

.field private mIsDimming:Z

.field private final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field mIsNotchUnLimited:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field private mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field private final mLastOutsets:Landroid/graphics/Rect;

.field private final mLastOverscanInsets:Landroid/graphics/Rect;

.field final mLastRelayoutContentInsets:Landroid/graphics/Rect;

.field private final mLastReportedConfiguration:Landroid/util/MergedConfiguration;

.field private mLastRequestedHeight:I

.field private mLastRequestedWidth:I

.field private final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastSurfaceInsets:Landroid/graphics/Rect;

.field private mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field private final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLastVisibleLayoutRotation:I

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mMovedByResize:Z

.field mObscured:Z

.field private mOrientationChangeTimedOut:Z

.field private mOrientationChanging:Z

.field private final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field private mOutsetsChanged:Z

.field private final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field private mOverscanInsetsChanged:Z

.field final mOwnerCanAddInternalSystemWindow:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field private mParentFrameWasClippedByDisplayCutout:Z

.field mPermanentlyHidden:Z

.field final mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field private mReplacementWindow:Lcom/android/server/wm/WindowState;

.field private mReplacingRemoveRequested:Z

.field mReportOrientationChanged:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field private mResizeMode:I

.field mResizedWhileGone:Z

.field mSeamlesslyRotated:Z

.field mSeq:I

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field mSkipEnterAnimationForSeamlessReplacement:Z

.field private final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field private mStableInsetsChanged:Z

.field private mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field private final mSurfacePosition:Landroid/graphics/Point;

.field mSystemUiVisibility:I

.field private mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field private final mTmpRect:Landroid/graphics/Rect;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field private mVisibleInsetsChanged:Z

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field private mWasExiting:Z

.field private mWasVisibleBeforeClientHidden:Z

.field mWillReplaceWindow:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Lcom/android/server/wm/WindowState$WindowId;

.field mWindowRemovalAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 653
    new-instance v0, Lcom/android/server/wm/WindowState$1;

    invoke-direct {v0}, Lcom/android/server/wm/WindowState$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZ)V
    .locals 14
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "parentWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "ownerId"    # I
    .param p11, "ownerCanAddInternalSystemWindow"    # Z

    .line 698
    new-instance v12, Lcom/android/server/wm/WindowState$2;

    move-object v13, p1

    invoke-direct {v12, v13}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    move-object v0, p0

    move-object v1, v13

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/wm/WindowState;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V

    .line 710
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;IIZLcom/android/server/wm/WindowState$PowerManagerWrapper;)V
    .locals 18
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "parentWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "ownerId"    # I
    .param p11, "ownerCanAddInternalSystemWindow"    # Z
    .param p12, "powerManagerWrapper"    # Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p8

    .line 716
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 252
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 276
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 279
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 284
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 287
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 305
    const/4 v6, -0x1

    iput v6, v1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 312
    new-instance v7, Landroid/util/MergedConfiguration;

    invoke-direct {v7}, Landroid/util/MergedConfiguration;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    .line 318
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 319
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 327
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 328
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 337
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastRelayoutContentInsets:Landroid/graphics/Rect;

    .line 345
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    .line 346
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 353
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 354
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    .line 361
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    .line 362
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    .line 363
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 366
    sget-object v8, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 367
    sget-object v8, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 380
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 386
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 391
    new-instance v8, Landroid/graphics/Region;

    invoke-direct {v8}, Landroid/graphics/Region;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 399
    iput v7, v1, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 402
    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 403
    iput v8, v1, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 404
    iput v8, v1, Lcom/android/server/wm/WindowState;->mHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 405
    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastHScale:F

    iput v8, v1, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 406
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 409
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 410
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 411
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    .line 414
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 416
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 418
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 425
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 431
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    .line 435
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    .line 439
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 443
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 447
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 451
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    .line 457
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    .line 463
    const/high16 v8, -0x40800000    # -1.0f

    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 464
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 468
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 469
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 473
    const/high16 v8, -0x80000000

    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 474
    iput v8, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 531
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 565
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 578
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 580
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 582
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 585
    const/4 v6, 0x0

    iput-object v6, v1, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 590
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 603
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 608
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 617
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    .line 623
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    .line 632
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    .line 647
    const-wide/16 v8, -0x1

    iput-wide v8, v1, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 674
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 687
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsAppWindowCompat:Z

    .line 920
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    .line 717
    move-object/from16 v8, p2

    iput-object v8, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 718
    iput-object v2, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 719
    move/from16 v9, p6

    iput v9, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 720
    iput-object v3, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 721
    iget-object v10, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 722
    move/from16 v10, p10

    iput v10, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 723
    move/from16 v11, p11

    iput-boolean v11, v1, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    .line 724
    new-instance v12, Lcom/android/server/wm/WindowState$WindowId;

    invoke-direct {v12, v1, v6}, Lcom/android/server/wm/WindowState$WindowId;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    iput-object v12, v1, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    .line 725
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v12, v5}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 726
    iget-object v12, v1, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v13, v13, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 727
    move/from16 v12, p9

    iput v12, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 728
    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 729
    iget-object v13, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 730
    new-instance v13, Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-direct {v13, v1, v6}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 731
    .local v13, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v14, p7

    iput v14, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 732
    iget-object v15, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v15, v15, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v15, v15, 0x80

    if-eqz v15, :cond_0

    move v15, v0

    goto :goto_0

    :cond_0
    move v15, v7

    :goto_0
    iput-boolean v15, v1, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 733
    move-object/from16 v15, p12

    iput-object v15, v1, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    .line 734
    sget-boolean v16, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v16, :cond_1

    const-string v6, "WindowManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Window "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " client="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " token="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v7, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ") params="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 734
    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_1
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-interface {v0, v13, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    nop

    .line 752
    iput-object v13, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 754
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v7, 0x3e8

    if-lt v0, v7, :cond_7

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7cf

    if-gt v0, v6, :cond_7

    .line 757
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v4}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 759
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v0, v6}, Lcom/android/server/policy/WindowManagerPolicy;->getSubWindowLayerFromTypeLw(I)I

    move-result v0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 762
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v6, :cond_2

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_2
    sget-object v0, Lcom/android/server/wm/WindowState;->sWindowSubLayerComparator:Ljava/util/Comparator;

    invoke-virtual {v4, v1, v0}, Lcom/android/server/wm/WindowState;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 765
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x3eb

    if-eq v0, v6, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 767
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v0, v6, :cond_5

    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v0, v6, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 769
    iget-object v0, v4, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v0, v6, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    goto :goto_8

    .line 773
    :cond_7
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/2addr v0, v7

    iput v0, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 775
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 776
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 777
    iput-boolean v6, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 778
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7db

    if-eq v0, v6, :cond_9

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dc

    if-ne v0, v6, :cond_8

    goto :goto_5

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 780
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7dd

    if-ne v0, v6, :cond_a

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    :goto_7
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 782
    :goto_8
    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v0, :cond_c

    iget-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    const/4 v0, 0x0

    goto :goto_a

    :cond_c
    :goto_9
    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 784
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v0, :cond_d

    .line 787
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x80000

    or-int/2addr v6, v7

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 790
    :cond_d
    new-instance v0, Lcom/android/server/wm/WindowStateAnimator;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 791
    iget-object v0, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 793
    const/4 v6, 0x0

    iput v6, v1, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 794
    iput v6, v1, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 795
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 796
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 797
    iput v6, v1, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 798
    new-instance v0, Lcom/android/server/input/InputWindowHandle;

    .line 799
    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_e

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    goto :goto_b

    .line 800
    :cond_e
    const/4 v6, 0x0

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    invoke-direct {v0, v6, v1, v2, v7}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;Landroid/view/IWindow;I)V

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 803
    move-object/from16 v6, p1

    iget-object v0, v6, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 805
    return-void

    .line 739
    :catch_0
    move-exception v0

    move-object/from16 v6, p1

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 741
    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    .line 742
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 743
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 744
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 745
    iput-boolean v7, v1, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 746
    iput v7, v1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 747
    iput v7, v1, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 748
    const/4 v7, 0x0

    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 749
    iput-object v7, v1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 750
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;

    .line 223
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->shouldKeepVisibleDeadAppWindow()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/WindowState;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;
    .param p1, "x1"    # Z

    .line 223
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/WindowState;
    .param p1, "x1"    # Landroid/graphics/Rect;
    .param p2, "x2"    # Landroid/graphics/Rect;
    .param p3, "x3"    # Landroid/graphics/Rect;
    .param p4, "x4"    # Landroid/graphics/Rect;
    .param p5, "x5"    # Landroid/graphics/Rect;
    .param p6, "x6"    # Landroid/graphics/Rect;
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/util/MergedConfiguration;
    .param p9, "x9"    # Z
    .param p10, "x10"    # I
    .param p11, "x11"    # Landroid/view/DisplayCutout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 223
    invoke-direct/range {p0 .. p11}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    return-void
.end method

.method private applyDims(Lcom/android/server/wm/Dimmer;)V
    .locals 2
    .param p1, "dimmer"    # Lcom/android/server/wm/Dimmer;

    .line 4916
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v0, :cond_0

    .line 4917
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4918
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/Dimmer;->dimAbove(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    goto :goto_0

    .line 4919
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-nez v0, :cond_1

    .line 4925
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4926
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    invoke-virtual {p1, v0, p0, v1}, Lcom/android/server/wm/Dimmer;->dimBelow(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;F)V

    .line 4928
    :cond_1
    :goto_0
    return-void
.end method

.method private applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 4
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4262
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 4263
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4264
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-ne v0, v3, :cond_1

    .line 4265
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4266
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 4267
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " applyImeWindowsIfNeeded for target="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " this="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4270
    :cond_0
    return v2

    .line 4272
    :cond_1
    return v1

    .line 4280
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent;->forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4282
    return v2

    .line 4285
    :cond_3
    return v1
.end method

.method private applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 2
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4290
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 4291
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4292
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4293
    :cond_0
    return v0

    .line 4296
    :cond_1
    invoke-interface {p1, p0}, Lcom/android/internal/util/ToBooleanFunction;->apply(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4297
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyImeWindowsIfNeeded(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4301
    :cond_2
    const/4 v0, 0x0

    return v0

    .line 4298
    :cond_3
    :goto_0
    return v0
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    .line 3133
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 3136
    return-void
.end method

.method private calculateSystemDecorRect(Landroid/graphics/Rect;)V
    .locals 11
    .param p1, "systemDecorRect"    # Landroid/graphics/Rect;

    .line 4608
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 4609
    .local v0, "decorRect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 4610
    .local v1, "width":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 4612
    .local v2, "height":I
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 4613
    .local v3, "left":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 4616
    .local v4, "top":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 4625
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 4626
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    iget v7, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 4627
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 4628
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 4626
    invoke-virtual {p1, v6, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 4629
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_0

    .line 4630
    :cond_0
    invoke-virtual {p1, v6, v6, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 4639
    :goto_0
    nop

    .line 4640
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v5

    if-nez v5, :cond_2

    move v6, v7

    nop

    :cond_2
    move v5, v6

    .line 4641
    .local v5, "cropToDecor":Z
    if-eqz v5, :cond_3

    .line 4643
    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v4

    invoke-virtual {p1, v6, v8, v9, v10}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4653
    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v8

    if-eqz v6, :cond_4

    .line 4654
    iget v6, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 4655
    .local v6, "scale":F
    iget v8, p1, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->left:I

    .line 4656
    iget v8, p1, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->top:I

    .line 4657
    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v7

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p1, Landroid/graphics/Rect;->right:I

    .line 4658
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v7

    int-to-float v7, v8

    mul-float/2addr v7, v6

    sub-float/2addr v7, v9

    float-to-int v7, v7

    iput v7, p1, Landroid/graphics/Rect;->bottom:I

    .line 4661
    .end local v6    # "scale":F
    :cond_4
    return-void
.end method

.method private computeDragResizing()Z
    .locals 4

    .line 3445
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3446
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3447
    return v1

    .line 3449
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3450
    return v1

    .line 3452
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, v3, :cond_2

    goto :goto_1

    .line 3456
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 3457
    return v3

    .line 3464
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    .line 3465
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3466
    :cond_4
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v2

    if-nez v2, :cond_5

    .line 3464
    move v1, v3

    goto :goto_0

    .line 3466
    :cond_5
    nop

    .line 3464
    :goto_0
    return v1

    .line 3454
    :cond_6
    :goto_1
    return v1
.end method

.method private cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "region"    # Landroid/graphics/Region;

    .line 3161
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3162
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3166
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 3167
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v1, :cond_1

    .line 3168
    return-void

    .line 3171
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3172
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 3173
    return-void

    .line 3163
    .end local v1    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    :goto_0
    return-void
.end method

.method private dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V
    .locals 18
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "overscanInsets"    # Landroid/graphics/Rect;
    .param p3, "contentInsets"    # Landroid/graphics/Rect;
    .param p4, "visibleInsets"    # Landroid/graphics/Rect;
    .param p5, "stableInsets"    # Landroid/graphics/Rect;
    .param p6, "outsets"    # Landroid/graphics/Rect;
    .param p7, "reportDraw"    # Z
    .param p8, "mergedConfiguration"    # Landroid/util/MergedConfiguration;
    .param p9, "reportOrientation"    # Z
    .param p10, "displayId"    # I
    .param p11, "displayCutout"    # Landroid/view/DisplayCutout;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 3318
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eqz p9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move v14, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v14, v2

    .line 3320
    .local v14, "forceRelayout":Z
    :goto_1
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 3321
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowState;->getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v13

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 3322
    invoke-interface {v3, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isNavBarForcedShownLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v15

    new-instance v3, Landroid/view/DisplayCutout$ParcelableWrapper;

    move-object/from16 v12, p11

    invoke-direct {v3, v12}, Landroid/view/DisplayCutout$ParcelableWrapper;-><init>(Landroid/view/DisplayCutout;)V

    .line 3320
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move/from16 v16, p10

    move-object/from16 v17, v3

    invoke-interface/range {v4 .. v17}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;Landroid/graphics/Rect;ZZILandroid/view/DisplayCutout$ParcelableWrapper;)V

    .line 3324
    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3325
    return-void
.end method

.method private forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 4189
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    const/4 v0, 0x0

    .line 4190
    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 4191
    .local v1, "count":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4193
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v0, v1, :cond_2

    iget v5, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-gez v5, :cond_2

    .line 4194
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4195
    return v4

    .line 4197
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 4198
    if-lt v0, v1, :cond_1

    .line 4199
    goto :goto_1

    .line 4201
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 4204
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4205
    return v4

    .line 4208
    :cond_3
    :goto_2
    if-ge v0, v1, :cond_6

    .line 4209
    invoke-direct {v2, p1, v3}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4210
    return v4

    .line 4212
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 4213
    if-lt v0, v1, :cond_5

    .line 4214
    goto :goto_3

    .line 4216
    :cond_5
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4219
    :cond_6
    :goto_3
    return v3
.end method

.method private forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;)Z"
        }
    .end annotation

    .line 4226
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 4227
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4229
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_0
    if-ltz v0, :cond_2

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_2

    .line 4230
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4231
    return v1

    .line 4233
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 4234
    if-gez v0, :cond_1

    .line 4235
    goto :goto_1

    .line 4237
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 4240
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4241
    return v1

    .line 4244
    :cond_3
    :goto_2
    if-ltz v0, :cond_6

    .line 4245
    invoke-direct {v2, p1, v1}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4246
    return v1

    .line 4248
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 4249
    if-gez v0, :cond_5

    .line 4250
    goto :goto_3

    .line 4252
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4255
    :cond_6
    :goto_3
    const/4 v1, 0x0

    return v1
.end method

.method private frameCoversEntireAppTokenBounds()Z
    .locals 2

    .line 3402
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3403
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 3404
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getLastReportedConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 2597
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method private getStackId()I
    .locals 2

    .line 3306
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3307
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 3308
    const/4 v1, -0x1

    return v1

    .line 3310
    :cond_0
    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    return v1
.end method

.method private hasMoved()Z
    .locals 2

    .line 2035
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_2

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 2035
    :goto_0
    return v0
.end method

.method private inFullscreenContainer()Z
    .locals 1

    .line 3358
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

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

.method private isDragResizingChangeReported()Z
    .locals 1

    .line 3428
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    return v0
.end method

.method private isHiddenFromUserLocked()Z
    .locals 4

    .line 3112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3113
    .local v0, "win":Lcom/android/server/wm/WindowState;
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x7d0

    if-ge v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->mShowForAllUsers:Z

    if-eqz v1, :cond_0

    .line 3119
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gt v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gt v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-lt v1, v3, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-lt v1, v3, :cond_0

    .line 3124
    return v2

    .line 3128
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 3129
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    nop

    .line 3128
    :cond_1
    return v2
.end method

.method private isOpaqueDrawn()Z
    .locals 2

    .line 1873
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_2

    .line 1875
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1873
    :goto_0
    return v0
.end method

.method private logPerformShow(Ljava/lang/String;)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;

    .line 4099
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v1, 0x3

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW_VERBOSE:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-ne v0, v1, :cond_5

    .line 4101
    :cond_0
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": mDrawState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4102
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->drawStateToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " readyForDisplay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4103
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " starting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v1, :cond_1

    move v1, v5

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " during animation: policyVis="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " parentHidden="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4106
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tok.hiddenRequested="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_2

    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tok.hidden="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4109
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_2

    :cond_3
    move v1, v4

    :goto_2
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " animationSet="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4110
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " tok animating="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4112
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    move v4, v5

    nop

    :cond_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " Callers="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    .line 4113
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4101
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4115
    :cond_5
    return-void
.end method

.method private removeIfPossible(Z)V
    .locals 13
    .param p1, "keepVisibleDeadWindow"    # Z

    .line 2142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 2143
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    const/4 v2, 0x5

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeIfPossible: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2144
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2143
    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v4

    .line 2147
    .local v1, "startingWindow":Z
    :goto_0
    if-eqz v1, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STARTING_WINDOW:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting window removed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_2
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne p0, v3, :cond_4

    .line 2151
    :cond_3
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " client="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 2152
    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", surfaceController="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " Callers="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2154
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2151
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 2159
    .local v5, "origId":J
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2161
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v3, :cond_7

    const-string v3, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remove "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": mSurfaceController="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mAnimatingExit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mRemoveOnExit="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mHasSurface="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " surfaceShowing="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2166
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " isAnimationSet="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2167
    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " app-animation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2169
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_1

    :cond_5
    const-string v8, "false"

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mWillReplaceWindow="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " inPendingTransaction="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v8, v8, Lcom/android/server/wm/AppWindowToken;->inPendingTransaction:Z

    goto :goto_2

    :cond_6
    move v8, v4

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mDisplayFrozen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v8, v8, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " callers="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x6

    .line 2174
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2161
    invoke-static {v3, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :cond_7
    const/4 v3, 0x0

    .line 2179
    .local v3, "wasVisible":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v7

    .line 2184
    .local v7, "displayId":I
    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/16 v9, 0x12

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v8

    if-eqz v8, :cond_16

    .line 2185
    iget-boolean v8, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v8, :cond_9

    .line 2188
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_8

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Preserving "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " until the new one is added"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2194
    :cond_8
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2195
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2275
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2196
    return-void

    .line 2200
    :cond_9
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v8

    move v3, v8

    .line 2202
    if-eqz p1, :cond_b

    .line 2203
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_a

    const-string v2, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not removing "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " because app died while it\'s visible"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    :cond_a
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    .line 2207
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2208
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2212
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->openInputChannel(Landroid/view/InputChannel;)V

    .line 2213
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2275
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2214
    return-void

    .line 2217
    :cond_b
    if-eqz v3, :cond_e

    .line 2218
    if-nez v1, :cond_c

    const/4 v2, 0x2

    nop

    .line 2221
    .local v2, "transit":I
    :cond_c
    :try_start_2
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8, v2, v4}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 2222
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 2226
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2227
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 2230
    :cond_d
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v8, :cond_e

    if-nez v7, :cond_e

    .line 2231
    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v8, p0, v2}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 2234
    .end local v2    # "transit":I
    :cond_e
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2235
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v2

    if-nez v2, :cond_10

    :cond_f
    move v2, v0

    goto :goto_3

    :cond_10
    move v2, v4

    .line 2236
    .local v2, "isAnimating":Z
    :goto_3
    if-eqz v1, :cond_11

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2237
    invoke-virtual {v8, p0}, Lcom/android/server/wm/AppWindowToken;->isLastWindow(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_11

    move v8, v0

    goto :goto_4

    :cond_11
    move v8, v4

    .line 2243
    .local v8, "lastWindowIsStartingWindow":Z
    :goto_4
    iget-object v10, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v10}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v10

    if-eqz v10, :cond_16

    iget-boolean v10, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v10, :cond_16

    if-eqz v8, :cond_12

    if-eqz v2, :cond_16

    .line 2246
    :cond_12
    sget-boolean v10, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v10, :cond_13

    const-string v10, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not removing "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " due to exit animation "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    :cond_13
    new-array v0, v0, [I

    const/16 v10, 0xc

    aput v10, v0, v4

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v4, "com.oneplus.permissionutil"

    .line 2253
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2254
    if-eqz v3, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2255
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v9, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2259
    :cond_14
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->setupWindowForRemoveOnExit()V

    .line 2260
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_15

    .line 2261
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->updateReportedVisibilityLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2275
    :cond_15
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2263
    return-void

    .line 2267
    .end local v2    # "isAnimating":Z
    .end local v8    # "lastWindowIsStartingWindow":Z
    :cond_16
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2270
    if-eqz v3, :cond_17

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v7}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2271
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v9, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2273
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v4, v0}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2275
    .end local v3    # "wasVisible":Z
    .end local v7    # "displayId":I
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2276
    nop

    .line 2277
    return-void

    .line 2275
    :catchall_0
    move-exception v0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private removeReplacedWindow()V
    .locals 3

    .line 2410
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing replaced window: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2412
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 2413
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    .line 2414
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2415
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-nez v0, :cond_2

    .line 2416
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 2418
    :cond_2
    return-void
.end method

.method private setAppOpVisibilityLw(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 2867
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_1

    .line 2868
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 2869
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2876
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    goto :goto_0

    .line 2878
    :cond_0
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 2881
    :cond_1
    :goto_0
    return-void
.end method

.method private setupWindowForRemoveOnExit()V
    .locals 3

    .line 2280
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 2281
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2284
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    .line 2286
    .local v0, "focusChanged":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 2287
    if-eqz v0, :cond_0

    .line 2288
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 2290
    :cond_0
    return-void
.end method

.method private shouldKeepVisibleDeadAppWindow()Z
    .locals 3

    .line 2686
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isWinVisibleLw()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 2694
    return v1

    .line 2697
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 2700
    return v1

    .line 2703
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->keepVisibleDeadAppWindowOnScreen()Z

    move-result v0

    return v0

    .line 2688
    :cond_3
    :goto_0
    return v1
.end method

.method private skipDecorCrop()Z
    .locals 1

    .line 4563
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4564
    const/4 v0, 0x1

    return v0

    .line 4568
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    .line 4569
    const/4 v0, 0x0

    return v0

    .line 4574
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->canLayerAboveSystemBars()Z

    move-result v0

    return v0
.end method

.method private startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "adapter"    # Lcom/android/server/wm/AnimationAdapter;

    .line 4788
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    .line 4789
    return-void
.end method

.method private startMoveAnimation(II)V
    .locals 11
    .param p1, "left"    # I
    .param p2, "top"    # I

    .line 4776
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting move animation on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4777
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 4778
    .local v0, "oldPosition":Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 4779
    .local v1, "newPosition":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4780
    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4781
    new-instance v2, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v10, Lcom/android/server/wm/WindowState$MoveAnimationSpec;

    iget v5, v0, Landroid/graphics/Point;->x:I

    iget v6, v0, Landroid/graphics/Point;->y:I

    iget v7, v1, Landroid/graphics/Point;->x:I

    iget v8, v1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    move-object v3, v10

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/wm/WindowState$MoveAnimationSpec;-><init>(Lcom/android/server/wm/WindowState;IIIILcom/android/server/wm/WindowState$1;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v2, v10, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4784
    .local v2, "adapter":Lcom/android/server/wm/AnimationAdapter;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4785
    return-void
.end method

.method private subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "layoutFrame"    # Landroid/graphics/Rect;
    .param p3, "insetFrame"    # Landroid/graphics/Rect;
    .param p4, "displayFrame"    # Landroid/graphics/Rect;

    .line 863
    iget v0, p3, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 864
    .local v0, "left":I
    iget v2, p3, Landroid/graphics/Rect;->top:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    iget v4, p4, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 865
    .local v2, "top":I
    iget v3, p2, Landroid/graphics/Rect;->right:I

    iget v4, p4, Landroid/graphics/Rect;->right:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 866
    .local v3, "right":I
    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    iget v5, p4, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 867
    .local v1, "bottom":I
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Rect;->inset(IIII)V

    .line 868
    return-void
.end method

.method private transformFrameToSurfacePosition(IILandroid/graphics/Point;)V
    .locals 5
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "outPoint"    # Landroid/graphics/Point;

    .line 4983
    invoke-virtual {p3, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 4986
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 4987
    .local v0, "parentWindowContainer":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4993
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4994
    .local v1, "parent":Lcom/android/server/wm/WindowState;
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget-object v4, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v4

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 4996
    .end local v1    # "parent":Lcom/android/server/wm/WindowState;
    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 4997
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4998
    .local v1, "parentBounds":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 5001
    .end local v1    # "parentBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 5007
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v1, :cond_2

    .line 5008
    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getStackOutset()I

    move-result v2

    .line 5009
    .local v2, "outset":I
    invoke-virtual {p3, v2, v2}, Landroid/graphics/Point;->offset(II)V

    .line 5013
    .end local v2    # "outset":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    invoke-virtual {p3, v2, v3}, Landroid/graphics/Point;->offset(II)V

    .line 5014
    return-void
.end method

.method private updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4964
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 4965
    return-void

    .line 4968
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/WindowState;->transformFrameToSurfacePosition(IILandroid/graphics/Point;)V

    .line 4970
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4971
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4972
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 4973
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->surfaceInsetsChanging()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4974
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4975
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    iget-object v1, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 4976
    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    .line 4977
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getFrameNumber()J

    move-result-wide v2

    .line 4975
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->deferTransactionUntil(Landroid/view/SurfaceControl;Landroid/os/IBinder;J)Landroid/view/SurfaceControl$Transaction;

    .line 4980
    :cond_1
    return-void
.end method


# virtual methods
.method addWinAnimatorToList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowStateAnimator;",
            ">;)V"
        }
    .end annotation

    .line 2966
    .local p1, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowStateAnimator;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2968
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 2969
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2970
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->addWinAnimatorToList(Ljava/util/ArrayList;)V

    .line 2968
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2972
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method adjustStartingWindowFlags()V
    .locals 5

    .line 2601
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 2606
    const v0, 0x480001

    .line 2608
    .local v0, "mask":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->startingWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 2609
    .local v1, "sa":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x480002

    and-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v4, 0x480001

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2611
    .end local v0    # "mask":I
    .end local v1    # "sa":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method

.method amendTapExcludeRegion(Landroid/graphics/Region;)V
    .locals 2
    .param p1, "region"    # Landroid/graphics/Region;

    .line 5107
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/TapExcludeRegionHolder;->amendRegion(Landroid/graphics/Region;Landroid/graphics/Rect;)V

    .line 5108
    return-void
.end method

.method applyAdjustForImeIfNeeded()V
    .locals 2

    .line 2447
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2448
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2449
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/TaskStack;->applyAdjustForImeIfNeeded(Lcom/android/server/wm/Task;)V

    .line 2451
    :cond_0
    return-void
.end method

.method applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 18
    .param p1, "containingFrame"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;

    move-object/from16 v0, p0

    .line 3785
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3786
    .local v1, "pw":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 3787
    .local v2, "ph":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3788
    .local v3, "task":Lcom/android/server/wm/Task;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFullscreenContainer()Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 3789
    .local v4, "inNonFullscreenContainer":Z
    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v6, v6, 0x200

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v7

    .line 3798
    .local v6, "noLimits":Z
    :goto_0
    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v8, v5, :cond_1

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    move v5, v7

    nop

    .line 3803
    .local v5, "fitToDisplay":Z
    :cond_2
    :goto_1
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v7, v7, 0x4000

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v7, :cond_7

    .line 3804
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v7, :cond_3

    .line 3805
    move v7, v1

    .local v7, "w":I
    :goto_2
    goto :goto_3

    .line 3806
    .end local v7    # "w":I
    :cond_3
    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_4

    .line 3807
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v7, v7

    iget v9, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v7, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_2

    .line 3809
    :cond_4
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 3811
    .restart local v7    # "w":I
    :goto_3
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v9, :cond_5

    .line 3812
    move v8, v2

    .local v8, "h":I
    :goto_4
    goto :goto_7

    .line 3813
    .end local v8    # "h":I
    :cond_5
    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v9, :cond_6

    .line 3814
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v8

    float-to-int v8, v9

    goto :goto_4

    .line 3816
    :cond_6
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_4

    .line 3819
    .end local v7    # "w":I
    :cond_7
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v9, -0x1

    if-ne v7, v9, :cond_8

    .line 3820
    move v7, v1

    .restart local v7    # "w":I
    :goto_5
    goto :goto_6

    .line 3821
    .end local v7    # "w":I
    :cond_8
    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v7, :cond_9

    .line 3822
    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v7, v7

    iget v10, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v7, v10

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_5

    .line 3824
    :cond_9
    iget v7, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 3826
    .restart local v7    # "w":I
    :goto_6
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v10, v9, :cond_a

    .line 3827
    move v8, v2

    goto :goto_4

    .line 3828
    :cond_a
    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v9, :cond_b

    .line 3829
    iget v9, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v9, v10

    add-float/2addr v9, v8

    float-to-int v8, v9

    goto :goto_4

    .line 3831
    :cond_b
    iget v8, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 3835
    .restart local v8    # "h":I
    :goto_7
    iget-boolean v9, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v9, :cond_c

    .line 3836
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    iget v10, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v9, v10

    .line 3837
    .local v9, "x":F
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    iget v11, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v10, v11

    .local v10, "y":F
    goto :goto_8

    .line 3839
    .end local v9    # "x":F
    .end local v10    # "y":F
    :cond_c
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v9, v9

    .line 3840
    .restart local v9    # "x":F
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v10, v10

    .line 3843
    .restart local v10    # "y":F
    :goto_8
    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v11

    if-nez v11, :cond_d

    .line 3846
    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 3847
    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3851
    :cond_d
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    int-to-float v13, v1

    mul-float/2addr v12, v13

    add-float/2addr v12, v9

    float-to-int v15, v12

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    int-to-float v13, v2

    mul-float/2addr v12, v13

    add-float/2addr v12, v10

    float-to-int v14, v12

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move v12, v7

    move-object/from16 v17, v13

    move v13, v8

    move/from16 v16, v14

    move-object/from16 v14, p1

    invoke-static/range {v11 .. v17}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 3856
    if-eqz v5, :cond_e

    .line 3857
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    move-object/from16 v13, p2

    invoke-static {v11, v13, v12}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_9

    .line 3862
    :cond_e
    move-object/from16 v13, p2

    :goto_9
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v12, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3863
    iget-boolean v11, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v11, :cond_f

    .line 3865
    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v12, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v11, v12}, Landroid/graphics/Rect;->scale(F)V

    .line 3867
    :cond_f
    return-void
.end method

.method public assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 5059
    const/4 v0, 0x1

    .line 5060
    .local v0, "layer":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5061
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 5067
    .local v2, "w":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_0

    .line 5068
    const/4 v3, -0x2

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_1

    .line 5069
    :cond_0
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x3ec

    if-ne v3, v4, :cond_1

    .line 5070
    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    goto :goto_1

    .line 5072
    :cond_1
    invoke-virtual {v2, p1, v0}, Lcom/android/server/wm/WindowState;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5074
    :goto_1
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    .line 5075
    add-int/lit8 v0, v0, 0x1

    .line 5060
    .end local v2    # "w":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5077
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method assignLayer(Landroid/view/SurfaceControl$Transaction;I)V
    .locals 1
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "layer"    # I

    .line 5043
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->needsRelativeLayeringToIme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5044
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/DisplayContent;->assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    .line 5045
    return-void

    .line 5047
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    .line 5048
    return-void
.end method

.method attach()V
    .locals 3

    .line 808
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Session;->windowAddedLocked(Ljava/lang/String;)V

    .line 810
    return-void
.end method

.method calculatePolicyCrop(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "policyCrop"    # Landroid/graphics/Rect;

    .line 4583
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4584
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 4586
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 4590
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4591
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->intersect(IIII)Z

    goto :goto_0

    .line 4594
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->skipDecorCrop()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4596
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {p1, v3, v3, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 4599
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->calculateSystemDecorRect(Landroid/graphics/Rect;)V

    .line 4601
    :goto_0
    return-void
.end method

.method public canAcquireSleepToken()Z
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanAcquireSleepToken:Z

    return v0
.end method

.method public canAddInternalSystemWindow()Z
    .locals 1

    .line 847
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    return v0
.end method

.method public canAffectSystemUiFlags()Z
    .locals 6

    .line 1777
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1778
    .local v0, "translucent":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 1779
    return v2

    .line 1781
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v3, :cond_5

    .line 1782
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v3

    .line 1783
    .local v3, "shown":Z
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v1

    .line 1784
    .local v4, "exiting":Z
    :goto_2
    if-eqz v3, :cond_4

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    return v1

    .line 1786
    .end local v3    # "shown":Z
    .end local v4    # "exiting":Z
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1787
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->canAffectSystemUiFlags()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_4

    :cond_6
    move v4, v2

    .line 1788
    .local v4, "canFromTask":Z
    :goto_4
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_5

    :cond_7
    move v1, v2

    :goto_5
    return v1
.end method

.method canBeImeTarget()Z
    .locals 6

    .line 2297
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2300
    return v1

    .line 2303
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2304
    .local v0, "windowsAreFocusable":Z
    :goto_1
    if-nez v0, :cond_3

    .line 2306
    return v1

    .line 2309
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, 0x20008

    and-int/2addr v2, v3

    .line 2310
    .local v2, "fl":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2314
    .local v4, "type":I
    if-eqz v2, :cond_4

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-eq v4, v3, :cond_4

    .line 2316
    return v1

    .line 2319
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_5

    .line 2320
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isVisibleOrAdding "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2322
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mSurfaceController="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " relayoutCalled="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " viewVis="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " policyVis="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " policyVisAfterAnim="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " parentHidden="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " exiting="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " destroying="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2322
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2329
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_5

    .line 2330
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  mAppToken.hiddenRequested="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2334
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    return v1
.end method

.method canReceiveKeys()Z
    .locals 1

    .line 2708
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2711
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2712
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->canReceiveTouchInput()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2708
    :goto_0
    return v0
.end method

.method canReceiveTouchInput()Z
    .locals 1

    .line 2717
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 2718
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->shouldIgnoreInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2717
    :goto_0
    return v0
.end method

.method checkPolicyVisibilityChange()V
    .locals 3

    .line 2497
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eq v0, v1, :cond_3

    .line 2498
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    .line 2499
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Policy visibility changing after anim in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2502
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 2503
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v0, :cond_3

    .line 2504
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v1, "checkPolicyVisibilityChange"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 2505
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_2

    .line 2506
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string/jumbo v1, "setAnimationLocked: setting mFocusMayChange true"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2510
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 2514
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2517
    :cond_3
    return-void
.end method

.method clearAnimatingFlags()Z
    .locals 3

    .line 4430
    const/4 v0, 0x0

    .line 4438
    .local v0, "didSomething":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_1

    .line 4446
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4447
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4448
    const/4 v0, 0x1

    .line 4450
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_1

    .line 4451
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4452
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4453
    const/4 v0, 0x1

    .line 4457
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 4458
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->clearAnimatingFlags()Z

    move-result v2

    or-int/2addr v0, v2

    .line 4457
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4461
    .end local v1    # "i":I
    :cond_2
    return v0
.end method

.method clearWillReplaceWindow()V
    .locals 2

    .line 3936
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3937
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3938
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3940
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3941
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3942
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->clearWillReplaceWindow()V

    .line 3940
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3944
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/utils/WmDisplayCutout;Z)V
    .locals 31
    .param p1, "parentFrame"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "overscanFrame"    # Landroid/graphics/Rect;
    .param p4, "contentFrame"    # Landroid/graphics/Rect;
    .param p5, "visibleFrame"    # Landroid/graphics/Rect;
    .param p6, "decorFrame"    # Landroid/graphics/Rect;
    .param p7, "stableFrame"    # Landroid/graphics/Rect;
    .param p8, "outsetFrame"    # Landroid/graphics/Rect;
    .param p9, "displayCutout"    # Lcom/android/server/wm/utils/WmDisplayCutout;
    .param p10, "parentFrameWasClippedByDisplayCutout"    # Z

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    .line 977
    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v7, :cond_0

    iget-boolean v7, v0, Lcom/android/server/wm/WindowState;->mReplacingRemoveRequested:Z

    if-nez v7, :cond_1

    .line 982
    :cond_0
    return-void

    .line 984
    :cond_1
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 985
    move/from16 v8, p10

    iput-boolean v8, v0, Lcom/android/server/wm/WindowState;->mParentFrameWasClippedByDisplayCutout:Z

    .line 987
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowState;->isAppWindowCompat(Landroid/graphics/Rect;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_4

    .line 989
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v9, :cond_3

    const-string v9, "WindowManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ScreenCompat: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " type="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " flags=0x%08x"

    new-array v13, v7, [Ljava/lang/Object;

    .line 991
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v14

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " mSysUiVis=0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 992
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " pf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 993
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " df="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " of="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " cf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " vf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " dcf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 996
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " sf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    invoke-virtual/range {p7 .. p7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " osf="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    if-nez v6, :cond_2

    const-string/jumbo v12, "null"

    goto :goto_0

    :cond_2
    invoke-virtual/range {p8 .. p8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v12

    :goto_0
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 989
    invoke-static {v9, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowState;->resetFrame(Landroid/graphics/Rect;)V

    .line 1000
    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowState;->resetFrame(Landroid/graphics/Rect;)V

    .line 1001
    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowState;->resetFrame(Landroid/graphics/Rect;)V

    .line 1002
    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowState;->resetFrame(Landroid/graphics/Rect;)V

    .line 1003
    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowState;->resetFrame(Landroid/graphics/Rect;)V

    .line 1004
    invoke-virtual {v0, v6}, Lcom/android/server/wm/WindowState;->resetFrame(Landroid/graphics/Rect;)V

    .line 1010
    iget v9, v0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    and-int/lit16 v9, v9, -0x2001

    iput v9, v0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    .line 1018
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1019
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v9}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v9

    .line 1020
    .local v9, "w":Lcom/android/server/wm/WindowState;
    if-eqz v9, :cond_4

    .line 1021
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v12, v12, 0x2

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1022
    iget-object v11, v9, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const/high16 v12, 0x3f800000    # 1.0f

    iput v12, v11, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1027
    .end local v9    # "w":Lcom/android/server/wm/WindowState;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 1028
    .local v9, "task":Lcom/android/server/wm/Task;
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFullscreenContainer()Z

    move-result v11

    .line 1029
    .local v11, "inFullscreenContainer":Z
    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->isFloating()Z

    move-result v12

    if-eqz v12, :cond_5

    move v12, v7

    goto :goto_1

    :cond_5
    move v12, v10

    .line 1030
    .local v12, "windowsAreFloating":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    .line 1037
    .local v13, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1038
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v9, v14}, Lcom/android/server/wm/Task;->getTempInsetBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 1040
    :cond_6
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->setEmpty()V

    .line 1053
    :goto_2
    if-nez v11, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v14

    if-eqz v14, :cond_7

    goto/16 :goto_7

    .line 1062
    :cond_7
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/WindowState;->getBounds(Landroid/graphics/Rect;)V

    .line 1063
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v14, v14, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_8

    .line 1067
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v14, v14, Lcom/android/server/wm/AppWindowToken;->mFrozenBounds:Ljava/util/ArrayDeque;

    invoke-virtual {v14}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/Rect;

    .line 1068
    .local v14, "frozen":Landroid/graphics/Rect;
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v16

    add-int v7, v7, v16

    iput v7, v15, Landroid/graphics/Rect;->right:I

    .line 1069
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v7, Landroid/graphics/Rect;->bottom:I

    .line 1071
    .end local v14    # "frozen":Landroid/graphics/Rect;
    :cond_8
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 1073
    .local v7, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v7, :cond_a

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 1074
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v14

    if-eqz v14, :cond_9

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    iget v15, v3, Landroid/graphics/Rect;->bottom:I

    if-le v14, v15, :cond_9

    .line 1078
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v15, v14, Landroid/graphics/Rect;->top:I

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v17, v7

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    .line 1078
    .end local v7    # "imeWin":Lcom/android/server/wm/WindowState;
    .local v17, "imeWin":Lcom/android/server/wm/WindowState;
    sub-int/2addr v10, v7

    sub-int/2addr v15, v10

    iput v15, v14, Landroid/graphics/Rect;->top:I

    goto :goto_3

    .line 1079
    .end local v17    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v7    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_9
    move-object/from16 v17, v7

    .line 1079
    .end local v7    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v17    # "imeWin":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    if-le v7, v10, :cond_b

    .line 1084
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iput v10, v7, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 1088
    .end local v17    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v7    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_a
    move-object/from16 v17, v7

    .line 1088
    .end local v7    # "imeWin":Lcom/android/server/wm/WindowState;
    .restart local v17    # "imeWin":Lcom/android/server/wm/WindowState;
    :cond_b
    :goto_3
    if-eqz v12, :cond_c

    .line 1092
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1093
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1097
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v7

    .line 1098
    .local v7, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 1099
    invoke-virtual {v7}, Lcom/android/server/wm/TaskStack;->lastAnimatingBoundsWasToFullscreen()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 1103
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1104
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v1}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1107
    :cond_d
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v10, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1108
    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_e

    iget-object v10, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v14

    goto :goto_4

    :cond_e
    const/4 v10, 0x0

    .line 1109
    .local v10, "layoutXDiff":I
    :goto_4
    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_f

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->top:I

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v15

    goto :goto_5

    :cond_f
    const/4 v14, 0x0

    .line 1110
    .local v14, "layoutYDiff":I
    :goto_5
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_10

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    goto :goto_6

    :cond_10
    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 1111
    .local v15, "layoutContainingFrame":Landroid/graphics/Rect;
    :goto_6
    move-object/from16 v18, v7

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    .line 1111
    .end local v7    # "stack":Lcom/android/server/wm/TaskStack;
    .local v18, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v8, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    move/from16 v19, v10

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v10

    .line 1111
    .end local v10    # "layoutXDiff":I
    .local v19, "layoutXDiff":I
    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v20, v14

    const/4 v14, 0x0

    invoke-virtual {v7, v14, v14, v8, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 1112
    .end local v14    # "layoutYDiff":I
    .local v20, "layoutYDiff":I
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v15, v2, v8}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1113
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->layoutInParentFrame()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1114
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v15, v1, v8}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1115
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mInsetFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v7, v15, v1, v8}, Lcom/android/server/wm/WindowState;->subtractInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1117
    :cond_11
    move-object v7, v2

    .line 1118
    .local v7, "layoutDisplayFrame":Landroid/graphics/Rect;
    invoke-virtual {v7, v15}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1121
    .end local v17    # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v18    # "stack":Lcom/android/server/wm/TaskStack;
    move/from16 v10, v19

    move/from16 v14, v20

    goto :goto_8

    .line 1055
    .end local v7    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    .end local v19    # "layoutXDiff":I
    .end local v20    # "layoutYDiff":I
    :cond_12
    :goto_7
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1056
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1057
    move-object v7, v2

    .line 1058
    .restart local v7    # "layoutDisplayFrame":Landroid/graphics/Rect;
    move-object v15, v1

    .line 1059
    .restart local v15    # "layoutContainingFrame":Landroid/graphics/Rect;
    const/4 v10, 0x0

    .line 1060
    .restart local v10    # "layoutXDiff":I
    const/4 v14, 0x0

    .line 1121
    .restart local v14    # "layoutYDiff":I
    :goto_8
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1122
    .local v8, "pw":I
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 1124
    .local v2, "ph":I
    move/from16 v21, v2

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 1124
    .end local v2    # "ph":I
    .local v21, "ph":I
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 1127
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1128
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1130
    :cond_13
    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v1, :cond_14

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v1, v2, :cond_15

    .line 1131
    :cond_14
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 1132
    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 1133
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 1136
    :cond_15
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1137
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1138
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1139
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v2, p6

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1140
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1141
    if-eqz v6, :cond_16

    const/4 v1, 0x1

    goto :goto_9

    :cond_16
    const/4 v1, 0x0

    .line 1142
    .local v1, "hasOutsets":Z
    :goto_9
    if-eqz v1, :cond_17

    .line 1143
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1146
    :cond_17
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1147
    .local v2, "fw":I
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1149
    .local v3, "fh":I
    invoke-virtual {v0, v15, v7}, Lcom/android/server/wm/WindowState;->applyGravityAndUpdateFrame(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1152
    if-eqz v1, :cond_18

    .line 1153
    move/from16 v22, v1

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    .line 1153
    .end local v1    # "hasOutsets":Z
    .local v22, "hasOutsets":Z
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    .line 1154
    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v23, v7

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 1154
    .end local v7    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .local v23, "layoutDisplayFrame":Landroid/graphics/Rect;
    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    .line 1155
    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v8

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 1155
    .end local v8    # "pw":I
    .local v24, "pw":I
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    .line 1156
    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1153
    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_a

    .line 1158
    .end local v22    # "hasOutsets":Z
    .end local v23    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v24    # "pw":I
    .restart local v1    # "hasOutsets":Z
    .restart local v7    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .restart local v8    # "pw":I
    :cond_18
    move/from16 v22, v1

    move-object/from16 v23, v7

    move/from16 v24, v8

    const/4 v8, 0x0

    .line 1158
    .end local v1    # "hasOutsets":Z
    .end local v7    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .end local v8    # "pw":I
    .restart local v22    # "hasOutsets":Z
    .restart local v23    # "layoutDisplayFrame":Landroid/graphics/Rect;
    .restart local v24    # "pw":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1163
    :goto_a
    if-eqz v12, :cond_1a

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1167
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    goto :goto_b

    :cond_19
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 1171
    .local v4, "limitFrame":Landroid/graphics/Rect;
    :goto_b
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1172
    .local v5, "height":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1173
    .local v6, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    .line 1174
    .local v7, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v8, 0x20

    invoke-static {v8, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1176
    .local v8, "minVisibleHeight":I
    const/16 v1, 0x30

    invoke-static {v1, v7}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1178
    .local v1, "minVisibleWidth":I
    move-object/from16 v25, v7

    iget v7, v4, Landroid/graphics/Rect;->top:I

    .line 1178
    .end local v7    # "displayMetrics":Landroid/util/DisplayMetrics;
    .local v25, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v26, v9

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1178
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .local v26, "task":Lcom/android/server/wm/Task;
    iget v9, v9, Landroid/graphics/Rect;->top:I

    move/from16 v27, v3

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1178
    .end local v3    # "fh":I
    .local v27, "fh":I
    sub-int/2addr v3, v8

    .line 1179
    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1178
    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1180
    .local v3, "top":I
    iget v7, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v1

    sub-int/2addr v7, v6

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    move/from16 v28, v8

    iget v8, v4, Landroid/graphics/Rect;->right:I

    .line 1180
    .end local v8    # "minVisibleHeight":I
    .local v28, "minVisibleHeight":I
    sub-int/2addr v8, v1

    .line 1181
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1180
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1182
    .local v7, "left":I
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    add-int v9, v7, v6

    move/from16 v29, v1

    add-int v1, v3, v5

    .line 1182
    .end local v1    # "minVisibleWidth":I
    .local v29, "minVisibleWidth":I
    invoke-virtual {v8, v7, v3, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 1183
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1184
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1185
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1186
    .end local v3    # "top":I
    .end local v4    # "limitFrame":Landroid/graphics/Rect;
    .end local v5    # "height":I
    .end local v6    # "width":I
    .end local v7    # "left":I
    .end local v25    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v28    # "minVisibleHeight":I
    .end local v29    # "minVisibleWidth":I
    goto :goto_c

    .line 1186
    .end local v26    # "task":Lcom/android/server/wm/Task;
    .end local v27    # "fh":I
    .local v3, "fh":I
    .restart local v9    # "task":Lcom/android/server/wm/Task;
    :cond_1a
    move/from16 v27, v3

    move-object/from16 v26, v9

    .line 1186
    .end local v3    # "fh":I
    .end local v9    # "task":Lcom/android/server/wm/Task;
    .restart local v26    # "task":Lcom/android/server/wm/Task;
    .restart local v27    # "fh":I
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7f2

    if-ne v1, v3, :cond_1c

    .line 1187
    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/DockedStackDividerController;->positionDockedStackedDivider(Landroid/graphics/Rect;)V

    .line 1188
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1189
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 1190
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    goto/16 :goto_d

    .line 1209
    :cond_1b
    :goto_c
    const/4 v1, 0x1

    goto/16 :goto_d

    .line 1193
    :cond_1c
    const/4 v1, 0x1

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 1194
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 1195
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 1196
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1193
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1198
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 1199
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 1200
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 1201
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1198
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1203
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 1204
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    .line 1205
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 1206
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1203
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1209
    :goto_d
    if-eqz v11, :cond_1d

    if-nez v12, :cond_1d

    .line 1212
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget v5, v15, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v15, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    .line 1213
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget v7, v15, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    .line 1214
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget v8, v15, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 1215
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1212
    invoke-virtual {v3, v4, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1218
    :cond_1d
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7f2

    if-ne v3, v4, :cond_1e

    .line 1221
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v3, p9

    invoke-virtual {v3, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v1

    .line 1222
    .local v1, "c":Lcom/android/server/wm/utils/WmDisplayCutout;
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1223
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 1224
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->intersectUnchecked(Landroid/graphics/Rect;)V

    .line 1226
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 1227
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 1228
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    .line 1229
    const/4 v6, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1226
    invoke-virtual {v4, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1233
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1234
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->setEmpty()V

    .line 1235
    sget-object v1, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 1236
    .end local p9    # "displayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    .local v1, "displayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    goto/16 :goto_16

    .line 1237
    .end local v1    # "displayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    .restart local p9    # "displayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    :cond_1e
    move-object/from16 v3, p9

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    .line 1240
    if-nez v12, :cond_1f

    if-nez v11, :cond_1f

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-le v4, v5, :cond_1f

    move v4, v1

    goto :goto_e

    :cond_1f
    const/4 v4, 0x0

    .line 1242
    .local v4, "overrideRightInset":Z
    :goto_e
    if-nez v12, :cond_20

    if-nez v11, :cond_20

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-le v5, v6, :cond_20

    goto :goto_f

    :cond_20
    const/4 v1, 0x0

    .line 1244
    .local v1, "overrideBottomInset":Z
    :goto_f
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 1246
    if-eqz v4, :cond_21

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    goto :goto_10

    .line 1247
    :cond_21
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    .line 1248
    :goto_10
    if-eqz v1, :cond_22

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v3

    goto :goto_11

    .line 1249
    :cond_22
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int v9, v3, v9

    .line 1244
    :goto_11
    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1251
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    .line 1253
    if-eqz v4, :cond_23

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    goto :goto_12

    .line 1254
    :cond_23
    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    .line 1255
    :goto_12
    if-eqz v1, :cond_24

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    goto :goto_13

    .line 1256
    :cond_24
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    .line 1251
    :goto_13
    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 1258
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    .line 1259
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1260
    if-eqz v4, :cond_25

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    goto :goto_14

    .line 1261
    :cond_25
    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1262
    :goto_14
    if-eqz v1, :cond_26

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    const/4 v6, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    goto :goto_15

    .line 1263
    :cond_26
    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v6

    const/4 v6, 0x0

    invoke-static {v9, v6}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1258
    :goto_15
    invoke-virtual {v3, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1266
    .end local v1    # "overrideBottomInset":Z
    .end local v4    # "overrideRightInset":Z
    move-object/from16 v1, p9

    .line 1266
    .end local p9    # "displayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    .local v1, "displayCutout":Lcom/android/server/wm/utils/WmDisplayCutout;
    :goto_16
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->calculateRelativeTo(Landroid/graphics/Rect;)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 1269
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    neg-int v4, v10

    neg-int v5, v14

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1270
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    neg-int v4, v10

    neg-int v5, v14

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1271
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    neg-int v4, v10

    neg-int v5, v14

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1272
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    neg-int v4, v10

    neg-int v5, v14

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1273
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    neg-int v4, v10

    neg-int v5, v14

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 1275
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1276
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v3, :cond_27

    .line 1280
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 1281
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 1282
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 1283
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 1284
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 1288
    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 1291
    :cond_27
    iget-boolean v3, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v3, :cond_29

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-ne v2, v3, :cond_28

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v4, v27

    if-eq v4, v3, :cond_2a

    .end local v27    # "fh":I
    .local v4, "fh":I
    goto :goto_17

    .line 1292
    .end local v4    # "fh":I
    .restart local v27    # "fh":I
    :cond_28
    move/from16 v4, v27

    .line 1292
    .end local v27    # "fh":I
    .restart local v4    # "fh":I
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1293
    .local v3, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v3, :cond_2a

    .line 1294
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v5

    .line 1295
    .local v5, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget v7, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v8, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v9, 0x0

    invoke-virtual {v6, v0, v7, v8, v9}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z

    .line 1295
    .end local v3    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v5    # "displayInfo":Landroid/view/DisplayInfo;
    goto :goto_18

    .line 1300
    .end local v4    # "fh":I
    .restart local v27    # "fh":I
    :cond_29
    move/from16 v4, v27

    .line 1300
    .end local v27    # "fh":I
    .restart local v4    # "fh":I
    :cond_2a
    :goto_18
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-nez v3, :cond_2c

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v3, :cond_2b

    goto :goto_19

    .line 1309
    :cond_2b
    move/from16 v7, v21

    move/from16 v6, v24

    goto/16 :goto_1a

    .line 1300
    :cond_2c
    :goto_19
    const-string v3, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolving (mRequestedWidth="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mRequestedheight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") to (pw="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v24

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local v24    # "pw":I
    .local v6, "pw":I
    const-string v7, ", ph="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v21

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    .end local v21    # "ph":I
    .local v7, "ph":I
    const-string v8, "): frame="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1304
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ci="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 1305
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " vi="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1306
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " si="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 1307
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " of="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    .line 1308
    invoke-virtual {v8}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1300
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :goto_1a
    return-void
.end method

.method destroySurface(ZZ)Z
    .locals 5
    .param p1, "cleanupOnResume"    # Z
    .param p2, "appStopped"    # Z

    .line 3047
    const/4 v0, 0x0

    .line 3050
    .local v0, "destroyedSomething":Z
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3051
    .local v1, "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 3051
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 3052
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3053
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowState;->destroySurface(ZZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 3051
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3056
    .end local v2    # "i":I
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    .line 3057
    return v0

    .line 3060
    :cond_1
    if-nez p2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-eqz v2, :cond_3

    .line 3061
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    .line 3064
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_9

    .line 3065
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v2, :cond_4

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "win="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " destroySurfaces: appStopped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " win.mWindowRemovalAllowed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " win.mRemoveOnExit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3069
    :cond_4
    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_6

    .line 3070
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    .line 3072
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v2, :cond_7

    .line 3073
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    .line 3075
    :cond_7
    if-eqz p1, :cond_8

    .line 3076
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3078
    :cond_8
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 3079
    const/4 v0, 0x1

    .line 3082
    :cond_9
    return v0
.end method

.method destroySurfaceUnchecked()V
    .locals 1

    .line 3089
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 3093
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 3094
    return-void
.end method

.method dispatchWallpaperVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .line 4493
    nop

    .line 4494
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4498
    .local v0, "hideAllowed":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eq v1, p1, :cond_4

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    .line 4499
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    .line 4501
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating vis of wallpaper "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " from:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    const-string v4, "  "

    .line 4503
    invoke-static {v3, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4501
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1, p1}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4506
    goto :goto_1

    .line 4505
    :catch_0
    move-exception v1

    .line 4508
    :cond_4
    :goto_1
    return-void
.end method

.method disposeInputChannel()V
    .locals 3

    .line 2374
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;->dispose()V

    .line 2376
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2380
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_1

    .line 2381
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 2382
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2383
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2385
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 2386
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2387
    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2389
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 2390
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .line 3555
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 3556
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDisplayId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3557
    if-eqz v0, :cond_0

    .line 3558
    const-string v1, " stackId="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3560
    :cond_0
    const-string v1, " mSession="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3561
    const-string v1, " mClient="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3562
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOwnerUid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3563
    const-string v1, " mShowToOwnerOnly="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3564
    const-string v1, " package="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3565
    const-string v1, " appop="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3566
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAttrs="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3567
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Requested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3568
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3569
    const-string v1, " mLayoutSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3570
    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v1, v2, :cond_2

    .line 3571
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "LastRequested w="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3572
    const-string v1, " h="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3574
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v1, :cond_4

    .line 3575
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mParentWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 3576
    const-string v1, " mLayoutAttached="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3578
    :cond_4
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v1, :cond_6

    .line 3579
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mIsImWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3580
    const-string v1, " mIsWallpaper="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3581
    const-string v1, " mIsFloatingLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3582
    const-string v1, " mWallpaperVisible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3584
    :cond_6
    if-eqz p3, :cond_7

    .line 3585
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mBaseLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3586
    const-string v1, " mSubLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3587
    const-string v1, " mAnimLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "+"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3588
    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3589
    const-string v1, " mLastLayer="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3591
    :cond_7
    if-eqz p3, :cond_9

    .line 3592
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3593
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    .line 3594
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAppToken="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " isAnimatingWithSavedSurface()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3596
    const-string v1, " mAppDied="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3597
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "drawnStateEvaluated="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3598
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDrawnStateEvaluated()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3599
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mightAffectAllDrawn="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3600
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->mightAffectAllDrawn()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3602
    :cond_8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mViewVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3603
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3604
    const-string v1, " mHaveFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3605
    const-string v1, " mObscured="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3606
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3607
    const-string v1, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3608
    iget v1, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3610
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v1, :cond_a

    .line 3611
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v1, :cond_b

    .line 3613
    :cond_a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mPolicyVisibility="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3614
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3615
    const-string v1, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3616
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3617
    const-string v1, " mAppOpVisibility="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3618
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3619
    const-string v1, " parentHidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3620
    const-string v1, " mPermanentlyHidden="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3621
    const-string v1, " mHiddenWhileSuspended="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3622
    const-string v1, " mForceHideNonSystemOverlayWindow="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3625
    :cond_b
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v1, :cond_d

    .line 3626
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mRelayoutCalled="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3627
    const-string v1, " mLayoutNeeded="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3629
    :cond_d
    if-eqz p3, :cond_10

    .line 3630
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mGivenContentInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3631
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3632
    const-string v1, " mGivenVisibleInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3633
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3634
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3635
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v1, :cond_e

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v1, :cond_f

    .line 3636
    :cond_e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mTouchableInsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3637
    const-string v1, " mGivenInsetsPending="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3638
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 3639
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 3640
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "touchable region="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3642
    .end local v1    # "region":Landroid/graphics/Region;
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFullConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3643
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastReportedConfiguration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3644
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3646
    :cond_10
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mHasSurface="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3647
    const-string v1, " isReadyForDisplay()="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3648
    const-string v1, " mWindowRemovalAllowed="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3649
    if-eqz p3, :cond_11

    .line 3650
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3651
    const-string v1, " last="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3652
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3654
    :cond_11
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_12

    .line 3655
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mCompatFrame="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3656
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3658
    :cond_12
    if-eqz p3, :cond_13

    .line 3659
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Frames: containing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3660
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3661
    const-string v1, " parent="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3662
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3663
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    display="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3664
    const-string v1, " overscan="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3665
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3666
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3667
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3668
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3669
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    decor="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3670
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3671
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "    outset="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3672
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3673
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Cur insets: overscan="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3674
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3675
    const-string v1, " content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3676
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3677
    const-string v1, " stable="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3678
    const-string v1, " surface="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3679
    const-string v1, " outsets="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3681
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3682
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Lst insets: overscan="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3683
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3684
    const-string v1, " content="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3685
    const-string v1, " visible="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3686
    const-string v1, " stable="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3687
    const-string v1, " physical="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3688
    const-string v1, " outset="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 3689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " cutout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3692
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3693
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3694
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3695
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v1, :cond_15

    .line 3696
    :cond_14
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mAnimatingExit="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3697
    const-string v1, " mRemoveOnExit="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3698
    const-string v1, " mDestroying="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3699
    const-string v1, " mRemoved="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3701
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v1

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_16

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v1, :cond_18

    .line 3702
    :cond_16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mOrientationChanging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3703
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3704
    const-string v1, " configOrientationChanging="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3705
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 3706
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_17

    const/4 v1, 0x1

    goto :goto_0

    :cond_17
    const/4 v1, 0x0

    .line 3705
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3707
    const-string v1, " mAppFreezing="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    .line 3708
    const-string v1, " mReportOrientationChanged="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 3710
    :cond_18
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v1, :cond_19

    .line 3711
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLastFreezeDuration="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3712
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v1, v1

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3714
    :cond_19
    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1b

    .line 3715
    :cond_1a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mHScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 3716
    const-string v1, " mVScale="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 3718
    :cond_1b
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1c

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1d

    .line 3719
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mWallpaperX="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 3720
    const-string v1, " mWallpaperY="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 3722
    :cond_1d
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1e

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1f

    .line 3723
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mWallpaperXStep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(F)V

    .line 3724
    const-string v1, " mWallpaperYStep="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(F)V

    .line 3726
    :cond_1f
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_20

    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v2, :cond_21

    .line 3728
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mWallpaperDisplayOffsetX="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3729
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 3730
    const-string v1, " mWallpaperDisplayOffsetY="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3731
    iget v1, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 3733
    :cond_21
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_22

    .line 3734
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDrawLock="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3736
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3737
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isDragResizing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3739
    :cond_23
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 3740
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeDragResizing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3742
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isOnScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3743
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isVisible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3744
    return-void
.end method

.method expandForSurfaceInsets(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .line 4670
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    neg-int v2, v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    neg-int v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;->inset(IIII)V

    .line 4674
    return-void
.end method

.method fillsDisplay()Z
    .locals 3

    .line 2050
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 2051
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v0, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .param p2, "traverseTopToBottom"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    .line 4173
    .local p1, "callback":Lcom/android/internal/util/ToBooleanFunction;, "Lcom/android/internal/util/ToBooleanFunction<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4175
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowState;->applyInOrderWithImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0

    .line 4178
    :cond_0
    if-eqz p2, :cond_1

    .line 4179
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowTopToBottom(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0

    .line 4181
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->forAllWindowBottomToTop(Lcom/android/internal/util/ToBooleanFunction;)Z

    move-result v0

    return v0
.end method

.method forceWindowsScaleableInTransaction(Z)V
    .locals 1
    .param p1, "force"    # Z

    .line 2079
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2080
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowSurfaceController;->forceScaleableInTransaction(Z)V

    .line 2083
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->forceWindowsScaleableInTransaction(Z)V

    .line 2084
    return-void
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .line 1394
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .line 1369
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method getBackdropFrame(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p1, "frame"    # Landroid/graphics/Rect;

    .line 3296
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3297
    .local v0, "resizing":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->useWindowFrameForBackdrop()Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v0, :cond_2

    goto :goto_2

    .line 3300
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    .line 3301
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v3, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3302
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    return-object v1

    .line 3298
    .end local v2    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    :goto_2
    return-object p1
.end method

.method public getBaseType()I
    .locals 1

    .line 1389
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTopParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    return v0
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 1

    .line 1314
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1316
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 1319
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    .line 3203
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3204
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mFrozenMergedConfig:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    return-object v0

    .line 3207
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1340
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1330
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    .line 1570
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1571
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 1572
    const/4 v1, -0x1

    return v1

    .line 1574
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    return v1
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .line 1564
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1565
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDrawnStateEvaluated()Z
    .locals 1

    .line 816
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    return v0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1325
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getFrameNumber()J
    .locals 2

    .line 5116
    iget-wide v0, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    return-wide v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .line 1359
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .line 1354
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .line 1364
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method getHighestAnimLayer()I
    .locals 4

    .line 4160
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    .line 4161
    .local v0, "highest":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 4162
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4163
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getHighestAnimLayer()I

    move-result v3

    .line 4164
    .local v3, "childLayer":I
    if-le v3, v0, :cond_0

    .line 4165
    move v0, v3

    .line 4161
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    .end local v3    # "childLayer":I
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 4168
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .line 1627
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->mInputDispatchingTimeoutNanos:J

    goto :goto_0

    .line 1629
    :cond_0
    const-wide v0, 0x12a05f200L

    .line 1627
    :goto_0
    return-wide v0
.end method

.method getLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 2593
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {p1, v0}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2594
    return-void
.end method

.method getMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 2
    .param p1, "outConfiguration"    # Landroid/util/MergedConfiguration;

    .line 2583
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 2584
    .local v0, "globalConfig":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 2585
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    invoke-virtual {p1, v0, v1}, Landroid/util/MergedConfiguration;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2586
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 2

    .line 3748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3749
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3748
    return-object v0
.end method

.method public getNeedsMenuLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 1
    .param p1, "bottom"    # Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    .line 1374
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/DisplayContent;->getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    return v0
.end method

.method getOrientationChanging()Z
    .locals 2

    .line 1534
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1534
    :goto_0
    return v0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .locals 1

    .line 837
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method getParentWindow()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 3893
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getReplacingWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 4014
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    if-eqz v0, :cond_0

    .line 4015
    return-object p0

    .line 4017
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4018
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4019
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getReplacingWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4020
    .local v2, "replacing":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_1

    .line 4021
    return-object v2

    .line 4017
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    .end local v2    # "replacing":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4024
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method getResizeMode()I
    .locals 1

    .line 3441
    iget v0, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    return v0
.end method

.method public getRotationAnimationHint()I
    .locals 1

    .line 4029
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    .line 4030
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mRotationAnimationHint:I

    return v0

    .line 4032
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .locals 1

    .line 4897
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-eqz v0, :cond_0

    .line 4898
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v0, v0, Lcom/android/server/wm/Session;->mSurfaceSession:Landroid/view/SurfaceSession;

    return-object v0

    .line 4900
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    return-object v0
.end method

.method public getShown()Z
    .locals 1

    .line 1822
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getStableFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1349
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 4

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1583
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    .line 1584
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 1585
    iget-object v1, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    return-object v1

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 1591
    .local v1, "dc":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-lt v2, v3, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public getSurfaceLayer()I
    .locals 1

    .line 1384
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .line 1379
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method getTask()Lcom/android/server/wm/Task;
    .locals 1

    .line 1578
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method getTopParentWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    .line 3898
    move-object v0, p0

    .line 3899
    .local v0, "current":Lcom/android/server/wm/WindowState;
    move-object v1, v0

    .line 3900
    .local v0, "topParent":Lcom/android/server/wm/WindowState;
    .local v1, "current":Lcom/android/server/wm/WindowState;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v2, :cond_1

    .line 3901
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3905
    if-eqz v1, :cond_0

    .line 3906
    move-object v0, v1

    goto :goto_0

    .line 3909
    :cond_1
    return-object v0
.end method

.method getTouchableRegion(Landroid/graphics/Region;I)I
    .locals 7
    .param p1, "region"    # Landroid/graphics/Region;
    .param p2, "flags"    # I

    .line 2464
    and-int/lit8 v0, p2, 0x28

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2465
    .local v0, "modal":Z
    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    .line 2467
    or-int/lit8 p2, p2, 0x20

    .line 2473
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2474
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    .line 2475
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2477
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 2479
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2482
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 2483
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    const/16 v3, 0x1e

    invoke-static {v3, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v3

    .line 2485
    .local v3, "delta":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    neg-int v5, v3

    neg-int v6, v3

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 2487
    .end local v2    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "delta":I
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 2488
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 2489
    .end local v1    # "task":Lcom/android/server/wm/Task;
    goto :goto_2

    .line 2491
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 2493
    :goto_2
    return p2
.end method

.method getTouchableRegion(Landroid/graphics/Region;)V
    .locals 3
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .line 3139
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 3140
    .local v0, "frame":Landroid/graphics/Rect;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v1, :pswitch_data_0

    .line 3143
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 3144
    goto :goto_0

    .line 3152
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 3153
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 3149
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3150
    goto :goto_0

    .line 3146
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3147
    nop

    .line 3157
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->cropRegionToStackBoundsIfNeeded(Landroid/graphics/Region;)V

    .line 3158
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getTransformationMatrix([FLandroid/graphics/Matrix;)V
    .locals 6
    .param p1, "float9"    # [F
    .param p2, "outMatrix"    # Landroid/graphics/Matrix;

    .line 4803
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDx:F

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 4804
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDx:F

    const/4 v1, 0x3

    aput v0, p1, v1

    .line 4805
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDtDy:F

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 4806
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDsDy:F

    const/4 v1, 0x4

    aput v0, p1, v1

    .line 4807
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 4808
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 4811
    .local v1, "y":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 4812
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4813
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v3

    .line 4814
    .local v3, "parentWindow":Lcom/android/server/wm/WindowState;
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 4815
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, v3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 4816
    .end local v3    # "parentWindow":Lcom/android/server/wm/WindowState;
    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 4817
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 4818
    .local v3, "parentBounds":Landroid/graphics/Rect;
    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    .line 4819
    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v4

    .line 4821
    .end local v3    # "parentBounds":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    const/4 v3, 0x2

    int-to-float v4, v0

    aput v4, p1, v3

    .line 4822
    const/4 v3, 0x5

    int-to-float v4, v1

    aput v4, p1, v3

    .line 4823
    const/4 v3, 0x6

    const/4 v4, 0x0

    aput v4, p1, v3

    .line 4824
    const/4 v3, 0x7

    aput v4, p1, v3

    .line 4825
    const/16 v3, 0x8

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, p1, v3

    .line 4826
    invoke-virtual {p2, p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 4827
    return-void
.end method

.method getVisibleBounds(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .line 1599
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1600
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->cropWindowsToStackBounds()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1601
    .local v1, "intersectWithStackBounds":Z
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 1602
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    .line 1603
    if-eqz v1, :cond_2

    .line 1604
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1605
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v2, :cond_1

    .line 1606
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 1608
    :cond_1
    const/4 v1, 0x0

    .line 1612
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1613
    if-eqz v1, :cond_3

    .line 1614
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1617
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1618
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1619
    if-eqz v1, :cond_4

    .line 1620
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1622
    :cond_4
    return-void

    .line 1624
    :cond_5
    return-void
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;)",
            "Lcom/android/server/wm/WindowState;"
        }
    .end annotation

    .line 4305
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/WindowState;>;"
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4306
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, p0

    nop

    :cond_0
    return-object v1

    .line 4312
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4313
    .local v0, "i":I
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4315
    .local v2, "child":Lcom/android/server/wm/WindowState;
    :goto_0
    if-ltz v0, :cond_4

    iget v3, v2, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ltz v3, :cond_4

    .line 4316
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4317
    return-object v2

    .line 4319
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 4320
    if-gez v0, :cond_3

    .line 4321
    goto :goto_1

    .line 4323
    :cond_3
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 4326
    :cond_4
    :goto_1
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4327
    return-object p0

    .line 4330
    :cond_5
    :goto_2
    if-ltz v0, :cond_8

    .line 4331
    invoke-interface {p1, v2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4332
    return-object v2

    .line 4334
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 4335
    if-gez v0, :cond_7

    .line 4336
    goto :goto_3

    .line 4338
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lcom/android/server/wm/WindowState;

    goto :goto_2

    .line 4341
    :cond_8
    :goto_3
    return-object v1
.end method

.method getWindowInfo()Landroid/view/WindowInfo;
    .locals 9

    .line 4118
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v0

    .line 4119
    .local v0, "windowInfo":Landroid/view/WindowInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, v0, Landroid/view/WindowInfo;->type:I

    .line 4120
    iget v1, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v1, v0, Landroid/view/WindowInfo;->layer:I

    .line 4121
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 4122
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    .line 4123
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-interface {v1}, Landroid/view/IApplicationToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    .line 4125
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4128
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7cf

    if-gt v1, v2, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 4132
    .local v1, "isPanelWindow":Z
    :goto_0
    iget v2, v0, Landroid/view/WindowInfo;->type:I

    const/16 v5, 0x7f0

    if-ne v2, v5, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v3

    .line 4134
    .local v2, "isAccessibilityOverlay":Z
    :goto_1
    iget-object v5, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 4135
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, v0, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 4137
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:J

    iput-wide v5, v0, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    .line 4138
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v0, Landroid/view/WindowInfo;->focused:Z

    .line 4139
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 4140
    .local v5, "task":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_5
    move v4, v3

    :goto_2
    iput-boolean v4, v0, Landroid/view/WindowInfo;->inPictureInPicture:Z

    .line 4142
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v4, :cond_6

    .line 4143
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v4}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 4146
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowList;->size()I

    move-result v4

    .line 4147
    .local v4, "childCount":I
    if-lez v4, :cond_8

    .line 4148
    iget-object v6, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v6, :cond_7

    .line 4149
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 4151
    :cond_7
    nop

    .local v3, "j":I
    :goto_3
    if-ge v3, v4, :cond_8

    .line 4152
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .line 4153
    .local v6, "child":Lcom/android/server/wm/WindowState;
    iget-object v7, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v8}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4151
    .end local v6    # "child":Lcom/android/server/wm/WindowState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4156
    .end local v3    # "j":I
    :cond_8
    return-object v0
.end method

.method public getWindowPid()I
    .locals 1

    .line 1815
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    return v0
.end method

.method getWindowTag()Ljava/lang/CharSequence;
    .locals 2

    .line 3753
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3754
    .local v0, "tag":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 3755
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 3757
    :cond_1
    return-object v0
.end method

.method handleWindowMovedIfNeeded()V
    .locals 7

    .line 1989
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1990
    return-void

    .line 1995
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 1996
    .local v0, "left":I
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1997
    .local v1, "top":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1998
    .local v2, "task":Lcom/android/server/wm/Task;
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 1999
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForMinimizedDockedStack()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v2, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 2000
    invoke-virtual {v4}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 2001
    .local v4, "adjustedForMinimizedDockOrIme":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v5, v5, 0x40

    if-nez v5, :cond_3

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v4, :cond_3

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->hasMovementAnimations()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v5, :cond_3

    .line 2006
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowState;->startMoveAnimation(II)V

    .line 2010
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v5, :cond_4

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v5

    if-nez v5, :cond_4

    .line 2012
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v5}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 2017
    :cond_4
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2018
    iget v5, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string/jumbo v6, "moved"

    invoke-static {v5, v6}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 2024
    :cond_5
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5, v0, v1}, Landroid/view/IWindow;->moved(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2026
    goto :goto_1

    .line 2025
    :catch_0
    move-exception v5

    .line 2027
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 2028
    return-void
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .line 1634
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasContentToDisplay()Z
    .locals 1

    .line 1656
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1657
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1658
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1661
    :cond_1
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->hasContentToDisplay()Z

    move-result v0

    return v0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .line 2723
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hasVisibleNotDrawnWallpaper()Z
    .locals 4

    .line 4511
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4512
    return v1

    .line 4514
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_2

    .line 4515
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 4516
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasVisibleNotDrawnWallpaper()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4517
    return v1

    .line 4514
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4520
    .end local v0    # "j":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .line 2791
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 6
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .line 2795
    if-eqz p1, :cond_0

    .line 2796
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2797
    const/4 p1, 0x0

    .line 2800
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 2801
    .local v0, "current":Z
    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 2803
    return v1

    .line 2805
    :cond_2
    if-eqz p1, :cond_3

    .line 2806
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2807
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2808
    const/4 p1, 0x0

    .line 2811
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 2812
    const/4 v2, 0x1

    if-nez p1, :cond_6

    .line 2813
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_4

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    :cond_4
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 2818
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 2819
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v3, p0, :cond_6

    .line 2820
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v3, :cond_5

    const-string v3, "WindowManager"

    const-string v4, "WindowState.hideLw: setting mFocusMayChange true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    .line 2825
    :cond_6
    if-eqz p2, :cond_7

    .line 2826
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2828
    :cond_7
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v3, p0, :cond_8

    .line 2829
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2831
    :cond_8
    return v2
.end method

.method hideNonSystemOverlayWindowsWhenVisible()Z
    .locals 2

    .line 3885
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-boolean v0, v0, Lcom/android/server/wm/Session;->mCanHideNonSystemOverlayWindows:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hidePermanentlyLw()V
    .locals 1

    .line 2927
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_0

    .line 2928
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    .line 2929
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    .line 2931
    :cond_0
    return-void
.end method

.method hideWallpaperWindow(ZLjava/lang/String;)V
    .locals 4
    .param p1, "wasDeferred"    # Z
    .param p2, "reason"    # Ljava/lang/String;

    .line 4469
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "j":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4470
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4471
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowState;->hideWallpaperWindow(ZLjava/lang/String;)V

    .line 4469
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4473
    .end local v0    # "j":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_2

    .line 4474
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowStateAnimator;->hide(Ljava/lang/String;)V

    .line 4475
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 4476
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->dispatchWallpaperVisibility(Z)V

    .line 4477
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4478
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2

    .line 4479
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 4480
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v1, :cond_2

    .line 4481
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hideWallpaperWindow "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    .line 4486
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    return-void
.end method

.method initAppOpsState()V
    .locals 5

    .line 2884
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 2892
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 2891
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v0

    .line 2893
    .local v0, "mode":I
    if-eqz v0, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 2894
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2896
    :cond_1
    return-void

    .line 2885
    .end local v0    # "mode":I
    :cond_2
    :goto_0
    return-void
.end method

.method public isActivityTypeHome()Z
    .locals 1

    .line 1825
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActivityTypeRecents()Z
    .locals 1

    .line 1828
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isActivityTypeRecents()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAlive()Z
    .locals 1

    .line 2958
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .locals 1

    .line 1809
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result v0

    return v0
.end method

.method isAppWindowCompat(Landroid/graphics/Rect;)Z
    .locals 6
    .param p1, "pf"    # Landroid/graphics/Rect;

    .line 888
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->IS_SCREEN_COMPAT_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 891
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    .line 892
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getCompatMode(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    .line 894
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 896
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v0, v1

    .line 897
    .local v0, "isCompat":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsAppWindowCompat:Z

    if-eq v1, v0, :cond_3

    .line 898
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsAppWindowCompat:Z

    .line 899
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_3

    .line 900
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowState$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/WindowState$3;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 914
    :cond_3
    return v0

    .line 888
    .end local v0    # "isCompat":Z
    :cond_4
    :goto_0
    return v1
.end method

.method isChildWindow()Z
    .locals 1

    .line 3870
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    return v0
.end method

.method isClosing()Z
    .locals 1

    .line 2962
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClosingOrEnteringPip()Z

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

.method isConfigChanged()Z
    .locals 2

    .line 2057
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getLastReportedConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDefaultDisplay()Z
    .locals 2

    .line 3098
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3099
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 3101
    const/4 v1, 0x0

    return v1

    .line 3103
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return v1
.end method

.method public isDimming()Z
    .locals 1

    .line 5052
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    return v0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .line 1798
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1799
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    .line 1800
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1801
    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1799
    :goto_0
    return v1
.end method

.method isDockedResizing()Z
    .locals 2

    .line 3491
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3492
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDockedResizing()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 3491
    :goto_0
    return v1
.end method

.method isDragResizeChanged()Z
    .locals 2

    .line 3413
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isDragResizing()Z
    .locals 1

    .line 3487
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    return v0
.end method

.method public isDrawFinishedLw()Z
    .locals 2

    .line 1849
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDrawnLw()Z
    .locals 2

    .line 1861
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFocused()Z
    .locals 2

    .line 3345
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3346
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3347
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1835
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 1837
    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_4

    .line 1839
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_2

    .line 1840
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v1, 0x1

    .line 1835
    :goto_1
    return v1
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 4
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .line 1638
    const v0, 0x3f7fff58    # 0.99999f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    if-ltz v1, :cond_7

    const v1, 0x3f800054    # 1.00001f

    cmpl-float v3, p1, v1

    if-lez v3, :cond_0

    goto :goto_3

    .line 1639
    :cond_0
    cmpg-float v0, p4, v0

    if-ltz v0, :cond_6

    cmpl-float v0, p4, v1

    if-lez v0, :cond_1

    goto :goto_2

    .line 1640
    :cond_1
    const v0, -0x4a79c843    # -1.0E-6f

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_5

    const v1, 0x358637bd    # 1.0E-6f

    cmpl-float v3, p2, v1

    if-lez v3, :cond_2

    goto :goto_1

    .line 1641
    :cond_2
    cmpg-float v0, p3, v0

    if-ltz v0, :cond_4

    cmpl-float v0, p3, v1

    if-lez v0, :cond_3

    goto :goto_0

    .line 1642
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 1641
    :cond_4
    :goto_0
    return v2

    .line 1640
    :cond_5
    :goto_1
    return v2

    .line 1639
    :cond_6
    :goto_2
    return v2

    .line 1638
    :cond_7
    :goto_3
    return v2
.end method

.method public isInMultiWindowMode()Z
    .locals 2

    .line 3352
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3353
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .line 5112
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInputMethodWindow()Z
    .locals 1

    .line 4038
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    return v0
.end method

.method isInteresting()Z
    .locals 1

    .line 1757
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1758
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isFreezingScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1757
    :goto_0
    return v0
.end method

.method isLaidOut()Z
    .locals 2

    .line 4747
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLetterboxedAppWindow()Z
    .locals 1

    .line 3369
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3370
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isLetterboxedForDisplayCutoutLw()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 3369
    :goto_0
    return v0
.end method

.method public isLetterboxedForDisplayCutoutLw()Z
    .locals 3

    .line 3376
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3378
    return v1

    .line 3380
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mParentFrameWasClippedByDisplayCutout:Z

    if-nez v0, :cond_1

    .line 3382
    return v1

    .line 3384
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 3386
    return v1

    .line 3388
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3390
    return v1

    .line 3394
    :cond_3
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->frameCoversEntireAppTokenBounds()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public isLetterboxedOverlappingWith(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 3409
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppWindowToken;->isLetterboxOverlappingWith(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNotchUnLimit()Z
    .locals 6

    .line 926
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->IS_SUPPORT_CAMERA_NOTCH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 927
    :cond_0
    const/4 v0, 0x0

    .line 928
    .local v0, "isUnLimited":Z
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->mIsIgnoreCameraNotch:Z

    if-eqz v2, :cond_1

    .line 929
    const/4 v0, 0x0

    goto :goto_0

    .line 930
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v2, v3, :cond_2

    .line 931
    const/4 v0, 0x0

    goto :goto_0

    .line 932
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-ne v2, v4, :cond_4

    .line 934
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    if-ne v2, v3, :cond_3

    move v1, v3

    nop

    :cond_3
    move v0, v1

    goto :goto_0

    .line 936
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    if-ne v2, v3, :cond_5

    .line 937
    const/4 v0, 0x1

    goto :goto_0

    .line 939
    :cond_5
    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_6

    const-string v2, "SYSTEM_ALERT_WINDOW"

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 940
    invoke-static {v4}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 941
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/WindowManagerService;->getCompatMode(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_6

    move v1, v3

    nop

    .line 943
    .local v1, "isSystemAlertUnLimit":Z
    :cond_6
    move v0, v1

    .line 945
    .end local v1    # "isSystemAlertUnLimit":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    if-eq v1, v0, :cond_7

    .line 946
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    .line 947
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_7

    .line 948
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraNotch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isUnLimited="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :cond_7
    return v0
.end method

.method public isNotchUnLimited()Z
    .locals 1

    .line 922
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->mIsIgnoreCameraNotch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 923
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    return v0
.end method

.method isObscuringDisplay()Z
    .locals 3

    .line 2042
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2043
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->fillsParent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2044
    return v1

    .line 2046
    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isOpaqueDrawn()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->fillsDisplay()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method isOnScreen()Z
    .locals 4

    .line 1730
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v0, :cond_0

    goto :goto_3

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1734
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1736
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1735
    :cond_2
    move v1, v2

    goto :goto_0

    .line 1736
    :cond_3
    nop

    .line 1735
    :goto_0
    return v1

    .line 1738
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    :cond_6
    :goto_1
    move v1, v2

    :goto_2
    return v1

    .line 1731
    .end local v0    # "atoken":Lcom/android/server/wm/AppWindowToken;
    :cond_7
    :goto_3
    return v1
.end method

.method isParentWindowHidden()Z
    .locals 2

    .line 3913
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3914
    .local v0, "parent":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHidden:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .line 1708
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReadyForDisplay()Z
    .locals 2

    .line 1766
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1767
    return v1

    .line 1769
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_3

    .line 1770
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1771
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    nop

    .line 1769
    :cond_3
    return v1
.end method

.method public isRtl()Z
    .locals 2

    .line 4465
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isSelfOrAncestorWindowAnimatingExit()Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4350
    move-object v0, p0

    .line 4352
    .local v0, "window":Lcom/android/server/wm/WindowState;
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v1, :cond_1

    .line 4353
    const/4 v1, 0x1

    return v1

    .line 4355
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4356
    if-nez v0, :cond_0

    .line 4357
    const/4 v1, 0x0

    return v1
.end method

.method isVisible()Z
    .locals 1

    .line 1666
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVisibleLw()Z
    .locals 1

    .line 1680
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    return v0
.end method

.method isVisibleNow()Z
    .locals 2

    .line 1698
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1699
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1698
    :goto_0
    return v0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1718
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    .line 1719
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 1718
    :goto_0
    return v1
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .line 1399
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->mVoiceInteraction:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWinVisibleLw()Z
    .locals 1

    .line 1689
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1690
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1689
    :goto_0
    return v0
.end method

.method layoutInParentFrame()Z
    .locals 2

    .line 3874
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method mightAffectAllDrawn()Z
    .locals 4

    .line 1747
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 1749
    .local v0, "isAppType":Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v3, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method needsRelativeLayeringToIme()Z
    .locals 5

    .line 5019
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 5020
    return v1

    .line 5023
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 5025
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5026
    return v2

    .line 5028
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_3

    .line 5032
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    .line 5033
    .local v0, "imeTarget":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_2

    if-eq v0, p0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    if-ne v3, v4, :cond_2

    .line 5034
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowState;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v3

    if-gtz v3, :cond_2

    move v1, v2

    nop

    .line 5035
    .local v1, "inTokenWithAndAboveImeTarget":Z
    :cond_2
    return v1

    .line 5037
    .end local v0    # "imeTarget":Lcom/android/server/wm/WindowState;
    .end local v1    # "inTokenWithAndAboveImeTarget":Z
    :cond_3
    return v1
.end method

.method needsZBoost()Z
    .locals 2

    .line 4906
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 4907
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 4908
    .local v0, "appToken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_0

    .line 4909
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->needsZBoost()Z

    move-result v1

    return v1

    .line 4912
    .end local v0    # "appToken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    return v0
.end method

.method protected onAnimationFinished()V
    .locals 1

    .line 4793
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->onAnimationFinished()V

    .line 4794
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 2
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"    # Landroid/view/SurfaceControl;

    .line 4945
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4948
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 4949
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfacePosition:Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 4950
    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0
    .param p1, "t"    # Landroid/view/SurfaceControl$Transaction;

    .line 4954
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V

    .line 4955
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 4956
    return-void
.end method

.method onAppVisibilityChanged(ZZ)Z
    .locals 7
    .param p1, "visible"    # Z
    .param p2, "runningAppAnimation"    # Z

    .line 1886
    const/4 v0, 0x0

    .line 1888
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1889
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1890
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/WindowState;->onAppVisibilityChanged(ZZ)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1888
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1893
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 1897
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1898
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 1899
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 1900
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    .line 1902
    :cond_1
    return v0

    .line 1905
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    .line 1906
    .local v1, "isVisibleNow":Z
    if-eq p1, v1, :cond_4

    .line 1911
    if-nez p2, :cond_3

    if-eqz v1, :cond_3

    .line 1912
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1914
    .local v2, "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    const/4 v3, 0x2

    .line 1915
    .local v3, "winTransit":I
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1917
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v4

    if-nez v4, :cond_3

    .line 1918
    invoke-virtual {v2, p0, v6}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1921
    .end local v2    # "accessibilityController":Lcom/android/server/wm/AccessibilityController;
    .end local v3    # "winTransit":I
    :cond_3
    const/4 v0, 0x1

    .line 1922
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1925
    :cond_4
    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 1555
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 1557
    if-eqz p1, :cond_0

    .line 1558
    iget v0, p1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 1559
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->displayId:I

    .line 1561
    :cond_0
    return-void
.end method

.method onExitAnimationDone()V
    .locals 5

    .line 4361
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExitAnimationDone in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": exiting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " remove="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " selfAnimating="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4361
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4365
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 4367
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4368
    .local v0, "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .line 4368
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 4369
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onExitAnimationDone()V

    .line 4368
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4373
    .end local v0    # "childWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    .end local v2    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 4374
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4375
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 4378
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_2

    .line 4380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchWindowShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4382
    goto :goto_1

    .line 4381
    :catch_0
    move-exception v0

    .line 4386
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4387
    return-void

    .line 4391
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_4

    .line 4392
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 4395
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isSelfOrAncestorWindowAnimatingExit()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4396
    return-void

    .line 4399
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_7

    :cond_6
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit animation finished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": remove="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4402
    :cond_7
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4404
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v0

    .line 4408
    .local v0, "hasSurface":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    const-string/jumbo v4, "onExitAnimationDone"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V

    .line 4414
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_8

    .line 4415
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->destroySurfaces()V

    goto :goto_2

    .line 4417
    :cond_8
    if-eqz v0, :cond_9

    .line 4418
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4420
    :cond_9
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-eqz v1, :cond_a

    .line 4421
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4422
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    .line 4425
    :cond_a
    :goto_2
    iput-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4426
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 4427
    return-void
.end method

.method onMovedByResize()V
    .locals 3

    .line 1880
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMovedByResize: Moving "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    .line 1882
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onMovedByResize()V

    .line 1883
    return-void
.end method

.method onParentSet()V
    .locals 1

    .line 829
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onParentSet()V

    .line 830
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setDrawnStateEvaluated(Z)V

    .line 832
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->reapplyMagnificationSpec()V

    .line 833
    return-void
.end method

.method onResize()V
    .locals 4

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    .line 1955
    .local v0, "resizingWindows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowState;>;"
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1956
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onResize: Resizing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1960
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mResizedWhileGone:Z

    .line 1963
    :cond_2
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onResize()V

    .line 1964
    return-void
.end method

.method onSetAppExiting()Z
    .locals 5

    .line 1929
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1930
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v1, 0x0

    .line 1932
    .local v1, "changed":Z
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1933
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1935
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1936
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p0, v4}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    .line 1938
    :cond_0
    const/4 v1, 0x1

    .line 1939
    if-eqz v0, :cond_1

    .line 1940
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 1944
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_2

    .line 1945
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 1946
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onSetAppExiting()Z

    move-result v4

    or-int/2addr v1, v4

    .line 1944
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1949
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method onStartFreezingScreen()V
    .locals 2

    .line 3015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3016
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 3017
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 3018
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onStartFreezingScreen()V

    .line 3016
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    goto :goto_0

    .line 3020
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method onStopFreezingScreen()Z
    .locals 6

    .line 3023
    const/4 v0, 0x0

    .line 3024
    .local v0, "unfrozeWindows":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 3024
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3025
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 3026
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->onStopFreezingScreen()Z

    move-result v4

    or-int/2addr v0, v4

    .line 3024
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3029
    .end local v1    # "i":I
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v1, :cond_1

    .line 3030
    return v0

    .line 3033
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    .line 3035
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 3037
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set mOrientationChanging of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3038
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 3039
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-boolean v1, v3, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    .line 3041
    :cond_3
    iput v1, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3042
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 3043
    return v2
.end method

.method onUnfreezeBounds()V
    .locals 3

    .line 1967
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1968
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 1969
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->onUnfreezeBounds()V

    .line 1967
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1972
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v0, :cond_1

    .line 1973
    return-void

    .line 1976
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 1977
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    .line 1978
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1979
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1981
    :cond_2
    return-void
.end method

.method onWindowReplacementTimeout()V
    .locals 2

    .line 2061
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v0, :cond_0

    .line 2068
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    goto :goto_1

    .line 2070
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 2071
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 2072
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->onWindowReplacementTimeout()V

    .line 2070
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2075
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method openInputChannel(Landroid/view/InputChannel;)V
    .locals 5
    .param p1, "outInputChannel"    # Landroid/view/InputChannel;

    .line 2352
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_1

    .line 2355
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2356
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v1

    .line 2357
    .local v1, "inputChannels":[Landroid/view/InputChannel;
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 2358
    const/4 v3, 0x1

    aget-object v3, v1, v3

    iput-object v3, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    .line 2359
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    aget-object v2, v1, v2

    iput-object v2, v3, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 2360
    if-eqz p1, :cond_0

    .line 2361
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, p1}, Landroid/view/InputChannel;->transferTo(Landroid/view/InputChannel;)V

    .line 2362
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->dispose()V

    .line 2363
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    goto :goto_0

    .line 2368
    :cond_0
    new-instance v2, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClientChannel:Landroid/view/InputChannel;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;-><init>(Lcom/android/server/wm/WindowState;Landroid/view/InputChannel;)V

    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mDeadWindowEventReceiver:Lcom/android/server/wm/WindowState$DeadWindowEventReceiver;

    .line 2370
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 2371
    return-void

    .line 2353
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "inputChannels":[Landroid/view/InputChannel;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method orientationChangeTimedOut()V
    .locals 1

    .line 1546
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1547
    return-void
.end method

.method performShowLocked()Z
    .locals 6

    .line 4043
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4044
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hiding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", belonging to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 4046
    return v1

    .line 4049
    :cond_1
    const-string/jumbo v0, "performShow on "

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4051
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4052
    .local v0, "drawState":I
    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v2, :cond_2

    if-ne v0, v3, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v4, v3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_3

    .line 4054
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4, p0, v5}, Lcom/android/server/wm/AppWindowToken;->onFirstWindowDrawn(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowStateAnimator;)V

    .line 4057
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v4, v3, :cond_9

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v3

    if-nez v3, :cond_4

    goto/16 :goto_1

    .line 4061
    :cond_4
    const-string v3, "Showing "

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowState;->logPerformShow(Ljava/lang/String;)V

    .line 4063
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 4064
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 4067
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/high16 v4, -0x40800000    # -1.0f

    iput v4, v3, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    .line 4068
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_5

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performShowLocked: mDrawState=HAS_DRAWN in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4070
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput v2, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 4071
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 4073
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_7

    .line 4074
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHidden:Z

    .line 4075
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 4077
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 4077
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_7

    .line 4078
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 4079
    .local v4, "c":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v5, :cond_6

    .line 4080
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    .line 4084
    if-eqz v1, :cond_6

    .line 4085
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 4077
    .end local v4    # "c":Lcom/android/server/wm/WindowState;
    :cond_6
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 4091
    .end local v1    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v2    # "i":I
    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7db

    if-ne v1, v2, :cond_8

    .line 4092
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->resetImeHideRequested()V

    .line 4095
    :cond_8
    return v3

    .line 4058
    :cond_9
    :goto_1
    return v1
.end method

.method public pokeDrawLockLw(J)V
    .locals 5
    .param p1, "timeout"    # J

    .line 2934
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2935
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 2939
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2940
    .local v0, "tag":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 2941
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 2942
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 2945
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_1

    .line 2946
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2949
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto :goto_0

    .line 2950
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_3

    .line 2951
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_3
    :goto_0
    return-void
.end method

.method prelayout()V
    .locals 2

    .line 1646
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1648
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    goto :goto_0

    .line 1650
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 1652
    :goto_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 3

    .line 4932
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    .line 4933
    .local v0, "dimmer":Lcom/android/server/wm/Dimmer;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mIsDimming:Z

    .line 4934
    if-eqz v0, :cond_0

    .line 4935
    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->applyDims(Lcom/android/server/wm/Dimmer;)V

    .line 4937
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition()V

    .line 4939
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowStateAnimator;->prepareSurfaceLocked(Z)V

    .line 4940
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 4941
    return-void
.end method

.method prepareWindowToDisplayDuringRelayout(Z)V
    .locals 9
    .param p1, "wasVisible"    # Z

    .line 2529
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2530
    .local v0, "hasTurnScreenOnFlag":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mAllowTheaterModeWakeFromLayout:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 2532
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "theater_mode_on"

    .line 2531
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v1

    .line 2534
    .local v3, "allowTheaterMode":Z
    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->canTurnScreenOn()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_4

    :cond_4
    :goto_3
    move v4, v1

    .line 2547
    .local v4, "canTurnScreenOn":Z
    :goto_4
    if-eqz v0, :cond_8

    .line 2548
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-interface {v5}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->isInteractive()Z

    move-result v5

    if-nez v5, :cond_7

    .line 2549
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v5, :cond_6

    .line 2550
    :cond_5
    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Relayout window turning screen on: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2554
    :cond_6
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/os/PowerManagerInternal;->setPackageNameWithScreenFlag(Ljava/lang/String;)V

    .line 2556
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mPowerManagerWrapper:Lcom/android/server/wm/WindowState$PowerManagerWrapper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-string v8, "android.server.wm:TURN_ON"

    invoke-interface {v5, v6, v7, v8}, Lcom/android/server/wm/WindowState$PowerManagerWrapper;->wakeUp(JLjava/lang/String;)V

    .line 2560
    :cond_7
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    .line 2561
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWindowToken;->setCanTurnScreenOn(Z)V

    .line 2566
    :cond_8
    if-eqz p1, :cond_a

    .line 2567
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_9

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Already visible and does not turn on screen, skip preparing: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    :cond_9
    return-void

    .line 2572
    :cond_a
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0x10

    if-ne v2, v5, :cond_b

    .line 2574
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2577
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2578
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->applyEnterAnimationLocked()V

    .line 2580
    :cond_c
    return-void
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .line 3328
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3329
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 3330
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 3332
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 3333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3334
    return-void

    .line 3333
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method relayoutVisibleWindow(III)I
    .locals 6
    .param p1, "result"    # I
    .param p2, "attrChanges"    # I
    .param p3, "oldVisibility"    # I

    .line 4681
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    .line 4683
    .local v0, "wasVisible":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x2

    :goto_1
    or-int/2addr p1, v2

    .line 4685
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_2

    .line 4686
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "relayoutVisibleWindow: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mAnimatingExit=true, mRemoveOnExit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDestroying="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4689
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->cancelExitAnimationForNextAnimationLocked()V

    .line 4690
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    .line 4692
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v2, :cond_3

    .line 4693
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    .line 4694
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4696
    :cond_3
    const/16 v2, 0x8

    const/4 v3, 0x1

    if-ne p3, v2, :cond_4

    .line 4697
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, v4, Lcom/android/server/wm/WindowStateAnimator;->mEnterAnimationPending:Z

    .line 4700
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/WindowState;->mLastVisibleLayoutRotation:I

    .line 4702
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, v4, Lcom/android/server/wm/WindowStateAnimator;->mEnteringAnimation:Z

    .line 4704
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->prepareWindowToDisplayDuringRelayout(Z)V

    .line 4706
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_5

    .line 4710
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->tryChangeFormatInPlaceLocked()Z

    move-result v4

    if-nez v4, :cond_5

    .line 4711
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 4712
    or-int/lit8 p1, p1, 0x6

    .line 4722
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4723
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setDragResizing()V

    .line 4728
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v4

    if-nez v4, :cond_6

    .line 4729
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->preserveSurfaceLocked()V

    .line 4730
    or-int/lit8 p1, p1, 0x6

    .line 4734
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4735
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v4

    if-nez v4, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    move v4, v1

    .line 4736
    .local v4, "freeformResizing":Z
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizing()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 4737
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getResizeMode()I

    move-result v5

    if-ne v5, v3, :cond_8

    goto :goto_3

    :cond_8
    move v3, v1

    .line 4738
    .local v3, "dockedResizing":Z
    :goto_3
    if-eqz v4, :cond_9

    const/16 v5, 0x10

    goto :goto_4

    :cond_9
    move v5, v1

    :goto_4
    or-int/2addr p1, v5

    .line 4739
    if-eqz v3, :cond_a

    move v1, v2

    nop

    :cond_a
    or-int/2addr p1, v1

    .line 4740
    return p1
.end method

.method removeIfPossible()V
    .locals 1

    .line 2137
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeIfPossible()V

    .line 2138
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->removeIfPossible(Z)V

    .line 2139
    return-void
.end method

.method removeImmediately()V
    .locals 5

    .line 2088
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2090
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v0, :cond_1

    .line 2092
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WS.removeImmediately: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " Already removed..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    :cond_0
    return-void

    .line 2097
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    .line 2099
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 2100
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    .line 2101
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2104
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2105
    .local v2, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isInputMethodTarget()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2106
    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 2109
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2110
    .local v0, "type":I
    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2111
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2113
    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-eqz v3, :cond_5

    .line 2116
    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2118
    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3, p0}, Lcom/android/server/policy/WindowManagerPolicy;->removeWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    .line 2120
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 2122
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 2123
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 2124
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v3}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 2126
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    invoke-interface {v3, v4, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2130
    goto :goto_0

    .line 2127
    :catch_0
    move-exception v1

    .line 2132
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/WindowManagerService;->postWindowRemoveCleanupLocked(Lcom/android/server/wm/WindowState;)V

    .line 2133
    return-void
.end method

.method removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .locals 5
    .param p1, "replacement"    # Lcom/android/server/wm/WindowState;

    .line 2394
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->hasDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2395
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2396
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->removeReplacedWindow()V

    .line 2397
    return v2

    .line 2400
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 2401
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    .line 2402
    .local v3, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/WindowState;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2403
    return v2

    .line 2400
    .end local v3    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2406
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method reportFocusChangedSerialized(ZZ)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    .line 3181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3183
    goto :goto_0

    .line 3182
    :catch_0
    move-exception v0

    .line 3184
    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_2

    .line 3185
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 3186
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 3187
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 3189
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    .line 3190
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    goto :goto_2

    .line 3194
    :catch_1
    move-exception v3

    goto :goto_3

    .line 3192
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Lcom/android/server/wm/WindowState$WindowId;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowState$WindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3195
    :goto_2
    goto :goto_4

    .line 3194
    :goto_3
    nop

    .line 3186
    .end local v2    # "obs":Landroid/view/IWindowFocusObserver;
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3197
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 3199
    .end local v0    # "N":I
    :cond_2
    return-void
.end method

.method reportResized()V
    .locals 27

    .line 3211
    move-object/from16 v15, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wm.reportResized_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 3213
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reporting new frame to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v15, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    :cond_1
    new-instance v0, Landroid/util/MergedConfiguration;

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 3216
    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 3217
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3219
    .local v0, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v15, v0}, Lcom/android/server/wm/WindowState;->setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 3221
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v3, v9, :cond_2

    .line 3222
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resizing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " WITH DRAW PENDING"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    :cond_2
    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3226
    iget v3, v15, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string/jumbo v4, "reportResized"

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 3231
    :cond_3
    iget-object v3, v15, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 3232
    .local v3, "frame":Landroid/graphics/Rect;
    iget-object v4, v15, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 3233
    .local v4, "overscanInsets":Landroid/graphics/Rect;
    iget-object v5, v15, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 3234
    .local v5, "contentInsets":Landroid/graphics/Rect;
    iget-object v6, v15, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 3235
    .local v6, "visibleInsets":Landroid/graphics/Rect;
    iget-object v7, v15, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    .line 3236
    .local v7, "stableInsets":Landroid/graphics/Rect;
    iget-object v8, v15, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    .line 3237
    .local v8, "outsets":Landroid/graphics/Rect;
    iget-object v10, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v10, v10, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    if-ne v10, v9, :cond_4

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    .line 3238
    .local v9, "reportDraw":Z
    :goto_0
    iget-boolean v11, v15, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    .line 3239
    .local v11, "reportOrientation":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v12

    .line 3240
    .local v12, "displayId":I
    iget-object v10, v15, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v10}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v13

    .line 3241
    .local v13, "displayCutout":Landroid/view/DisplayCutout;
    iget-object v10, v15, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v10, v1, :cond_5

    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v1, v1, Landroid/view/IWindow$Stub;

    if-eqz v1, :cond_5

    .line 3244
    iget-object v1, v15, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/WindowState$4;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    move-object v14, v2

    move-object v2, v15

    move-object v15, v10

    move-object v10, v0

    :try_start_1
    invoke-direct/range {v1 .. v13}, Lcom/android/server/wm/WindowState$4;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    invoke-virtual {v15, v14}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3263
    const/4 v1, 0x0

    move-object/from16 v2, p0

    goto :goto_1

    .line 3276
    .end local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "frame":Landroid/graphics/Rect;
    .end local v4    # "overscanInsets":Landroid/graphics/Rect;
    .end local v5    # "contentInsets":Landroid/graphics/Rect;
    .end local v6    # "visibleInsets":Landroid/graphics/Rect;
    .end local v7    # "stableInsets":Landroid/graphics/Rect;
    .end local v8    # "outsets":Landroid/graphics/Rect;
    .end local v9    # "reportDraw":Z
    .end local v11    # "reportOrientation":Z
    .end local v12    # "displayId":I
    .end local v13    # "displayCutout":Landroid/view/DisplayCutout;
    :catch_0
    move-exception v0

    const/4 v1, 0x0

    move-object/from16 v2, p0

    goto :goto_2

    .line 3257
    .restart local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .restart local v3    # "frame":Landroid/graphics/Rect;
    .restart local v4    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v5    # "contentInsets":Landroid/graphics/Rect;
    .restart local v6    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v7    # "stableInsets":Landroid/graphics/Rect;
    .restart local v8    # "outsets":Landroid/graphics/Rect;
    .restart local v9    # "reportDraw":Z
    .restart local v11    # "reportOrientation":Z
    .restart local v12    # "displayId":I
    .restart local v13    # "displayCutout":Landroid/view/DisplayCutout;
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v14, p0

    move-object/from16 v2, p0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move-object/from16 v19, v7

    move-object/from16 v20, v8

    move/from16 v21, v9

    move-object/from16 v22, v0

    move/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v25, v13

    :try_start_2
    invoke-direct/range {v14 .. v25}, Lcom/android/server/wm/WindowState;->dispatchResized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/util/MergedConfiguration;ZILandroid/view/DisplayCutout;)V

    .line 3263
    :goto_1
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v10, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v10

    if-nez v10, :cond_6

    .line 3264
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v10, v10, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v10}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 3267
    :cond_6
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 3268
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 3269
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 3270
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 3271
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 3272
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    .line 3273
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mDisplayCutoutChanged:Z

    .line 3274
    iget-object v10, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v1, v10, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 3275
    iput-boolean v1, v2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3285
    .end local v0    # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v3    # "frame":Landroid/graphics/Rect;
    .end local v4    # "overscanInsets":Landroid/graphics/Rect;
    .end local v5    # "contentInsets":Landroid/graphics/Rect;
    .end local v6    # "visibleInsets":Landroid/graphics/Rect;
    .end local v7    # "stableInsets":Landroid/graphics/Rect;
    .end local v8    # "outsets":Landroid/graphics/Rect;
    .end local v9    # "reportDraw":Z
    .end local v11    # "reportOrientation":Z
    .end local v12    # "displayId":I
    .end local v13    # "displayCutout":Landroid/view/DisplayCutout;
    goto :goto_3

    .line 3276
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v15

    const/4 v1, 0x0

    .line 3277
    .local v0, "e":Landroid/os/RemoteException;
    :goto_2
    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 3278
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v5, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    iput v1, v2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 3281
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to report \'resized\' to the client of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", removing this window."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3284
    iget-object v1, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3286
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_3
    const-wide/16 v3, 0x20

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 3287
    return-void
.end method

.method requestUpdateWallpaperIfNeeded()V
    .locals 3

    .line 3961
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 3962
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 3963
    iget v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 3964
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 3965
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 3968
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 3969
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3970
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 3968
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 3972
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method resetAppOpsState()V
    .locals 4

    .line 2899
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v0, :cond_0

    .line 2900
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2902
    :cond_0
    return-void
.end method

.method resetDragResizingChangeReported()V
    .locals 1

    .line 3436
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizingChangeReported:Z

    .line 3437
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->resetDragResizingChangeReported()V

    .line 3438
    return-void
.end method

.method resetFrame(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "f"    # Landroid/graphics/Rect;

    .line 873
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->IS_SCREEN_COMPAT_ENABLED:Z

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 875
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 876
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 877
    .local v1, "width":I
    const/16 v2, 0x780

    if-le v0, v2, :cond_2

    sget v3, Lcom/android/server/wm/WindowManagerService;->MAX_SCREEN_SIZE:I

    if-gt v0, v3, :cond_2

    .line 879
    sget v2, Lcom/android/server/wm/WindowManagerService;->mPortTop:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 880
    sget v2, Lcom/android/server/wm/WindowManagerService;->mPortBottom:I

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 881
    :cond_2
    if-le v1, v2, :cond_3

    sget v2, Lcom/android/server/wm/WindowManagerService;->MAX_SCREEN_SIZE:I

    if-gt v1, v2, :cond_3

    .line 883
    sget v2, Lcom/android/server/wm/WindowManagerService;->mLandLeft:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 884
    sget v2, Lcom/android/server/wm/WindowManagerService;->mLandRight:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 886
    :cond_3
    :goto_0
    return-void
.end method

.method resetNotchFrame(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "f"    # Landroid/graphics/Rect;
    .param p2, "appSize"    # I

    .line 954
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-nez v0, :cond_0

    return-void

    .line 955
    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 956
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 957
    .local v0, "height":I
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 958
    .local v1, "width":I
    if-lt v0, p2, :cond_2

    sget v2, Lcom/android/server/wm/WindowManagerService;->CAMERA_NOTCH_MAX_SCREEN_SIZE:I

    if-gt v0, v2, :cond_2

    .line 960
    sget v2, Lcom/android/server/wm/WindowManagerService;->CAMERA_NOTCH_HEIGHT:I

    iput v2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 961
    :cond_2
    if-lt v1, p2, :cond_4

    sget v2, Lcom/android/server/wm/WindowManagerService;->CAMERA_NOTCH_MAX_SCREEN_SIZE:I

    if-gt v1, v2, :cond_4

    .line 963
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 964
    sget v2, Lcom/android/server/wm/WindowManagerService;->CAMERA_NOTCH_HEIGHT:I

    iput v2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 966
    :cond_3
    sget v2, Lcom/android/server/wm/WindowManagerService;->CAMERA_NOTCH_LIMITED_SCREEN_SIZE:I

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 969
    :cond_4
    :goto_0
    return-void
.end method

.method sendAppVisibilityToClients()V
    .locals 4

    .line 2975
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->sendAppVisibilityToClients()V

    .line 2977
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v0

    .line 2978
    .local v0, "clientHidden":Z
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 2980
    return-void

    .line 2983
    :cond_0
    if-eqz v0, :cond_2

    .line 2987
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 2987
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2988
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2989
    .local v2, "c":Lcom/android/server/wm/WindowState;
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2987
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2992
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->detachChildren()V

    .line 2997
    :cond_2
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const-string/jumbo v2, "sendAppVisibilityToClients"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->resumeProcessByUID_out(ILjava/lang/String;)V

    .line 3002
    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting visibility of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3006
    :cond_3
    iget v1, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    const/16 v3, 0x2454

    invoke-static {v3, v1, v2}, Lcom/android/server/am/OnePlusProcessManager;->checkTimeoutBegin(III)V

    .line 3007
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    xor-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindow;->dispatchAppVisibility(Z)V

    .line 3008
    invoke-static {v3}, Lcom/android/server/am/OnePlusProcessManager;->checkTimeoutEnd(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3011
    goto :goto_1

    .line 3010
    :catch_0
    move-exception v1

    .line 3012
    :goto_1
    return-void
.end method

.method setDisplayLayoutNeeded()V
    .locals 1

    .line 2440
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 2441
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_0

    .line 2442
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 2444
    :cond_0
    return-void
.end method

.method setDragResizing()V
    .locals 3

    .line 3471
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->computeDragResizing()Z

    move-result v0

    .line 3472
    .local v0, "resizing":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-ne v0, v1, :cond_0

    .line 3473
    return-void

    .line 3475
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    .line 3476
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3477
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isDragResizing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3478
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDragResizeMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    goto :goto_1

    .line 3480
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDragResizing:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v2}, Lcom/android/server/wm/DockedStackDividerController;->isResizing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3481
    const/4 v2, 0x1

    goto :goto_0

    .line 3482
    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/server/wm/WindowState;->mResizeMode:I

    .line 3484
    :goto_1
    return-void
.end method

.method setDrawnStateEvaluated(Z)V
    .locals 0
    .param p1, "evaluated"    # Z

    .line 824
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mDrawnStateEvaluated:Z

    .line 825
    return-void
.end method

.method setForceHideNonSystemOverlayWindowIfNeeded(Z)V
    .locals 2
    .param p1, "forceHide"    # Z

    .line 2835
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2836
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2839
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-ne v0, p1, :cond_1

    .line 2840
    return-void

    .line 2842
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    .line 2843
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2844
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0

    .line 2846
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 2848
    :goto_0
    return-void

    .line 2837
    :cond_3
    :goto_1
    return-void
.end method

.method setFrameNumber(J)V
    .locals 0
    .param p1, "frameNumber"    # J

    .line 5120
    iput-wide p1, p0, Lcom/android/server/wm/WindowState;->mFrameNumber:J

    .line 5121
    return-void
.end method

.method setHasSurface(Z)V
    .locals 0
    .param p1, "hasSurface"    # Z

    .line 2293
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 2294
    return-void
.end method

.method setHiddenWhileSuspended(Z)V
    .locals 2
    .param p1, "hide"    # Z

    .line 2851
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOwnerCanAddInternalSystemWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2852
    invoke-static {v0}, Landroid/view/WindowManager$LayoutParams;->isSystemAlertWindowType(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2855
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-ne v0, p1, :cond_1

    .line 2856
    return-void

    .line 2858
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    .line 2859
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 2860
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0

    .line 2862
    :cond_2
    invoke-virtual {p0, v0, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 2864
    :goto_0
    return-void

    .line 2853
    :cond_3
    :goto_1
    return-void
.end method

.method setLastReportedMergedConfiguration(Landroid/util/MergedConfiguration;)V
    .locals 1
    .param p1, "config"    # Landroid/util/MergedConfiguration;

    .line 2589
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastReportedConfiguration:Landroid/util/MergedConfiguration;

    invoke-virtual {v0, p1}, Landroid/util/MergedConfiguration;->setTo(Landroid/util/MergedConfiguration;)V

    .line 2590
    return-void
.end method

.method setOrientationChanging(Z)V
    .locals 1
    .param p1, "changing"    # Z

    .line 1541
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1542
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOrientationChangeTimedOut:Z

    .line 1543
    return-void
.end method

.method setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z
    .locals 4
    .param p1, "replacementCandidate"    # Lcom/android/server/wm/WindowState;

    .line 2421
    const/4 v0, 0x0

    .line 2423
    .local v0, "replacementSet":Z
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_0

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2426
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 2427
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mSkipEnterAnimationForSeamlessReplacement:Z

    .line 2428
    const/4 v0, 0x1

    .line 2431
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 2432
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 2433
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setReplacementWindowIfNeeded(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2431
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2436
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method setReportResizeHints()Z
    .locals 5

    .line 1403
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 1404
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 1405
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 1406
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 1407
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 1408
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 1409
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    .line 1410
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDisplayCutoutChanged:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/utils/WmDisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDisplayCutoutChanged:Z

    .line 1411
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDisplayCutoutChanged:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v4

    nop

    :cond_3
    :goto_2
    return v2
.end method

.method setRequestedSize(II)V
    .locals 1
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    .line 2520
    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    if-eq v0, p2, :cond_1

    .line 2521
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    .line 2522
    iput p1, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 2523
    iput p2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 2525
    :cond_1
    return-void
.end method

.method setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .param p1, "showToOwnerOnly"    # Z

    .line 3107
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 3108
    return-void
.end method

.method setWaitingForDrawnIfResizingChanged()V
    .locals 1

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3419
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3421
    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->setWaitingForDrawnIfResizingChanged()V

    .line 3422
    return-void
.end method

.method setWillReplaceChildWindows()V
    .locals 2

    .line 4004
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->shouldBeReplacedWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4005
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 4007
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 4008
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4009
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->setWillReplaceChildWindows()V

    .line 4007
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4011
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method setWillReplaceWindow(Z)V
    .locals 3
    .param p1, "animate"    # Z

    .line 3918
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 3919
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3920
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowState;->setWillReplaceWindow(Z)V

    .line 3918
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3923
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x8000

    and-int/2addr v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_1

    .line 3930
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    .line 3931
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mReplacementWindow:Lcom/android/server/wm/WindowState;

    .line 3932
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAnimateReplacingWindow:Z

    .line 3933
    return-void

    .line 3927
    :cond_2
    :goto_1
    return-void
.end method

.method setWindowScale(II)V
    .locals 4
    .param p1, "requestedWidth"    # I
    .param p2, "requestedHeight"    # I

    .line 2614
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2616
    .local v0, "scaledWindow":Z
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_3

    .line 2620
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v2, p1, :cond_1

    .line 2621
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    int-to-float v3, p1

    div-float/2addr v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2622
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v2, p2, :cond_2

    .line 2623
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    int-to-float v2, p2

    div-float/2addr v1, v2

    nop

    :cond_2
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    goto :goto_2

    .line 2625
    :cond_3
    iput v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    .line 2627
    :goto_2
    return-void
.end method

.method shouldBeReplacedWithChildren()Z
    .locals 2

    .line 3999
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsChildWindow:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x4

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

.method shouldMagnify()Z
    .locals 2

    .line 4883
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7db

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dc

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7eb

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e8

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4892
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 4890
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .line 2728
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 4
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .line 2732
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2733
    return v1

    .line 2735
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-nez v0, :cond_1

    .line 2737
    return v1

    .line 2739
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-eqz v0, :cond_2

    .line 2742
    return v1

    .line 2744
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHiddenWhileSuspended:Z

    if-eqz v0, :cond_3

    .line 2746
    return v1

    .line 2748
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mForceHideNonSystemOverlayWindow:Z

    if-eqz v0, :cond_4

    .line 2750
    return v1

    .line 2752
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v0, :cond_5

    .line 2754
    return v1

    .line 2756
    :cond_5
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_6

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    :cond_6
    if-eqz p1, :cond_9

    .line 2758
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_7

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAnimation: mPolicyVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isAnimationSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 2759
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2758
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2761
    const/4 p1, 0x0

    goto :goto_0

    .line 2762
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2766
    const/4 p1, 0x0

    .line 2771
    :cond_9
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2772
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->requestUpdateWallpaperIfNeeded()V

    .line 2775
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 2776
    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 2777
    if-eqz p1, :cond_b

    .line 2778
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2, v0, v0}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 2780
    :cond_b
    if-eqz p2, :cond_c

    .line 2781
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    .line 2783
    :cond_c
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_d

    .line 2784
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2786
    :cond_d
    return v0
.end method

.method startAnimation(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "anim"    # Landroid/view/animation/Animation;

    .line 4763
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 4764
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v0, Landroid/view/DisplayInfo;->appWidth:I

    iget v4, v0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 4766
    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->restrictDuration(J)V

    .line 4767
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getWindowAnimationScaleLocked()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 4768
    new-instance v1, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v2, Lcom/android/server/wm/WindowAnimationSpec;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/android/server/wm/WindowAnimationSpec;-><init>(Landroid/view/animation/Animation;Landroid/graphics/Point;Z)V

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    .line 4771
    .local v1, "adapter":Lcom/android/server/wm/AnimationAdapter;
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;)V

    .line 4772
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->commitPendingTransaction()V

    .line 4773
    return-void
.end method

.method surfaceInsetsChanging()Z
    .locals 2

    .line 4677
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastSurfaceInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method switchUser()V
    .locals 3

    .line 2455
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    .line 2456
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2457
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "user changing, hiding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", attrs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", belonging to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->hideLw(Z)Z

    .line 2461
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 3762
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3763
    .local v0, "title":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eq v1, v2, :cond_2

    .line 3764
    :cond_0
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 3765
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 3766
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 3767
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3768
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_1

    const-string v2, " EXITING}"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "}"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 3770
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1
.end method

.method transformClipRectFromScreenToSurfaceSpace(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .line 3774
    iget v0, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3775
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3776
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3778
    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3779
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3780
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3782
    :cond_1
    return-void
.end method

.method translateToWindowX(F)F
    .locals 2
    .param p1, "x"    # F

    .line 3975
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3976
    .local v0, "winX":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_0

    .line 3977
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    .line 3979
    :cond_0
    return v0
.end method

.method translateToWindowY(F)F
    .locals 2
    .param p1, "y"    # F

    .line 3983
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 3984
    .local v0, "winY":F
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_0

    .line 3985
    iget v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v0, v1

    .line 3987
    :cond_0
    return v0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .line 3337
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3338
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    .line 3339
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 3341
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3342
    return-void

    .line 3341
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateAppOpsState()V
    .locals 6

    .line 2905
    iget v0, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2906
    return-void

    .line 2908
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v0

    .line 2909
    .local v0, "uid":I
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    .line 2910
    .local v1, "packageName":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    const/4 v3, 0x3

    if-eqz v2, :cond_2

    .line 2913
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v2, v4, v0, v1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v2

    .line 2914
    .local v2, "mode":I
    if-eqz v2, :cond_1

    if-eq v2, v3, :cond_1

    .line 2915
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-virtual {v3, v4, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2916
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2918
    .end local v2    # "mode":I
    :cond_1
    goto :goto_0

    .line 2919
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppOps:Landroid/app/AppOpsManager;

    iget v4, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v0, v1, v5}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;Z)I

    move-result v2

    .line 2920
    .restart local v2    # "mode":I
    if-eqz v2, :cond_3

    if-ne v2, v3, :cond_4

    .line 2921
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/wm/WindowState;->setAppOpVisibilityLw(Z)V

    .line 2924
    .end local v2    # "mode":I
    :cond_4
    :goto_0
    return-void
.end method

.method updateLastInsetValues()V
    .locals 2

    .line 4754
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4755
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4756
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4757
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4758
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 4759
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    .line 4760
    return-void
.end method

.method updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V
    .locals 4
    .param p1, "results"    # Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;

    .line 4524
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4525
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 4526
    .local v1, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowState;->updateReportedVisibility(Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;)V

    .line 4524
    .end local v1    # "c":Lcom/android/server/wm/WindowState;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4529
    .end local v0    # "i":I
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v0, :cond_7

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4534
    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4535
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Win "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": isDrawn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isAnimationSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4536
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4535
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4538
    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not displayed: s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mDrawState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ph="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4541
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " th="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4542
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " a="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 4543
    invoke-virtual {v3}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4538
    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4547
    :cond_3
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numInteresting:I

    .line 4548
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4549
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numDrawn:I

    .line 4550
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4551
    iget v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->numVisible:I

    .line 4553
    :cond_4
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    goto :goto_2

    .line 4554
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4555
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState$UpdateReportedVisibilityResults;->nowGone:Z

    .line 4557
    :cond_6
    :goto_2
    return-void

    .line 4532
    :cond_7
    :goto_3
    return-void
.end method

.method updateResizingWindowIfNeeded()V
    .locals 9

    .line 1420
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 1421
    .local v0, "winAnimator":Lcom/android/server/wm/WindowStateAnimator;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-ne v1, v2, :cond_13

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 1425
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1431
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->isAnimatingBounds()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    return-void

    .line 1435
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    .line 1436
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v2

    .line 1443
    .local v2, "configChanged":Z
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_CONFIGURATION:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v2, :cond_3

    .line 1445
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " config changed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDragResizeChanged()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 1449
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->isDragResizingChangeReported()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v4

    .line 1451
    .local v3, "dragResizingChanged":Z
    :goto_0
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v6, :cond_5

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Resizing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ": configChanged="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " dragResizingChanged="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " last="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " frame="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    :cond_5
    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1459
    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    if-nez v6, :cond_8

    iget-boolean v6, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mFrameSizeChanged:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mDisplayCutoutChanged:Z

    if-nez v6, :cond_8

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    iget-boolean v6, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    if-eqz v6, :cond_6

    goto :goto_1

    .line 1515
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1516
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1517
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v5, :cond_7

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Orientation not waiting for draw in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", surfaceController "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    .line 1520
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v6, v6, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    goto/16 :goto_2

    .line 1469
    :cond_8
    :goto_1
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-nez v4, :cond_9

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_a

    .line 1470
    :cond_9
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resize reasons for w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ":  contentInsetsChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 1472
    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " visibleInsetsChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 1474
    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " stableInsetsChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 1476
    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " outsetsChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    .line 1478
    invoke-virtual {v7}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " surfaceResized="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " configChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " dragResizingChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " reportOrientationChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " displayCutoutChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/wm/WindowState;->mDisplayCutoutChanged:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1470
    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    :cond_a
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_b

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAppDied:Z

    if-eqz v4, :cond_b

    .line 1489
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->removeDeadWindows()V

    .line 1490
    return-void

    .line 1493
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    .line 1494
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, p0}, Lcom/android/server/wm/WindowManagerService;->makeWindowFreezingScreenIfNeededLocked(Lcom/android/server/wm/WindowState;)V

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v4

    if-nez v4, :cond_c

    if-eqz v3, :cond_f

    .line 1501
    :cond_c
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v4, :cond_d

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-nez v4, :cond_d

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-eqz v4, :cond_e

    .line 1502
    :cond_d
    const-string v4, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Orientation or resize start waiting for draw, mDrawState=DRAW_PENDING in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", surfaceController "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_e
    iput v5, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    .line 1507
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_f

    .line 1508
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->clearAllDrawn()V

    .line 1511
    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 1512
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_RESIZE:Z

    if-nez v4, :cond_10

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v4, :cond_11

    :cond_10
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resizing window "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    :cond_11
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    :cond_12
    :goto_2
    return-void

    .line 1422
    .end local v1    # "task":Lcom/android/server/wm/Task;
    .end local v2    # "configChanged":Z
    .end local v3    # "dragResizingChanged":Z
    :cond_13
    :goto_3
    return-void
.end method

.method updateSurfacePosition()V
    .locals 1

    .line 4960
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowState;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 4961
    return-void
.end method

.method updateTapExcludeRegion(IIIII)V
    .locals 8
    .param p1, "regionId"    # I
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .line 5084
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 5085
    .local v0, "currentDisplay":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_3

    .line 5089
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    if-nez v1, :cond_0

    .line 5090
    new-instance v1, Lcom/android/server/wm/TapExcludeRegionHolder;

    invoke-direct {v1}, Lcom/android/server/wm/TapExcludeRegionHolder;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    .line 5094
    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5097
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTapExcludeRegionHolder:Lcom/android/server/wm/TapExcludeRegionHolder;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TapExcludeRegionHolder;->updateRegion(IIIII)V

    .line 5099
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 5100
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 5101
    .local v1, "isAppFocusedOnDisplay":Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1

    .line 5102
    :cond_2
    const/4 v2, 0x0

    .line 5101
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    .line 5103
    return-void

    .line 5086
    .end local v1    # "isAppFocusedOnDisplay":Z
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Trying to update window not attached to any display."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method waitingForReplacement()Z
    .locals 4

    .line 3947
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3948
    return v1

    .line 3951
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 3952
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    .line 3953
    .local v2, "c":Lcom/android/server/wm/WindowState;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->waitingForReplacement()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3954
    return v1

    .line 3951
    .end local v2    # "c":Lcom/android/server/wm/WindowState;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3957
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method wouldBeVisibleIfPolicyIgnored()Z
    .locals 1

    .line 1674
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 3543
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3544
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3545
    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3546
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object v2

    .line 3547
    .local v2, "title":Ljava/lang/CharSequence;
    if-eqz v2, :cond_0

    .line 3548
    const-wide v3, 0x10900000003L

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3550
    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3551
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J
    .param p4, "trim"    # Z

    .line 3498
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 3499
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 3500
    const-wide v2, 0x10b00000002L

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3501
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3502
    invoke-direct {p0}, Lcom/android/server/wm/WindowState;->getStackId()I

    move-result v2

    const-wide v3, 0x10500000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3503
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3504
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3505
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000007L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3506
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3507
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3508
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3509
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3510
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3511
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSurfacePosition:Landroid/graphics/Point;

    const-wide v3, 0x10b00000010L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Point;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3512
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-wide v3, 0x10b0000000dL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/WindowStateAnimator;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3513
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    const-wide v3, 0x1080000000eL

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3514
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 3515
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    const-wide v4, 0x20b0000000fL

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowState;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    .line 3514
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3517
    .end local v2    # "i":I
    :cond_0
    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3518
    const-wide v2, 0x10500000013L

    iget v4, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3519
    const-wide v2, 0x10500000014L

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3520
    const-wide v2, 0x10500000015L

    iget v4, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3521
    const-wide v2, 0x10800000016L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3522
    const-wide v2, 0x10800000017L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3523
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000018L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3524
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3525
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000001aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3526
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000001bL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3527
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000001cL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3528
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000001dL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3529
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000001eL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3530
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b0000001fL

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3531
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    const-wide v3, 0x10b00000020L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3532
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    const-wide v3, 0x10b00000021L

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayCutout;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3533
    const-wide v2, 0x10800000022L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3534
    const-wide v2, 0x10800000023L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3535
    const-wide v2, 0x10800000024L

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3536
    const-wide v2, 0x10800000025L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3537
    const-wide v2, 0x10800000026L

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3538
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3539
    return-void
.end method
