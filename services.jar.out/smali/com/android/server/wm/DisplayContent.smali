.class Lcom/android/server/wm/DisplayContent;
.super Lcom/android/server/wm/WindowContainer;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;,
        Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;,
        Lcom/android/server/wm/DisplayContent$TaskStackContainers;,
        Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;,
        Lcom/android/server/wm/DisplayContent$ScreenshotApplicationState;,
        Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;,
        Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field isDefaultDisplay:Z

.field private final mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

.field private mAltOrientation:Z

.field private final mApplyPostLayoutPolicy:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mBaseDisplayDensity:I

.field mBaseDisplayHeight:I

.field private mBaseDisplayRect:Landroid/graphics/Rect;

.field mBaseDisplayWidth:I

.field private final mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

.field private final mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

.field mCompatibleScreenScale:F

.field private final mComputeImeTargetPredicate:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mDeferUpdateImeTargetCount:I

.field private mDeferredRemoval:Z

.field private final mDisplay:Landroid/view/Display;

.field private final mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/utils/RotationCache<",
            "Landroid/view/DisplayCutout;",
            "Lcom/android/server/wm/utils/WmDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field private final mDisplayId:I

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayReady:Z

.field mDisplayScalingDisabled:Z

.field final mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

.field final mExitingTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private final mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mHaveApp:Z

.field private mHaveBootMsg:Z

.field private mHaveKeyguard:Z

.field private mHaveWallpaper:Z

.field private final mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

.field mInitialDisplayCutout:Landroid/view/DisplayCutout;

.field mInitialDisplayDensity:I

.field mInitialDisplayHeight:I

.field mInitialDisplayWidth:I

.field private mLastKeyguardForcedOrientation:I

.field private mLastOrientation:I

.field private mLastWallpaperVisible:Z

.field private mLastWindowForcedOrientation:I

.field private mLayoutNeeded:Z

.field mLayoutSeq:I

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMaxUiWidth:I

.field private mOverlayLayer:Landroid/view/SurfaceControl;

.field private final mPerformLayout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPerformLayoutAttached:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

.field final mRealDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mRemovingDisplay:Z

.field private mRotation:I

.field private final mScheduleToastTimeout:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mSession:Landroid/view/SurfaceSession;

.field mShouldOverrideDisplayConfiguration:Z

.field private mSurfaceSize:I

.field mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

.field final mTapExcludeProvidingWindows:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field final mTapExcludedWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

.field private final mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpFloats:[F

.field private mTmpInitial:Z

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRecoveringMemory:Z

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRectF:Landroid/graphics/RectF;

.field private final mTmpRegion:Landroid/graphics/Region;

.field private final mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

.field private final mTmpUpdateAllDrawn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpWindow:Lcom/android/server/wm/WindowState;

.field private mTmpWindow2:Lcom/android/server/wm/WindowState;

.field private mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

.field private final mTokenMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/WindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchExcludeRegion:Landroid/graphics/Region;

.field private mUpdateImeTarget:Z

.field private final mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateWindowsForAnimator:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWindowingLayer:Landroid/view/SurfaceControl;

.field pendingLayoutChanges:I


# direct methods
.method constructor <init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/DisplayWindowController;)V
    .locals 7

    invoke-direct {p0, p2}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    new-instance v0, Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    new-instance v0, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const-string/jumbo v1, "mAboveAppWindowsContainers"

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    new-instance v0, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const-string/jumbo v1, "mBelowAppWindowsContainers"

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    new-instance v0, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    const-string/jumbo v1, "mImeWindowsContainers"

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    new-instance v1, Lcom/android/server/wm/utils/RotationCache;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$fiC19lMy-d_-rvza7hhOSw6bOM8;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-direct {v1, v2}, Lcom/android/server/wm/utils/RotationCache;-><init>(Lcom/android/server/wm/utils/RotationCache$RotationDependentComputation;)V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    new-instance v1, Landroid/view/DisplayInfo;

    invoke-direct {v1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v2, Landroid/graphics/Region;

    invoke-direct {v2}, Landroid/graphics/Region;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    new-instance v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;-><init>(Lcom/android/server/wm/DisplayContent$1;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    new-instance v2, Landroid/view/SurfaceSession;

    invoke-direct {v2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/16 v2, 0x9

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$0yxrqH9eGY2qTjH1u_BvaVrXCSA;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$D0QJUvhaQkGgoMtOmjw5foY9F8M;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$hRKjZwmneu0T85LNNY6_Zcs4gKM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7uZtakUXzuXqF_Qht5Uq7LUvubI;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qT01Aq6xt_ZOs86A1yDQe-qmPFQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$7voe_dEKk2BYMriCvPuvaznb9WQ;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$TPj3OjTsuIg5GTLb5nMmFqIghA4;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JibsaX4YnJd0ta_wiDDdSp-PjQk;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$qxt4izS31fb0LF2uo_OF9DMa7gc;-><init>(Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, p4}, Lcom/android/server/wm/DisplayContent;->setController(Lcom/android/server/wm/WindowContainerController;)V

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-nez v2, :cond_1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    new-instance v2, Lcom/android/server/wm/DisplayFrames;

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, v6}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->initializeDisplayBaseInfo()V

    new-instance v2, Lcom/android/server/wm/DockedStackDividerController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/DockedStackDividerController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    new-instance v2, Lcom/android/server/wm/PinnedStackController;

    invoke-direct {v2, p2, p0}, Lcom/android/server/wm/PinnedStackController;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const-string v4, "Display Root"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    const-string v4, "Display Overlays"

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4, v1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    iget v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v4}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-super {p0, v0, v3}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p0, v3}, Lcom/android/server/wm/RootWindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display with ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " already exists="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " new="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayContent$TaskStackContainers;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/DisplayContent;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/wm/DisplayContent;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/DisplayContent;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/wm/DisplayContent;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastKeyguardForcedOrientation:I

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/wm/DisplayContent;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return p1
.end method

.method private addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/RootWindowContainer;->getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    iget v1, p2, Lcom/android/server/wm/WindowToken;->windowType:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->addChild(Lcom/android/server/wm/WindowToken;)V

    nop

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map null token to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " binder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t map token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already mapped to display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tokens="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x7db
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V
    .locals 9

    invoke-virtual {p0, p3}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move v2, p5

    move v3, p6

    move v4, p3

    move v5, p4

    move v6, p2

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v8

    iget v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ge v8, v1, :cond_0

    iput v8, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    :cond_0
    iget v1, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-le v8, v1, :cond_1

    iput v8, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move v2, p5

    move v3, p6

    move v4, p3

    move v5, p4

    move v6, p2

    move-object v7, v0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v1

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ge v1, v2, :cond_2

    iput v1, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    :cond_2
    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-le v1, v2, :cond_3

    iput v1, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    :cond_3
    return-void
.end method

.method private calculateBounds(Landroid/graphics/Rect;)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    if-eqz v1, :cond_3

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    sub-int v5, v2, v4

    div-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    sub-int v7, v3, v6

    div-int/lit8 v7, v7, 0x2

    add-int v8, v5, v4

    add-int v9, v7, v6

    invoke-virtual {p1, v5, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 5

    if-eqz p1, :cond_6

    sget-object v0, Landroid/view/DisplayCutout;->NO_CUTOUT:Landroid/view/DisplayCutout;

    if-ne p1, v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v1, 0x3

    if-ne p2, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    nop

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/DisplayCutout;->getBounds()Landroid/graphics/Region;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Region;->getBoundaryPath()Landroid/graphics/Path;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {p2, v2, v3, v4}, Lcom/android/server/wm/utils/CoordinateTransforms;->transformPhysicalToLogicalCoordinates(IIILandroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    invoke-static {v1}, Landroid/view/DisplayCutout;->fromBounds(Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v2

    if-eqz v0, :cond_4

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_1
    if-eqz v0, :cond_5

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    goto :goto_2

    :cond_5
    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    :goto_2
    invoke-static {v2, v3, v4}, Lcom/android/server/wm/utils/WmDisplayCutout;->computeSafeInsets(Landroid/view/DisplayCutout;II)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    return-object v2

    :cond_6
    :goto_3
    sget-object v0, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method private canUpdateImeTarget()Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private clearLayoutNeeded()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearLayoutNeeded: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method private computeCompatSmallestWidth(ZIIII)I
    .locals 17

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v1, v15, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    iget-object v14, v15, Lcom/android/server/wm/DisplayContent;->mTmpDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz p1, :cond_0

    move/from16 v0, p4

    move/from16 v1, p3

    move/from16 v16, v0

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v0, p3

    move/from16 v6, p4

    move/from16 v16, v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v15

    move/from16 v3, p2

    move-object v4, v14

    move/from16 v5, v16

    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    const/4 v9, 0x1

    move-object v7, v15

    move v8, v0

    move/from16 v10, p2

    move-object v11, v14

    move v12, v6

    move/from16 v13, v16

    move-object v1, v14

    move/from16 v14, p5

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    const/4 v9, 0x2

    move v8, v0

    move-object v11, v1

    move/from16 v12, v16

    move v13, v6

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    const/4 v9, 0x3

    move v8, v0

    move v12, v6

    move/from16 v13, v16

    invoke-direct/range {v7 .. v14}, Lcom/android/server/wm/DisplayContent;->reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I

    move-result v0

    return v0
.end method

.method private computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V
    .locals 25

    move-object/from16 v14, p1

    move-object/from16 v15, p8

    if-eqz p3, :cond_0

    move/from16 v0, p6

    move/from16 v1, p5

    move/from16 v24, v0

    move v6, v1

    goto :goto_0

    :cond_0
    move/from16 v0, p5

    move/from16 v6, p6

    move/from16 v24, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, v14, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    const/4 v0, 0x0

    iput v0, v14, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, v14, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, v24

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    const/4 v10, 0x1

    move-object/from16 v7, p0

    move-object v8, v14

    move/from16 v9, p2

    move/from16 v11, p4

    move v12, v6

    move/from16 v13, v24

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    const/4 v10, 0x2

    move/from16 v12, v24

    move v13, v6

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    const/4 v10, 0x3

    move v12, v6

    move/from16 v13, v24

    invoke-direct/range {v7 .. v13}, Lcom/android/server/wm/DisplayContent;->adjustDisplaySizeRanges(Landroid/view/DisplayInfo;IIIII)V

    iget v0, v15, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v0}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v0

    const/16 v18, 0x0

    move-object/from16 v16, p0

    move/from16 v17, v0

    move/from16 v19, p7

    move/from16 v20, v24

    move/from16 v21, v6

    move/from16 v22, p4

    move/from16 v23, p2

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    const/16 v18, 0x1

    move/from16 v17, v0

    move/from16 v20, v6

    move/from16 v21, v24

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    const/16 v18, 0x2

    move/from16 v17, v0

    move/from16 v20, v24

    move/from16 v21, v6

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    const/16 v18, 0x3

    move/from16 v17, v0

    move/from16 v20, v6

    move/from16 v21, v24

    invoke-direct/range {v16 .. v23}, Lcom/android/server/wm/DisplayContent;->reduceConfigLayout(IIFIIII)I

    move-result v0

    iget v1, v14, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v1, v1

    div-float v1, v1, p7

    float-to-int v1, v1

    iput v1, v15, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v0, v15, Landroid/content/res/Configuration;->screenLayout:I

    return-void
.end method

.method private static convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->top:I

    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    sub-int v1, p2, v1

    iput v1, p0, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v0

    iput v1, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    iput v1, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v0

    iput v1, p0, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_0
    return-void
.end method

.method static createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/high16 v1, 0x43870000    # 270.0f

    invoke-virtual {p5, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {p5, v0, p4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p5, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_1
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    :pswitch_2
    const/high16 v1, 0x42b40000    # 90.0f

    invoke-virtual {p5, v1, v0, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    invoke-virtual {p5, p3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    neg-float v0, p2

    invoke-virtual {p5, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p5}, Landroid/graphics/Matrix;->reset()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static createRotationMatrix(IFFLandroid/graphics/Matrix;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFFFLandroid/graphics/Matrix;)V

    return-void
.end method

.method static deltaRotation(II)I
    .locals 1

    sub-int v0, p1, p0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x4

    :cond_0
    return v0
.end method

.method private getBounds(Landroid/graphics/Rect;I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    invoke-static {v0, p2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    :cond_1
    return-void
.end method

.method private hasPinnedStack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$14(ILcom/android/server/wm/WindowState;)Z
    .locals 1

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$canAddToastWindowForUid$15(ILcom/android/server/wm/WindowState;)Z
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d5

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, p0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mPermanentlyHidden:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mWindowRemovalAllowed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$checkWaitingForWindows$20(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7e5

    if-ne v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dd

    if-ne v0, v2, :cond_3

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    goto :goto_1

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardDrawnLw()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    goto :goto_1

    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$destroyLeakedSurfaces$16(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEAKED SURFACE (session doesn\'t exist): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEAKED SURFACE (app token hidden): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const-string v1, "LEAK DESTROY"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$dumpWindowAnimators$18(Ljava/io/PrintWriter;Ljava/lang/String;[ILcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Window #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    aget v1, p2, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, p2, v2

    return-void
.end method

.method public static synthetic lambda$fiC19lMy-d_-rvza7hhOSw6bOM8(Lcom/android/server/wm/DisplayContent;Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotationUncached(Landroid/view/DisplayCutout;I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getLayerForAnimationBackground$12(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$getNeedsMenu$17(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 3

    if-ne p3, p1, :cond_0

    iput-object p3, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    return v2

    :cond_2
    if-ne p3, p2, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public static synthetic lambda$getTouchableWinAtPointLocked$13(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)Z
    .locals 4

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_1

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getVisibleBounds(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {p3, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    and-int/lit8 v1, v0, 0x28

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    if-nez v3, :cond_4

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method static synthetic lambda$hasSecureWindowOnScreen$21(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 5

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    if-eqz v1, :cond_0

    iget-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->performShowLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    const-string/jumbo v3, "updateWindowsAndWallpaperLocked 5"

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->hasSurface()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    const/high16 v3, 0x100000

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v2

    if-eqz v2, :cond_2

    and-int v4, v1, v3

    if-eqz v4, :cond_1

    invoke-interface {v2}, Lcom/android/server/wm/AnimationAdapter;->getDetachWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_1
    invoke-interface {v2}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v0, v4}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    :cond_2
    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_5

    and-int/2addr v3, v1

    if-eqz v3, :cond_4

    invoke-interface {v4}, Lcom/android/server/wm/AnimationAdapter;->getDetachWallpaper()Z

    move-result v3

    if-eqz v3, :cond_4

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_4
    invoke-interface {v4}, Lcom/android/server/wm/AnimationAdapter;->getBackgroundColor()I

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5, v0, v3}, Lcom/android/server/wm/TaskStack;->setAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;I)V

    :cond_5
    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public static synthetic lambda$new$2(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d5

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v2, v0, :cond_0

    const/16 v2, 0x34

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v3, v3, Landroid/view/WindowManager$LayoutParams;->hideTimeoutMilliseconds:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$new$3(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Looking for focus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", canReceive="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canReceiveKeys()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-nez v1, :cond_8

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-ne v1, v4, :cond_7

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v1, :cond_7

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    const/16 v4, 0x2710

    if-lt v1, v4, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v4, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-eq v1, v4, :cond_7

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    const/16 v4, 0x28

    if-le v1, v4, :cond_2

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gt v1, v4, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v3, :cond_7

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "com.android.systemui"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "wallpaper"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isClientHidden()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowToken;->hasVisible:Z

    if-nez v1, :cond_7

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->mNetBoostFeature:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids_netCgroupSet:Ljava/util/HashSet;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->addUidtoTouchWindowUids(I)V

    :cond_7
    return v2

    :cond_8
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_c

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-nez v5, :cond_9

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->sendingToBottom:Z

    if-eqz v5, :cond_c

    :cond_9
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS:Z

    if-eqz v3, :cond_b

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " because "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/server/wm/AppWindowToken;->removed:Z

    if-eqz v5, :cond_a

    const-string/jumbo v5, "removed"

    goto :goto_0

    :cond_a
    const-string/jumbo v5, "sendingToBottom"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v2

    :cond_c
    if-nez v0, :cond_e

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_d

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp=null using new focus @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_e
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->windowsAreFocusable()Z

    move-result v2

    if-nez v2, :cond_10

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_f

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: focusedApp windows not focusable using new focus @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_10
    if-eqz v1, :cond_12

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v2, v3, :cond_12

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppWindowToken;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v2

    if-lez v2, :cond_12

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_11

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Reached focused app="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4

    :cond_12
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v2, :cond_13

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findFocusedWindow: Found new focus @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return v4
.end method

.method public static synthetic lambda$new$4(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "1ST PASS "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": gone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mHaveFrame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mLayoutAttached="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " screen changed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_4

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  GONE: mViewVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mRelayoutCalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hiddenRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " parentHidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  VIS: mViewVisibility="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mRelayoutCalled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowToken;->isHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " hiddenRequested="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_5

    iget-boolean v6, v3, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_2

    :cond_5
    move v6, v1

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " parentHidden="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isParentWindowHidden()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    if-eqz v0, :cond_8

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v3, :cond_8

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-nez v3, :cond_8

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setReportResizeHints()Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isGoneForLayoutLw()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v3, v3, 0x400

    if-nez v3, :cond_8

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_f

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_f

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v3, v3, Lcom/android/server/wm/AppWindowToken;->layoutConfigChanges:Z

    if-eqz v3, :cond_f

    :cond_8
    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->mIsIgnoreCameraNotch:Z

    if-eqz v3, :cond_9

    const-string v3, "com.oneplus.aod"

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "android"

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isNotchUnLimit()Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    or-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_a
    :goto_4
    iget-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    if-eqz v3, :cond_b

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_b
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7e7

    if-ne v3, v4, :cond_c

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_c
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isLaidOut()Z

    move-result v1

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-interface {v2, p1, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v2, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    if-eqz v1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateLastInsetValues()V

    :cond_d
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_e

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AppWindowToken;->layoutLetterbox(Lcom/android/server/wm/WindowState;)V

    :cond_e
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_f

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  LAYOUT: mFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mContainingFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " mDisplayFrame="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void
.end method

.method public static synthetic lambda$new$5(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2ND PASS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mHaveFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mViewVisibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mRelayoutCalled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0, p1}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v0, :cond_3

    :cond_2
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v0, :cond_6

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    :cond_4
    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->prelayout()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-interface {v0, p1, v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->layoutWindowLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/wm/DisplayFrames;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_6

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LAYOUT: mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mContainingFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mDisplayFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    :cond_6
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$6(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking window @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " fl=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->canBeImeTarget()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$new$7(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/policy/WindowManagerPolicy;->applyPostLayoutPolicyLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    return-void
.end method

.method public static synthetic lambda$new$8(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mLosingFocus:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iput-boolean v6, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v6, v6, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isObscuringDisplay()Z

    move-result v7

    if-eqz v7, :cond_1

    iput-object p1, v2, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v4, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v9, v9, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->obscured:Z

    iget-object v10, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v10, v10, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    invoke-virtual {v2, p1, v9, v10}, Lcom/android/server/wm/RootWindowContainer;->handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z

    move-result v9

    or-int/2addr v8, v9

    iput-boolean v8, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-boolean v7, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7d8

    if-eq v7, v8, :cond_2

    const/16 v8, 0x7da

    if-eq v7, v8, :cond_2

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_3

    :cond_2
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v4, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->syswin:Z

    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_4

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->preferredRefreshRate:F

    iput v9, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    if-nez v8, :cond_5

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-object v9, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v9, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    iput v9, v8, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    :cond_5
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6}, Lcom/android/server/wm/WallpaperController;->updateWallpaperVisibility()V

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->handleWindowMovedIfNeeded()V

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v3, p1, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    iget-boolean v3, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_9

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->commitFinishDrawingLocked()Z

    move-result v3

    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_9

    if-eqz v3, :cond_9

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v8, 0x7e7

    if-ne v7, v8, :cond_7

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v7, v4

    iput v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v7, :cond_7

    const-string v7, "dream and commitFinishDrawingLocked true"

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_7
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v7, :cond_8

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "First draw done in potential wallpaper target "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iput-boolean v4, v2, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v7, :cond_9

    const-string/jumbo v7, "wallpaper and commitFinishDrawingLocked true"

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v7, v8}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_9
    iget-object v3, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_a

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateLetterboxSurface(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWindowToken;->updateDrawnWindowStates(Lcom/android/server/wm/WindowState;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v8, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_a
    iget-boolean v7, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_b

    if-eqz v5, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne p1, v7, :cond_b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iput-boolean v4, v7, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->updateResizingWindowIfNeeded()V

    return-void
.end method

.method public static synthetic lambda$onSeamlessRotationTimeout$25(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->setDisplayLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/WindowManagerService;->markForSeamlessRotation(Lcom/android/server/wm/WindowState;Z)V

    return-void
.end method

.method public static synthetic lambda$onWindowFreezeTimeout$23(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOrientationChanging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->orientationChangeTimedOut()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-wide v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Force clearing orientation change: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic lambda$startKeyguardExitOnNonAppWindows$19(Lcom/android/server/policy/WindowManagerPolicy;ZZLcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_0

    invoke-interface {p0, p3}, Lcom/android/server/policy/WindowManagerPolicy;->canBeHiddenByKeyguardLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->wouldBeVisibleIfPolicyIgnored()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method public static synthetic lambda$updateRotationUnchecked$10(Lcom/android/server/wm/DisplayContent;IILcom/android/server/wm/WindowState;)V
    .locals 2

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/WindowStateAnimator;->seamlesslyRotateWindow(Landroid/view/SurfaceControl$Transaction;II)V

    return-void
.end method

.method public static synthetic lambda$updateRotationUnchecked$11(Lcom/android/server/wm/DisplayContent;ZLcom/android/server/wm/WindowState;)V
    .locals 4

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set mOrientationChanging of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/server/wm/WindowState;->setOrientationChanging(Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iput v2, p2, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    :cond_1
    iput-boolean v1, p2, Lcom/android/server/wm/WindowState;->mReportOrientationChanged:Z

    return-void
.end method

.method static synthetic lambda$updateRotationUnchecked$9(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mSeamlesslyRotated:Z

    return v0
.end method

.method static synthetic lambda$updateSystemUiVisibility$22(IILcom/android/server/wm/WindowState;)V
    .locals 5

    :try_start_0
    iget v0, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    xor-int v1, v0, p0

    and-int/2addr v1, p1

    not-int v2, v1

    and-int/2addr v2, v0

    and-int v3, p0, v1

    or-int/2addr v2, v3

    if-eq v2, v0, :cond_0

    iget v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    iput v2, p2, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    :cond_0
    if-ne v2, v0, :cond_1

    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v3, v3, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, p2, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-interface {v3, v4, p0, v2, v1}, Landroid/view/IWindow;->dispatchSystemUiVisibilityChanged(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public static synthetic lambda$waitForAllWindowsDrawn$24(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardHostWindow(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v2, 0x1

    iput v2, v1, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " drawn."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private reduceCompatConfigWidthSize(IIILandroid/util/DisplayMetrics;III)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v2, p5

    move v3, p6

    move v4, p2

    move v5, p3

    move v6, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-interface/range {v1 .. v7}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    iput v0, p4, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    const/4 v0, 0x0

    invoke-static {p4, v0}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v0

    iget v1, p4, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    iget v2, p4, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p1, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    return p1
.end method

.method private reduceConfigLayout(IIFIIII)I
    .locals 10

    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v8, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v3, p4

    move v4, p5

    move v5, p2

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface/range {v2 .. v8}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v1

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v9, v2, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v4, p4

    move v5, p5

    move v6, p2

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v3 .. v9}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v2

    move v3, v1

    move v4, v2

    if-ge v3, v4, :cond_0

    move v5, v3

    move v3, v4

    move v4, v5

    :cond_0
    int-to-float v5, v3

    div-float/2addr v5, p3

    float-to-int v3, v5

    int-to-float v5, v4

    div-float/2addr v5, p3

    float-to-int v4, v5

    move v5, p1

    invoke-static {v5, v3, v4}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v6

    return v6
.end method

.method private resetAnimationBackgroundAnimator()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean p2, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    return-void
.end method

.method private skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateBaseDisplayMetricsIfNeeded()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManagerInternal;->getNonOverrideDisplayInfo(ILandroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_2
    if-eqz v3, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_3
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v7, v7, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v8, v4, :cond_5

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-ne v8, v5, :cond_5

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v9, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v8, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    move v8, v1

    goto :goto_5

    :cond_5
    :goto_4
    move v8, v2

    :goto_5
    if-eqz v8, :cond_c

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    if-ne v9, v10, :cond_7

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    if-eq v9, v10, :cond_6

    goto :goto_6

    :cond_6
    move v9, v1

    goto :goto_7

    :cond_7
    :goto_6
    move v9, v2

    :goto_7
    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    if-eq v10, v11, :cond_8

    move v1, v2

    nop

    :cond_8
    if-eqz v9, :cond_9

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_8

    :cond_9
    move v2, v4

    :goto_8
    if-eqz v9, :cond_a

    iget v10, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_9

    :cond_a
    move v10, v5

    :goto_9
    if-eqz v1, :cond_b

    iget v11, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    goto :goto_a

    :cond_b
    move v11, v6

    :goto_a
    invoke-virtual {p0, v2, v10, v11}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    iput v4, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iput v5, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iput v6, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iput-object v7, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_c
    return-void
.end method

.method private updateBounds()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->setBounds(Landroid/graphics/Rect;)I

    return-void
.end method

.method private updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    nop

    :cond_1
    :goto_0
    move v1, v2

    if-eqz v1, :cond_2

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    goto :goto_1

    :cond_2
    iget v2, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_1
    if-eqz v1, :cond_3

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    goto :goto_2

    :cond_3
    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    :goto_2
    move v5, v2

    move v6, v4

    iget-boolean v7, v0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    if-eqz v7, :cond_6

    const v7, 0x3fa66666    # 1.3f

    if-le v2, v4, :cond_5

    int-to-float v8, v4

    div-float/2addr v8, v7

    float-to-int v7, v8

    if-ge v7, v2, :cond_4

    move v5, v7

    :cond_4
    goto :goto_3

    :cond_5
    int-to-float v8, v2

    div-float/2addr v8, v7

    float-to-int v7, v8

    if-ge v7, v4, :cond_6

    move v6, v7

    :cond_6
    :goto_3
    iget v7, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {v0, v7}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v15

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v8, v5

    move v9, v6

    move/from16 v11, p1

    move-object v13, v15

    invoke-interface/range {v7 .. v13}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v13

    iget-object v7, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v12, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move v3, v13

    move-object v13, v15

    invoke-interface/range {v7 .. v13}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v7

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v9, v8, Landroid/view/DisplayInfo;->rotation:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v5, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v6, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iput v9, v8, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v3, v8, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput v7, v8, Landroid/view/DisplayInfo;->appHeight:I

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v9, 0x0

    if-eqz v8, :cond_7

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mRealDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object v11, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {v8, v10, v11, v9}, Landroid/view/DisplayInfo;->getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    :cond_7
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v15}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v10, v9

    goto :goto_4

    :cond_8
    move-object v10, v15

    :goto_4
    iput-object v10, v8, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v8, v10}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;)V

    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v8, :cond_9

    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v8, Landroid/view/DisplayInfo;->flags:I

    const/high16 v11, 0x40000000    # 2.0f

    or-int/2addr v10, v11

    iput v10, v8, Landroid/view/DisplayInfo;->flags:I

    goto :goto_5

    :cond_9
    iget-object v8, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v8, Landroid/view/DisplayInfo;->flags:I

    const v11, -0x40000001    # -1.9999999f

    and-int/2addr v10, v11

    iput v10, v8, Landroid/view/DisplayInfo;->flags:I

    :goto_5
    iget-boolean v8, v0, Lcom/android/server/wm/DisplayContent;->mShouldOverrideDisplayConfiguration:Z

    if-eqz v8, :cond_a

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    nop

    :cond_a
    move-object v8, v9

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v10, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v9, v10, v8}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v10, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    iget-boolean v9, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v10, v0, Lcom/android/server/wm/DisplayContent;->mCompatDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v9, v10}, Landroid/content/res/CompatibilityInfo;->computeCompatibleScaling(Landroid/util/DisplayMetrics;Landroid/util/DisplayMetrics;)F

    move-result v9

    iput v9, v0, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    iget-object v9, v0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v9
.end method


# virtual methods
.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            "Ljava/util/Comparator<",
            "Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;I)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;I)V

    return-void
.end method

.method protected bridge synthetic addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DisplayContent;->addChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Ljava/util/Comparator;)V

    return-void
.end method

.method adjustForImeIfNeeded()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4}, Lcom/android/server/wm/DockedStackDividerController;->isImeHideRequested()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v8, v4

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v9

    iget-object v4, v0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getImeFocusStackLocked()Lcom/android/server/wm/TaskStack;

    move-result-object v10

    if-eqz v9, :cond_1

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v4

    goto :goto_1

    :cond_1
    const/4 v4, -0x1

    :goto_1
    move v11, v4

    const/4 v4, 0x2

    if-ne v11, v4, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    move v12, v4

    const/4 v4, 0x4

    if-ne v11, v4, :cond_3

    move v5, v3

    goto :goto_3

    :cond_3
    move v5, v2

    :goto_3
    move v13, v5

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->isMinimizedDock()Z

    move-result v14

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result v15

    if-eqz v8, :cond_4

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v5}, Lcom/android/server/wm/DockedStackDividerController;->getImeHeightAdjustedFor()I

    move-result v5

    if-eq v15, v5, :cond_4

    move v5, v3

    goto :goto_4

    :cond_4
    move v5, v2

    :goto_4
    move/from16 v16, v5

    if-eqz v8, :cond_b

    if-eqz v9, :cond_b

    if-nez v12, :cond_5

    if-eqz v13, :cond_b

    :cond_5
    if-nez v14, :cond_b

    iget-object v5, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v3

    :goto_5
    if-ltz v5, :cond_a

    iget-object v6, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->getDockSide()I

    move-result v7

    if-ne v7, v4, :cond_6

    move v7, v3

    goto :goto_6

    :cond_6
    move v7, v2

    :goto_6
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v17

    if-eqz v17, :cond_9

    if-nez v13, :cond_7

    if-eqz v7, :cond_9

    :cond_7
    invoke-virtual {v6}, Lcom/android/server/wm/TaskStack;->inSplitScreenWindowingMode()Z

    move-result v17

    if-eqz v17, :cond_9

    if-eqz v13, :cond_8

    if-eqz v16, :cond_8

    move v4, v3

    goto :goto_7

    :cond_8
    move v4, v2

    :goto_7
    invoke-virtual {v6, v1, v4}, Lcom/android/server/wm/TaskStack;->setAdjustedForIme(Lcom/android/server/wm/WindowState;Z)V

    goto :goto_8

    :cond_9
    invoke-virtual {v6, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    :goto_8
    add-int/lit8 v5, v5, -0x1

    const/4 v4, 0x4

    goto :goto_5

    :cond_a
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move v3, v13

    move-object v6, v1

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    goto :goto_a

    :cond_b
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_9
    if-ltz v2, :cond_c

    iget-object v3, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    xor-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_9

    :cond_c
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v9

    move-object v6, v1

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DockedStackDividerController;->setAdjustedForIme(ZZZLcom/android/server/wm/WindowState;I)V

    :goto_a
    iget-object v2, v0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v2, v8, v15}, Lcom/android/server/wm/PinnedStackController;->setAdjustedForIme(ZI)V

    return-void
.end method

.method animateForIme(FFF)Z
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, p1, v4

    if-ltz v5, :cond_1

    const/4 v5, 0x0

    cmpl-float v6, p2, v5

    if-nez v6, :cond_1

    cmpl-float v5, p3, v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedAnimationValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v6, p1}, Lcom/android/server/wm/DockedStackDividerController;->getInterpolatedDividerValue(F)F

    move-result v6

    iput v6, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v5, v5, Lcom/android/server/wm/DockedStackDividerController;->mLastAnimationProgress:F

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget v6, v6, Lcom/android/server/wm/DockedStackDividerController;->mLastDividerProgress:F

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v6, v7}, Lcom/android/server/wm/TaskStack;->updateAdjustForIme(FFZ)Z

    move-result v5

    or-int/2addr v0, v5

    :goto_1
    cmpl-float v4, p1, v4

    if-ltz v4, :cond_2

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->endImeAdjustAnimation()V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method applyMagnificationSpec(Landroid/view/MagnificationSpec;)V
    .locals 4

    iget v0, p1, Landroid/view/MagnificationSpec;->scale:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method applySurfaceChangesTransaction(Z)Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/4 v6, 0x6

    if-le v4, v6, :cond_1

    const-string v3, "WindowManager"

    const-string v6, "Animation repeat aborted after too many iterations"

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    goto/16 :goto_2

    :cond_1
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_2

    const-string v6, "On entry to LockedInner"

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_2
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v7, 0x4

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v6, p0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    :cond_3
    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v6, :cond_4

    const-string v6, "WindowManager"

    const-string v8, "Computing new config from layout"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v8, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->updateOrientationFromAppTokensLocked(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x12

    iget v9, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/2addr v6, v5

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_6
    if-ge v4, v7, :cond_8

    if-ne v4, v5, :cond_7

    move v6, v5

    goto :goto_0

    :cond_7
    move v6, v3

    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/server/wm/DisplayContent;->performLayout(ZZ)V

    goto :goto_1

    :cond_8
    const-string v6, "WindowManager"

    const-string v7, "Layout repeat skipped after too many iterations"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput v3, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->beginPostLayoutPolicyLw(II)V

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mApplyPostLayoutPolicy:Ljava/util/function/Consumer;

    invoke-virtual {p0, v6, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7}, Lcom/android/server/policy/WindowManagerPolicy;->finishPostLayoutPolicyLw()I

    move-result v7

    or-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v6, :cond_9

    const-string v6, "after finishPostLayoutPolicyLw"

    iget v7, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v2, v6, v7}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_9
    iget v6, p0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v6, :cond_0

    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->reset()V

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRecoveringMemory:Z

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mApplySurfaceChangesTransaction:Ljava/util/function/Consumer;

    invoke-virtual {p0, v3, v5}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->prepareSurfaces()V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget v6, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v7, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->displayHasContent:Z

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v8, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredRefreshRate:F

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget v9, v3, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->preferredModeId:I

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v10}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayProperties(IZFIZ)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v3

    iget-boolean v5, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    if-eq v3, v5, :cond_a

    iput-boolean v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWallpaperVisible:Z

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWallpaperVisibilityListeners:Lcom/android/server/wm/WallpaperVisibilityListeners;

    invoke-virtual {v5, p0}, Lcom/android/server/wm/WallpaperVisibilityListeners;->notifyWallpaperVisibilityChanged(Lcom/android/server/wm/DisplayContent;)V

    :cond_a
    :goto_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpUpdateAllDrawn:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->updateAllDrawn()V

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpApplySurfaceChangesTransactionState:Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;

    iget-boolean v5, v5, Lcom/android/server/wm/DisplayContent$ApplySurfaceChangesTransactionState;->focusDisplayed:Z

    return v5
.end method

.method assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignLayer(Landroid/view/SurfaceControl$Transaction;I)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->inSplitScreenWindowingMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowToken;->isAppAnimating()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v3, p1, v4, v1}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, p1, v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method assignRelativeLayerForImeTargetChild(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/WindowContainer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/server/wm/WindowContainer;->assignRelativeLayer(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;I)V

    return-void
.end method

.method assignStackOrdering()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->assignStackOrdering(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method assignWindowLayers(Z)V
    .locals 3

    const-string v0, "assignWindowLayers"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->assignChildLayers(Landroid/view/SurfaceControl$Transaction;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method beginImeAdjustAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->beginImeAdjustAnimation()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayCutoutCache:Lcom/android/server/wm/utils/RotationCache;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/utils/RotationCache;->getOrCompute(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/utils/WmDisplayCutout;

    return-object v0
.end method

.method canAddToastWindowForUid(I)Z
    .locals 3

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2VlyMN8z2sOPqE9-yf-z3-peRMI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$JYsrGdifTPH6ASJDC3B9YWMD2pw;-><init>(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method checkCompleteDeferredRemoval()Z
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->checkCompleteDeferredRemoval()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method checkWaitingForWindows()Z
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;

    invoke-direct {v2, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$BgTlvHbVclnASz-MrvERWxyMV-A;-><init>(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x112006c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1120034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mOnlyCore:Z

    if-nez v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREEN_ON:Z

    if-nez v4, :cond_2

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_BOOT:Z

    if-eqz v4, :cond_3

    :cond_2
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "******** booted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " msg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mShowingBootMessages:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveBoot="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveApp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveWall="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " wallEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " haveKeyguard="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveBootMsg:Z

    if-nez v4, :cond_4

    return v1

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mSystemBooted:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveApp:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveKeyguard:Z

    if-eqz v4, :cond_6

    :cond_5
    if-eqz v3, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/DisplayContent;->mHaveWallpaper:Z

    if-nez v4, :cond_7

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method clearImeAdjustAnimation()Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->isAdjustedForIme()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskStack;->resetAdjustedForIme(Z)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method computeImeTarget(Z)Lcom/android/server/wm/WindowState;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving IM target from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to null since mInputMethodWindow is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    :cond_1
    return-object v1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->canUpdateImeTarget()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "Defer updating IME target"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0

    :cond_4
    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mUpdateImeTarget:Z

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mComputeImeTargetPredicate:Ljava/util/function/Predicate;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_5

    invoke-virtual {v3, v2}, Lcom/android/server/wm/AppWindowToken;->getImeTargetBelowWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v2, v4

    :cond_5
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposed new IME target: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isClosing()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_7
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v1, :cond_8

    const-string v1, "WindowManager"

    const-string v3, "New target is home while current target is closing, not changing"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v0

    :cond_9
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Desired input method target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " updateImeTarget="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v3, 0x4

    if-nez v2, :cond_e

    if-eqz p1, :cond_d

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v4, :cond_c

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving IM target from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to null."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_b
    const-string v3, ""

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMethodTargetWaitingAnim:Z

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    :cond_d
    return-object v1

    :cond_e
    if-eqz p1, :cond_16

    if-nez v0, :cond_f

    goto :goto_1

    :cond_f
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    :goto_1
    if-eqz v1, :cond_13

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AppWindowToken;->getHighestAnimLayerWindow(Lcom/android/server/wm/WindowState;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    :cond_10
    if-eqz v4, :cond_13

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v6, :cond_11

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " animating="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " layer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " new layer="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_12

    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    return-object v4

    :cond_12
    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v6

    if-eqz v6, :cond_13

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v8, v8, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v6, v8, :cond_13

    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    return-object v4

    :cond_13
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v4, :cond_15

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Moving IM target from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_STACK_CRAWLS:Z

    if-eqz v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Callers="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_14
    const-string v3, ""

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DisplayContent;->setInputMethodTarget(Lcom/android/server/wm/WindowState;Z)V

    :cond_16
    return-object v2
.end method

.method computeScreenConfiguration(Landroid/content/res/Configuration;)V
    .locals 21

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget v0, v11, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v10, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    move-result-object v12

    iget v13, v12, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v14, v12, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v9, 0x1

    if-gt v13, v14, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    iput v0, v11, Landroid/content/res/Configuration;->orientation:I

    iget-object v0, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v9}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v12, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v11, Landroid/content/res/Configuration;->uiMode:I

    iget v5, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v6, v12, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    move v1, v13

    move v2, v14

    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayWidth(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v3, v12, Landroid/view/DisplayInfo;->rotation:I

    iget v4, v11, Landroid/content/res/Configuration;->uiMode:I

    iget v5, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget-object v6, v12, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-interface/range {v0 .. v6}, Lcom/android/server/policy/WindowManagerPolicy;->getConfigDisplayHeight(IIIIILandroid/view/DisplayCutout;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget v1, v12, Landroid/view/DisplayInfo;->rotation:I

    iget-object v4, v12, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v5, v10, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    move v2, v13

    move v3, v14

    invoke-interface/range {v0 .. v5}, Lcom/android/server/policy/WindowManagerPolicy;->getNonDecorInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget v1, v12, Landroid/view/DisplayInfo;->appWidth:I

    add-int/2addr v1, v7

    iget v2, v12, Landroid/view/DisplayInfo;->appHeight:I

    add-int/2addr v2, v6

    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/app/WindowConfiguration;->setAppBounds(IIII)V

    iget v0, v12, Landroid/view/DisplayInfo;->rotation:I

    const/4 v5, 0x3

    const/16 v16, 0x0

    if-eq v0, v9, :cond_2

    iget v0, v12, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v5, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v3, v16

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v9

    :goto_2
    iget v2, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    iget v4, v11, Landroid/content/res/Configuration;->uiMode:I

    move-object v0, v10

    move-object v1, v12

    move v15, v5

    move v5, v13

    move/from16 v17, v6

    move v6, v14

    move/from16 v18, v7

    move v7, v8

    move/from16 v19, v8

    move-object v8, v11

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/DisplayContent;->computeSizeRangesAndScreenLayout(Landroid/view/DisplayInfo;IZIIIFLandroid/content/res/Configuration;)V

    iget v0, v11, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v0, -0x301

    iget v1, v12, Landroid/view/DisplayInfo;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/16 v1, 0x200

    goto :goto_3

    :cond_3
    const/16 v1, 0x100

    :goto_3
    or-int/2addr v0, v1

    iput v0, v11, Landroid/content/res/Configuration;->screenLayout:I

    iget v0, v11, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v0, v0

    iget v1, v10, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->compatScreenWidthDp:I

    iget v0, v11, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v0, v0

    iget v1, v10, Lcom/android/server/wm/DisplayContent;->mCompatibleScreenScale:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, v11, Landroid/content/res/Configuration;->compatScreenHeightDp:I

    iget v6, v11, Landroid/content/res/Configuration;->uiMode:I

    iget v0, v10, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    move-object v4, v10

    move v5, v3

    move v7, v13

    move v8, v14

    move v1, v9

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wm/DisplayContent;->computeCompatSmallestWidth(ZIIII)I

    move-result v0

    iput v0, v11, Landroid/content/res/Configuration;->compatSmallestScreenWidthDp:I

    iget v0, v12, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, v11, Landroid/content/res/Configuration;->densityDpi:I

    nop

    invoke-virtual {v12}, Landroid/view/DisplayInfo;->isHdr()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :cond_4
    const/4 v0, 0x4

    :goto_4
    invoke-virtual {v12}, Landroid/view/DisplayInfo;->isWideColorGamut()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->hasWideColorGamutSupport()Z

    move-result v2

    if-eqz v2, :cond_5

    nop

    const/4 v2, 0x2

    goto :goto_5

    :cond_5
    move v2, v1

    :goto_5
    or-int/2addr v0, v2

    iput v0, v11, Landroid/content/res/Configuration;->colorMode:I

    iput v1, v11, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v11, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v11, Landroid/content/res/Configuration;->navigation:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->getInputDevices()[Landroid/view/InputDevice;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v5, v4

    goto :goto_6

    :cond_6
    move/from16 v5, v16

    :goto_6
    move v6, v0

    move/from16 v0, v16

    :goto_7
    if-ge v0, v5, :cond_d

    aget-object v7, v4, v0

    invoke-virtual {v7}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v8

    if-nez v8, :cond_c

    invoke-virtual {v7}, Landroid/view/InputDevice;->getSources()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/InputDevice;->isExternal()Z

    move-result v9

    if-eqz v9, :cond_7

    nop

    const/4 v9, 0x2

    goto :goto_8

    :cond_7
    move v9, v1

    :goto_8
    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mIsTouchDevice:Z

    if-eqz v1, :cond_9

    and-int/lit16 v1, v8, 0x1002

    const/16 v15, 0x1002

    if-ne v1, v15, :cond_8

    const/4 v1, 0x3

    iput v1, v11, Landroid/content/res/Configuration;->touchscreen:I

    goto :goto_9

    :cond_8
    const/4 v1, 0x3

    goto :goto_9

    :cond_9
    move v1, v15

    const/4 v15, 0x1

    iput v15, v11, Landroid/content/res/Configuration;->touchscreen:I

    :goto_9
    const v15, 0x10004

    and-int v1, v8, v15

    if-ne v1, v15, :cond_b

    const/4 v1, 0x3

    iput v1, v11, Landroid/content/res/Configuration;->navigation:I

    or-int/2addr v2, v9

    :cond_a
    const/4 v1, 0x2

    goto :goto_a

    :cond_b
    const/4 v1, 0x3

    and-int/lit16 v15, v8, 0x201

    const/16 v1, 0x201

    if-ne v15, v1, :cond_a

    iget v1, v11, Landroid/content/res/Configuration;->navigation:I

    const/4 v15, 0x1

    if-ne v1, v15, :cond_a

    const/4 v1, 0x2

    iput v1, v11, Landroid/content/res/Configuration;->navigation:I

    or-int/2addr v2, v9

    :goto_a
    invoke-virtual {v7}, Landroid/view/InputDevice;->getKeyboardType()I

    move-result v15

    if-ne v15, v1, :cond_c

    iput v1, v11, Landroid/content/res/Configuration;->keyboard:I

    or-int v1, v6, v9

    move v6, v1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    const/4 v15, 0x3

    goto :goto_7

    :cond_d
    iget v0, v11, Landroid/content/res/Configuration;->navigation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    iget-object v0, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mHasPermanentDpad:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    iput v0, v11, Landroid/content/res/Configuration;->navigation:I

    or-int/lit8 v2, v2, 0x1

    :cond_e
    iget v0, v11, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    const/16 v16, 0x1

    nop

    :cond_f
    move/from16 v0, v16

    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    if-eq v0, v1, :cond_10

    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v0, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x16

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_10
    const/4 v1, 0x1

    iput v1, v11, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v11, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v1, v11, Landroid/content/res/Configuration;->navigationHidden:I

    iget-object v1, v10, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v1, v11, v6, v2}, Lcom/android/server/policy/WindowManagerPolicy;->adjustConfigurationLw(Landroid/content/res/Configuration;II)V

    return-void
.end method

.method configureDisplayPolicy()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->setInitialDisplaySize(Landroid/view/Display;III)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    return-void
.end method

.method continueUpdateImeTarget()V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    :cond_1
    return-void
.end method

.method createStack(IZLcom/android/server/wm/StackWindowController;)Lcom/android/server/wm/TaskStack;
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_STACK:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create new stackId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/wm/TaskStack;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1, p1, p3}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/StackWindowController;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    return-object v0
.end method

.method deferUpdateImeTarget()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferUpdateImeTargetCount:I

    return-void
.end method

.method destroyLeakedSurfaces()Z
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$rF1ZhFUTWyZqcBK8Oea3g5-uNlM;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Display: mDisplayId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "init="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "dpi"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, " base="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "dpi"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    if-eqz v1, :cond_2

    const-string v1, " noscale"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    const-string v1, " cur="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " app="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " rng="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, "x"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "deferred="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mLayoutNeeded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mTouchExcludeRegion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mLayoutSeq="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Application tokens in top down Z order:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/TaskStack;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  Exiting tokens:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowToken;

    const-string v3, "  Exiting #"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v3, 0x20

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(C)V

    const-string v3, "    "

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "homeStack="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pinnedStack="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "splitScreenPrimaryStack="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/DockedStackDividerController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/PinnedStackController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {v4, p2, p1}, Lcom/android/server/wm/DisplayFrames;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Display #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    const-string v2, "  "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(C)V

    const-string v2, "    "

    invoke-virtual {v1, p1, v2, p2}, Lcom/android/server/wm/WindowToken;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :goto_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method dumpWindowAnimators(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;

    invoke-direct {v1, p1, p2, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$iSsga4uJnJzBuUddn6uWEUo6xO8;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method fillsParent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method findFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mFindFocusedWindow:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    invoke-static {}, Lcom/android/server/am/OnePlusProcessManager;->isSupportFrozenApp()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mLastFontSmallWindowUids:Ljava/util/HashSet;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->updateTouchWindowUidChange(Ljava/util/HashSet;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFontSmallWindowUids:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->findFocusedWindow()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-object v1, Lcom/android/server/wm/WindowManagerService;->mOpTwj:Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$OnePlusTouchWinJudge;->onFindFocusedWindow()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string v2, "findFocusedWindow: No focusable windows."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method findTaskForResizePoint(II)Lcom/android/server/wm/Task;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const/16 v1, 0x1e

    invoke-static {v1, v0}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->reset()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v4

    if-nez v4, :cond_0

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    invoke-virtual {v3, p1, p2, v0, v2}, Lcom/android/server/wm/TaskStack;->findTaskForResizePoint(IIILcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->searchDone:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpTaskForResizePointSearchResult:Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent$TaskForResizePointSearchResult;->taskForResize:Lcom/android/server/wm/Task;

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method forAllImeWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    return v0
.end method

.method forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;Z)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-direct {p0, v3}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    move v3, v0

    :goto_2
    if-ge v3, v2, :cond_5

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-direct {p0, v4}, Lcom/android/server/wm/DisplayContent;->skipTraverseChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    return v1

    :cond_4
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method getAltOrientation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    return v0
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    return-object v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayContent;->calculateBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method getDisplay()Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method getDisplayId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    return v0
.end method

.method getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object v0
.end method

.method getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object v0
.end method

.method getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    return-object v0
.end method

.method getHomeStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getLastOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v0
.end method

.method getLastWindowForcedOrientation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v0
.end method

.method getLayerForAnimationBackground(Lcom/android/server/wm/WindowStateAnimator;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$Po0ivnfO2TfRfOth5ZIOFcmugs4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$Po0ivnfO2TfRfOth5ZIOFcmugs4;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1

    :cond_0
    iget v1, p1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    return v1
.end method

.method getName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNeedsMenu(Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$jJlRHCiYzTPceX3tUkQ_1wUz71E;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v3, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method getOrientation()I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is frozen, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastWindowForcedOrientation:I

    return v1

    :cond_1
    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is frozen while keyguard locked, return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return v1

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getOrientation()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_4

    return v1

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getOrientation()I

    move-result v1

    return v1
.end method

.method getPinnedStack()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getPinnedStackController()Lcom/android/server/wm/PinnedStackController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    return-object v0
.end method

.method getRotation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return v0
.end method

.method getSession()Landroid/view/SurfaceSession;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    return-object v0
.end method

.method getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getSplitScreenPrimaryStackIgnoringVisibility()Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getStableRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v0, v0, Lcom/android/server/wm/DisplayFrames;->mStable:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStack()Lcom/android/server/wm/TaskStack;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getTopStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    return-object v0
.end method

.method getTouchableWinAtPointLocked(FF)Lcom/android/server/wm/WindowState;
    .locals 3

    float-to-int v0, p1

    float-to-int v1, p2

    new-instance v2, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/wm/-$$Lambda$DisplayContent$_XfE1uZ9VUv6i0SxWUvqu69FNb4;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v2

    return-object v2
.end method

.method getVisibleTasks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/Task;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getVisibleTasks()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    return-object v0
.end method

.method hasAccess(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0, p1}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    return v0
.end method

.method hasSecureWindowOnScreen()Z
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$5D_ifLpk7QwG-e9ZLZynNnDca9g;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method hasSplitScreenPrimaryStack()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method initializeDisplayBaseInfo()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v1, p0, Lcom/android/server/wm/DisplayContent;->mInitialDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method inputMethodClientHasFocus(Lcom/android/internal/view/IInputMethodClient;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired input method target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last focus: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mLastFocus:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget-object v2, v2, Lcom/android/server/wm/Session;->mClient:Lcom/android/internal/view/IInputMethodClient;

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_INPUT_METHOD:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IM target client: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IM target client binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting client binder: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/view/IInputMethodClient;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v3, v4, :cond_3

    const/4 v0, 0x1

    nop

    :cond_3
    return v0
.end method

.method isLayoutNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return v0
.end method

.method isPrivate()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isReady()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayReady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRemovalDeferred()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return v0
.end method

.method isStackVisible(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->getTopStackInWindowingMode(I)Lcom/android/server/wm/TaskStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method layoutAndAssignWindowLayersIfNeeded()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    return-void
.end method

.method makeChildSurface(Lcom/android/server/wm/WindowContainer;)Landroid/view/SurfaceControl$Builder;
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSession()Landroid/view/SurfaceSession;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mSurfaceSize:I

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    return-object v2
.end method

.method makeOverlay()Landroid/view/SurfaceControl$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mSession:Landroid/view/SurfaceSession;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method makeSurface(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->makeSurfaceBuilder(Landroid/view/SurfaceSession;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method moveStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeChild(Lcom/android/server/wm/TaskStack;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->addStackToDisplay(Lcom/android/server/wm/TaskStack;Z)V

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to its current displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to move stackId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " which is not currently attached to any display"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method okToAnimate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method okToDisplay()Z
    .locals 4

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->state:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method onAppTransitionDone()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->onAppTransitionDone()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->reconfigureDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DockedStackDividerController;->onConfigurationChanged()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPinnedStackController()Lcom/android/server/wm/PinnedStackController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/PinnedStackController;->onConfigurationChanged()V

    :cond_1
    return-void
.end method

.method onDescendantOverrideConfigurationChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void
.end method

.method onParentSet()V
    .locals 0

    return-void
.end method

.method onSeamlessRotationTimeout()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$vn2WRFHoZv7DB3bbwsmraKDpl0I;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    :cond_0
    return-void
.end method

.method onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->onStackWindowingModeChanged(Lcom/android/server/wm/TaskStack;)V

    return-void
.end method

.method onWindowFreezeTimeout()V
    .locals 2

    const-string v0, "WindowManager"

    const-string v1, "Window freeze timeout expired."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$2HHBX1R6lnY5GedkE9LUBwsCPoE;-><init>(Lcom/android/server/wm/DisplayContent;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    return-void
.end method

.method performLayout(ZZ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->clearLayoutNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v2, :cond_1

    const-string v2, "WindowManager"

    const-string v3, "-------------------------------------"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performLayout: needed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dh="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p0, v4}, Lcom/android/server/wm/DisplayContent;->calculateDisplayCutoutForRotation(I)Lcom/android/server/wm/utils/WmDisplayCutout;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/DisplayFrames;->onDisplayInfoUpdated(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput v3, v2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-interface {v2, v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V

    iget-boolean v2, p0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v4}, Lcom/android/server/policy/WindowManagerPolicy;->getSystemDecorLayerLw()I

    move-result v4

    iput v4, v2, Lcom/android/server/wm/WindowManagerService;->mSystemDecorLayer:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2
    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v4, 0x1

    add-int/2addr v2, v4

    if-gez v2, :cond_3

    const/4 v2, 0x0

    :cond_3
    iput v2, p0, Lcom/android/server/wm/DisplayContent;->mLayoutSeq:I

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpInitial:Z

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayout:Ljava/util/function/Consumer;

    invoke-virtual {p0, v6, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v6, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow2:Lcom/android/server/wm/WindowState;

    iput-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mPerformLayoutAttached:Ljava/util/function/Consumer;

    invoke-virtual {p0, v5, v4}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/wm/InputMonitor;->layoutInputConsumers(II)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4}, Lcom/android/server/wm/InputMonitor;->setUpdateInputWindowsNeededLw()V

    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v4, 0x29

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    return-void
.end method

.method positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    return-void
.end method

.method bridge synthetic positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .locals 0

    check-cast p2, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent;->positionChildAt(ILcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;Z)V

    return-void
.end method

.method positionStackAt(ILcom/android/server/wm/TaskStack;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->positionChildAt(ILcom/android/server/wm/TaskStack;Z)V

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    return-void
.end method

.method prepareFreezingTaskBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->prepareFreezingTaskBounds()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method prepareSurfaces()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x0

    aget v5, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x3

    aget v6, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x1

    aget v7, v1, v2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v2, 0x4

    aget v8, v1, v2

    invoke-virtual/range {v3 .. v8}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpFloats:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mPendingTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mWindowingLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenRotationAnimation;->getEnterTransformation()Landroid/view/animation/Transformation;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    return-void
.end method

.method reParentWindowToken(Lcom/android/server/wm/WindowToken;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    :cond_1
    iget-object v1, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/DisplayContent;->addWindowToken(Landroid/os/IBinder;Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method reapplyMagnificationSpec()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V

    :cond_0
    return-void
.end method

.method removeAppToken(Landroid/os/IBinder;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeAppToken: Attempted to remove non-existing token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to remove non-App token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->onRemovedFromDisplay()V

    return-void
.end method

.method protected removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "See DisplayChildWindowContainer"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected bridge synthetic removeChild(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayContent;->removeChild(Lcom/android/server/wm/DisplayContent$DisplayChildWindowContainer;)V

    return-void
.end method

.method removeExistingTokensIfPossible()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->removeExistingAppTokensIfPossible()V

    return-void
.end method

.method removeIfPossible()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mDeferredRemoval:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->removeImmediately()V

    return-void
.end method

.method removeImmediately()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v1, :cond_0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing display="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_1
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowAnimator;->removeDisplayLocked(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    nop

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->onDisplayRemoved(I)V

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mRemovingDisplay:Z

    throw v1
.end method

.method removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTokenMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->asAppWindowToken()Lcom/android/server/wm/AppWindowToken;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->setExiting()V

    :cond_0
    return-object v0
.end method

.method reparentToOverlay(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mOverlayLayer:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/os/IBinder;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method rotateBounds(IILandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/DisplayContent;->getBounds(Landroid/graphics/Rect;I)V

    invoke-static {p2, p1}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->createRotationMatrix(IFFLandroid/graphics/Matrix;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRectF:Landroid/graphics/RectF;

    invoke-virtual {v1, p3}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    return-void
.end method

.method scheduleToastWindowsTimeoutIfNeededLocked(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 2

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mScheduleToastTimeout:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method screenshotDisplayLocked(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 14

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v2, "Attempted to take screenshot while display was off."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v9, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-lez v0, :cond_9

    if-gtz v9, :cond_2

    goto/16 :goto_4

    :cond_2
    new-instance v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v0, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v10, v2

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    :goto_0
    move v11, v2

    goto :goto_3

    :cond_4
    :goto_1
    if-ne v2, v5, :cond_5

    goto :goto_2

    :cond_5
    move v4, v5

    :goto_2
    move v2, v4

    goto :goto_0

    :goto_3
    invoke-static {v10, v11, v0, v9}, Lcom/android/server/wm/DisplayContent;->convertCropForSurfaceFlinger(Landroid/graphics/Rect;III)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v12

    if-eqz v12, :cond_6

    invoke-virtual {v12}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v2

    if-eqz v2, :cond_6

    move v3, v5

    nop

    :cond_6
    move v13, v3

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_7

    if-eqz v13, :cond_7

    const-string v2, "WindowManager"

    const-string v3, "Taking screenshot while rotating"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, v10

    move v3, v0

    move v4, v9

    move v7, v13

    move v8, v11

    invoke-static/range {v2 .. v8}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;IIIIZI)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_8

    const-string v3, "WindowManager"

    const-string v4, "Failed to take screenshot"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_8
    invoke-virtual {v2, p1}, Landroid/graphics/Bitmap;->createAshmemBitmap(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :cond_9
    :goto_4
    return-object v1
.end method

.method setAltOrientation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    return-void
.end method

.method setExitingTokensHasVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mExitingTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v1, Lcom/android/server/wm/WindowToken;->hasVisible:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->setExitingTokensHasVisible(Z)V

    return-void
.end method

.method setLastOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    return-void
.end method

.method setLayoutNeeded()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayoutNeeded: callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/DisplayContent;->mLayoutNeeded:Z

    return-void
.end method

.method setMaxUiWidth(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting max ui width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(III)V

    return-void
.end method

.method setRotation(I)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    return-void
.end method

.method setTouchExcludeRegion(Lcom/android/server/wm/Task;)V
    .locals 9

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    const/16 v0, 0x1e

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/server/wm/TaskStack;

    iget-object v5, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v6, v2, Lcom/android/server/wm/DisplayFrames;->mContent:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    move-object v2, v8

    move-object v3, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/TaskStack;->setTouchExcludeRegion(Lcom/android/server/wm/Task;ILandroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect2:Landroid/graphics/Rect;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v1

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludedWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v4, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_4
    if-ltz v1, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTapExcludeProvidingWindows:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->amendTapExcludeRegion(Landroid/graphics/Region;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getSplitScreenPrimaryStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DockedStackDividerController;->getTouchRegion(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpRegion:Landroid/graphics/Region;

    sget-object v3, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;)V

    :cond_8
    return-void
.end method

.method startKeyguardExitOnNonAppWindows(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;

    invoke-direct {v1, v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$68_t-1mHyvN9aDP5Tt_BKUPoYT8;-><init>(Lcom/android/server/policy/WindowManagerPolicy;ZZ)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method switchUser()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->switchUser()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowsChanged:Z

    return-void
.end method

.method taskIdFromPoint(II)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    const/4 v1, -0x1

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/TaskStack;->taskIdFromPoint(II)I

    move-result v3

    if-eq v3, v1, :cond_0

    return v3

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBaseDisplayMetrics(III)V
    .locals 4

    iput p1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iput p2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iput p3, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mMaxUiWidth:I

    iput v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Applying config restraints:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " at density:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " on display:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBounds()V

    return-void
.end method

.method updateDisplayInfo()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetricsIfNeeded()V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskStack;->updateDisplayInfo(Landroid/graphics/Rect;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method updateRotationUnchecked()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked(Z)Z

    move-result v0

    return v0
.end method

.method updateRotationUnchecked(Z)Z
    .locals 24

    move-object/from16 v1, p0

    const/4 v0, 0x0

    if-nez p1, :cond_5

    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mDeferredRotationPauseCount:I

    if-lez v2, :cond_1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "Deferring rotation, rotation is paused."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0

    :cond_1
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_2

    const-string v3, "WindowManager"

    const-string v4, "Deferring rotation, animation in progress."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :cond_3
    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_4

    const-string v3, "WindowManager"

    const-string v4, "Deferring rotation, still finishing previous rotation"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v0

    :cond_5
    iget-object v2, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_6

    const-string v2, "WindowManager"

    const-string v3, "Deferring rotation, display is not enabled."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v0

    :cond_7
    iget v2, v1, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iget v3, v1, Lcom/android/server/wm/DisplayContent;->mLastOrientation:I

    iget-boolean v4, v1, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    iget-object v5, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-boolean v6, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    invoke-interface {v5, v3, v2, v6}, Lcom/android/server/policy/WindowManagerPolicy;->rotationForOrientationLw(IIZ)I

    move-result v5

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v6, :cond_8

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Computed rotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " for display id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " based on lastOrientation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and oldRotation="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v6, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v6, v2, v5}, Lcom/android/server/policy/WindowManagerPolicy;->shouldRotateSeamlessly(II)Z

    move-result v6

    if-eqz v6, :cond_c

    sget-object v7, Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayContent$05CtqlkxQvjLanO8D5BmaCdILKQ;

    invoke-virtual {v1, v7}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v7

    if-eqz v7, :cond_9

    if-nez p1, :cond_9

    return v0

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v6, 0x0

    :cond_a
    move v8, v0

    :goto_0
    iget-object v9, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v9}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v8, v9, :cond_c

    iget-object v9, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mSessions:Landroid/util/ArraySet;

    invoke-virtual {v9, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/Session;

    invoke-virtual {v9}, Lcom/android/server/wm/Session;->hasAlertWindowSurfaces()Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v6, 0x0

    goto :goto_1

    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_c
    :goto_1
    move v14, v6

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7, v3, v5}, Lcom/android/server/policy/WindowManagerPolicy;->rotationHasCompatibleMetricsLw(II)Z

    move-result v7

    const/4 v13, 0x1

    xor-int/2addr v7, v13

    move v12, v7

    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_e

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " selected orientation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", got rotation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " which has "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_d

    const-string/jumbo v9, "incompatible"

    goto :goto_2

    :cond_d
    const-string v9, "compatible"

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " metrics"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-ne v2, v5, :cond_f

    if-ne v4, v12, :cond_f

    return v0

    :cond_f
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v7, :cond_12

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Display id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " rotation changed to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_10

    const-string v9, " (alt)"

    goto :goto_3

    :cond_10
    const-string v9, ""

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_11

    const-string v9, " (alt)"

    goto :goto_4

    :cond_11
    const-string v9, ""

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", lastOrientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    invoke-static {v5, v2}, Lcom/android/server/wm/DisplayContent;->deltaRotation(II)I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_13

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v13, v7, Lcom/android/server/wm/WindowManagerService;->mWaitingForConfig:Z

    :cond_13
    iput v5, v1, Lcom/android/server/wm/DisplayContent;->mRotation:I

    iput-boolean v12, v1, Lcom/android/server/wm/DisplayContent;->mAltOrientation:Z

    iget-boolean v7, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v7, :cond_14

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7, v5}, Lcom/android/server/policy/WindowManagerPolicy;->setRotationLw(I)V

    :cond_14
    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v13, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v9, 0xb

    invoke-virtual {v7, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v7, v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    new-array v9, v8, [I

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v7, v9}, Lcom/android/server/policy/WindowManagerPolicy;->selectRotationAnimationLw([I)V

    if-nez v14, :cond_15

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    aget v0, v9, v0

    aget v8, v9, v13

    invoke-virtual {v7, v0, v8, v1}, Lcom/android/server/wm/WindowManagerService;->startFreezingDisplayLocked(IILcom/android/server/wm/DisplayContent;)V

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v0

    :goto_5
    move-object v8, v0

    goto :goto_6

    :cond_15
    const/4 v0, 0x0

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->startSeamlessRotation()V

    goto :goto_5

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    invoke-direct {v1, v0}, Lcom/android/server/wm/DisplayContent;->updateDisplayAndOrientation(I)Landroid/view/DisplayInfo;

    if-eqz v8, :cond_16

    invoke-virtual {v8}, Lcom/android/server/wm/ScreenRotationAnimation;->hasScreenshot()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    const-wide/16 v15, 0x2710

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v17

    iget-object v7, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v7, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v10, v1, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v10, v10, Landroid/view/DisplayInfo;->logicalHeight:I

    move/from16 v18, v7

    move-object v7, v8

    move-object/from16 v19, v8

    move-object v8, v0

    move-object/from16 v20, v9

    move v9, v5

    move/from16 v21, v3

    move/from16 v22, v4

    move v0, v10

    const-wide/16 v3, 0x7d0

    move-wide v10, v15

    move v15, v12

    move/from16 v12, v17

    move v3, v13

    move/from16 v13, v18

    move v4, v14

    move v14, v0

    invoke-virtual/range {v7 .. v14}, Lcom/android/server/wm/ScreenRotationAnimation;->setRotation(Landroid/view/SurfaceControl$Transaction;IJFII)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    goto :goto_7

    :cond_16
    move/from16 v21, v3

    move/from16 v22, v4

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move v15, v12

    move v3, v13

    move v4, v14

    :cond_17
    :goto_7
    if-eqz v4, :cond_18

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1GkjuS_pAduq4UeRzcVLneyJbGM;-><init>(Lcom/android/server/wm/DisplayContent;II)V

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_18
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/DisplayContent;->scheduleAnimation()V

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/-$$Lambda$DisplayContent$mKe0fxS63Jo2y7lFQaTOMepRJDc;-><init>(Lcom/android/server/wm/DisplayContent;Z)V

    invoke-virtual {v1, v0, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    if-eqz v4, :cond_19

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x36

    invoke-virtual {v0, v7}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_19
    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_8
    move v7, v0

    if-ltz v7, :cond_1b

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRotationWatchers:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/wm/WindowManagerService$RotationWatcher;

    iget v0, v8, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mDisplayId:I

    iget v9, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    if-ne v0, v9, :cond_1a

    :try_start_0
    iget-object v0, v8, Lcom/android/server/wm/WindowManagerService$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0, v5}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    :cond_1a
    :goto_9
    add-int/lit8 v0, v7, -0x1

    goto :goto_8

    :cond_1b
    if-nez v19, :cond_1c

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v0, :cond_1c

    iget-boolean v0, v1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1c

    iget-object v0, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AccessibilityController;->onRotationChangedLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_1c
    return v3
.end method

.method updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->updateBoundsAfterConfigChange()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->hasPinnedStack()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    invoke-virtual {v0}, Lcom/android/server/wm/PinnedStackController;->onDisplayInfoChanged()V

    :cond_2
    return-void
.end method

.method updateSystemUiVisibility(II)V
    .locals 2

    new-instance v0, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$DisplayContent$1C_-u_mpQFfKL_O8K1VFzBgPg50;-><init>(II)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updateWallpaperForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/wm/DisplayContent;->resetAnimationBackgroundAnimator()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWallpaperForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    if-eq v0, v1, :cond_1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detached wallpaper changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p1, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    iget v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_1
    return-void
.end method

.method updateWindowsForAnimator(Lcom/android/server/wm/WindowAnimator;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent;->mTmpWindowAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mUpdateWindowsForAnimator:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method waitForAllWindowsDrawn()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/-$$Lambda$DisplayContent$oqhmXZMcpcvgI50swQTzosAcjac;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/policy/WindowManagerPolicy;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mTaskStackContainers:Lcom/android/server/wm/DisplayContent$TaskStackContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$TaskStackContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/TaskStack;

    const-wide v4, 0x20b00000003L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/TaskStack;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedStackDividerController;

    const-wide v3, 0x10b00000004L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DockedStackDividerController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mPinnedStackControllerLocked:Lcom/android/server/wm/PinnedStackController;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/PinnedStackController;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mAboveAppWindowsContainers:Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$AboveAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    const-wide v4, 0x20b00000006L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mBelowAppWindowsContainers:Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    const-wide v4, 0x20b00000007L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_3
    if-ltz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mImeWindowsContainers:Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowToken;

    const-wide v4, 0x20b00000008L

    invoke-virtual {v3, p1, v4, v5, p4}, Lcom/android/server/wm/WindowToken;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_3
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayDensity:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mDisplayInfo:Landroid/view/DisplayInfo;

    const-wide v3, 0x10b0000000aL

    invoke-virtual {v2, p1, v3, v4}, Landroid/view/DisplayInfo;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v2, 0x1050000000bL

    iget v4, p0, Lcom/android/server/wm/DisplayContent;->mRotation:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v2

    if-eqz v2, :cond_4

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ScreenRotationAnimation;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    const-wide v4, 0x10b0000000dL

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/wm/DisplayFrames;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
