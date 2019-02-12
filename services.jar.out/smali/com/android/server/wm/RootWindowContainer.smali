.class Lcom/android/server/wm/RootWindowContainer;
.super Lcom/android/server/wm/WindowContainer;
.source "RootWindowContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/RootWindowContainer$MyHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/DisplayContent;",
        ">;"
    }
.end annotation


# static fields
.field private static final SET_SCREEN_BRIGHTNESS_OVERRIDE:I = 0x1

.field private static final SET_USER_ACTIVITY_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseSystemDialogsReason:Ljava/lang/String;

.field private final mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mHandler:Landroid/os/Handler;

.field private mHoldScreen:Lcom/android/server/wm/Session;

.field mHoldScreenWindow:Lcom/android/server/wm/WindowState;

.field private mLastWindowFreezeSource:Ljava/lang/Object;

.field private mObscureApplicationContentOnSecondaryDisplays:Z

.field mObscuringWindow:Lcom/android/server/wm/WindowState;

.field public mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

.field mOrientationChangeComplete:Z

.field private mScreenBrightness:F

.field private mSustainedPerformanceModeCurrent:Z

.field private mSustainedPerformanceModeEnabled:Z

.field private final mTmpStackIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpStackList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateRotation:Z

.field private mUserActivityTimeout:J

.field mWallpaperActionPending:Z

.field final mWallpaperController:Lcom/android/server/wm/WallpaperController;

.field private mWallpaperForceHidingChanged:Z

.field mWallpaperMayChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$Vvv8jzH2oSE9-eakZwTuKd5NpsU;

    sput-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iput-boolean v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$qT2ficAmvrvFcBdiJIGNKxJ8Z9Q;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/RootWindowContainer$MyHandler;

    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/RootWindowContainer$MyHandler;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/wm/WallpaperController;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/wm/WallpaperController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    new-instance v0, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;-><init>(Lcom/android/server/wm/RootWindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mOpRwc:Lcom/android/server/wm/OnePlusWmUtil$OnePlusRootWindowContainer;

    return-void
.end method

.method private applySurfaceChangesTransaction(ZII)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    iput-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mObscuringWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWatermark:Lcom/android/server/wm/Watermark;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/Watermark;->positionSurface(II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mStrictModeFlash:Lcom/android/server/wm/StrictModeFlash;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/wm/StrictModeFlash;->positionSurface(II)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCircularDisplayMask:Lcom/android/server/wm/CircularDisplayMask;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/wm/CircularDisplayMask;->positionSurface(III)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mEmulatorDisplayOverlay:Lcom/android/server/wm/EmulatorDisplayOverlay;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/server/wm/EmulatorDisplayOverlay;->positionSurface(III)V

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/DisplayContent;->applySurfaceChangesTransaction(Z)Z

    move-result v4

    or-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessage(I)Z

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManagerInternal;->performTraversal(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mDisplayTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v2}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method private getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$O6gArs92KbWUhitra1og4WTg69c;-><init>(Ljava/lang/String;Ljava/util/ArrayList;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private handleResizingWindows()Landroid/util/ArraySet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/DisplayContent;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-boolean v3, v2, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->reportResized()V

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mResizingWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-static {v3}, Lcom/android/server/wm/WindowManagerService;->excludeWindowTypeFromTapOutTask(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-nez v0, :cond_1

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    move-object v0, v4

    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method static synthetic lambda$canShowStrictModeViolation$6(ILcom/android/server/wm/WindowState;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v0, v0, Lcom/android/server/wm/Session;->mPid:I

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$dumpWindowsNoHeader$8(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZLcom/android/server/wm/WindowState;)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Window #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    "

    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v2

    :goto_1
    invoke-virtual {p4, p1, v0, v3}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    aget v0, p2, v1

    add-int/2addr v0, v2

    aput v0, p2, v1

    :cond_3
    return-void
.end method

.method static synthetic lambda$getWindowsByName$2(Ljava/lang/String;Ljava/util/ArrayList;ILcom/android/server/wm/WindowState;)V
    .locals 1

    if-eqz p0, :cond_0

    iget-object v0, p3, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p2, :cond_1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/RootWindowContainer;Lcom/android/server/wm/WindowState;)V
    .locals 2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/view/IWindow;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic lambda$reclaimSomeSurfaceMemory$7(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;Lcom/android/server/wm/WindowState;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mForceRemoves:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v1, v1, Lcom/android/server/wm/Session;->mPid:I

    iget-object v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    :cond_1
    return-void
.end method

.method static synthetic lambda$setSecureSurfaceState$3(IZLcom/android/server/wm/WindowState;)V
    .locals 1

    iget-boolean v0, p2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->setSecureLocked(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$static$1(Lcom/android/server/wm/WindowState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppWindowToken;->removeReplacedWindowIfNeeded(Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateAppOpsState$5(Lcom/android/server/wm/WindowState;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->updateAppOpsState()V

    return-void
.end method

.method static synthetic lambda$updateHiddenWhileSuspendedState$4(Landroid/util/ArraySet;ZLcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Lcom/android/server/wm/WindowState;->setHiddenWhileSuspended(Z)V

    :cond_0
    return-void
.end method

.method static synthetic lambda$writeToProto$9(Landroid/util/proto/ProtoOutputStream;Lcom/android/server/wm/WindowState;)V
    .locals 2

    const-wide v0, 0x20b00000003L

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/server/wm/WindowState;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method private prepareFreezingTaskBounds()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->prepareFreezingTaskBounds()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Configuration;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    return-void
.end method

.method private static toBrightnessOverride(F)I
    .locals 1

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v0, v0

    mul-float/2addr v0, p0

    float-to-int v0, v0

    return v0
.end method

.method private updateStackBoundsAfterConfigChange(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    return-void
.end method

.method private updateStackBoundsAfterConfigChange(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskStack;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->updateStackBoundsAfterConfigChange(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method canShowStrictModeViolation(I)Z
    .locals 2

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;

    invoke-direct {v0, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$ZTXupc1zKRWZgWpo-r3so3blHoI;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method closeSystemDialogs(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsReason:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mCloseSystemDialogsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method computeFocusedWindow()Lcom/android/server/wm/WindowState;
    .locals 9

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->findFocusedWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v5, v3, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v5, :cond_0

    const v5, 0x534e4554

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "71786287"

    aput-object v8, v6, v7

    iget v7, v4, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    const-string v8, ""

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_1

    :cond_0
    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method copyAnimToLayoutParams()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    and-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    const/4 v0, 0x1

    :cond_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    const/4 v0, 0x1

    :cond_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    const/4 v0, 0x1

    :cond_2
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    goto :goto_0

    :cond_3
    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowAnimator;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :cond_4
    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperActionPending:Z

    :cond_5
    return v0
.end method

.method createDisplayContent(Landroid/view/Display;Lcom/android/server/wm/DisplayWindowController;)Lcom/android/server/wm/DisplayContent;
    .locals 8

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->setController(Lcom/android/server/wm/WindowContainerController;)V

    return-object v1

    :cond_0
    new-instance v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/android/server/wm/DisplayContent;-><init>(Landroid/view/Display;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/DisplayWindowController;)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v3, :cond_1

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding display="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplaySettings:Lcom/android/server/wm/DisplaySettings;

    iget-object v6, v3, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v7, v3, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v4}, Lcom/android/server/wm/DisplaySettings;->getOverscanLocked(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V

    iget v5, v4, Landroid/graphics/Rect;->left:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v5, v4, Landroid/graphics/Rect;->top:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanTop:I

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanRight:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iput v5, v3, Landroid/view/DisplayInfo;->overscanBottom:I

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5, v0, v3}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->configureDisplayPolicy()V

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->canDispatchPointerEvents()Z

    move-result v5

    if-eqz v5, :cond_3

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DISPLAY:Z

    if-eqz v5, :cond_2

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Registering PointerEventListener for DisplayId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v5, Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v5, v6, v2}, Lcom/android/server/wm/TaskTapPointerEventListener;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    iput-object v5, v2, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v2, Lcom/android/server/wm/DisplayContent;->mTapDetector:Lcom/android/server/wm/TaskTapPointerEventListener;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    if-nez v0, :cond_3

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mMousePositionTracker:Lcom/android/server/wm/WindowManagerService$MousePositionTracker;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    :cond_3
    return-object v2
.end method

.method dumpDisplayContents(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, "WINDOW MANAGER DISPLAY CONTENTS (dumpsys window displays)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    const-string v3, "  "

    const/4 v4, 0x1

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/DisplayContent;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const-string v0, "  NO DISPLAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method dumpLayoutNeededDisplayIds(Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "  mLayoutNeeded on displays="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method dumpTokens(Ljava/io/PrintWriter;Z)V
    .locals 2

    const-string v0, "  All tokens:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->dumpTokens(Ljava/io/PrintWriter;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method dumpWindowsNoHeader(Ljava/io/PrintWriter;ZLjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [I

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$lQbVdBqi1IIiuRy86WremqX682s;

    invoke-direct {v2, p3, p1, v1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$lQbVdBqi1IIiuRy86WremqX682s;-><init>(Ljava/util/ArrayList;Ljava/io/PrintWriter;[IZ)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/DisplayContent;->getAppWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/AppWindowToken;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplayContent(I)Lcom/android/server/wm/DisplayContent;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getDisplaysInFocusOrder(Landroid/util/SparseIntArray;)V
    .locals 4

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->isRemovalDeferred()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method getName()Ljava/lang/String;
    .locals 1

    const-string v0, "ROOT"

    return-object v0
.end method

.method getStack(II)Lcom/android/server/wm/TaskStack;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/DisplayContent;->getStack(II)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method getWindowTokenDisplay(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayContent;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    iget-object v3, p1, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->getWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x10

    :try_start_0
    invoke-static {p2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    const/4 p2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/RootWindowContainer;->getWindowsByName(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method handleNotObscuredLocked(Lcom/android/server/wm/WindowState;ZZ)Z
    .locals 10

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v3

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v5, 0x0

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_0

    const-string v6, "DebugKeepScreenOn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleNotObscuredLocked w: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", w.mHasSurface: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isOnScreen(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.isDisplayedLw(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDisplayedLw()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", w.mAttrs.userActivityTimeout: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_1

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-ltz v6, :cond_1

    iget-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v6, v6, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    iput-wide v6, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_1

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mUserActivityTimeout set to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    and-int/lit16 v6, v1, 0x80

    if-eqz v6, :cond_2

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    iput-object p1, p0, Lcom/android/server/wm/RootWindowContainer;->mHoldScreenWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    :cond_2
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_KEEP_SCREEN_ON:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mLastWakeLockHoldingWindow:Lcom/android/server/wm/WindowState;

    if-ne p1, v6, :cond_3

    const-string v6, "DebugKeepScreenOn"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleNotObscuredLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " was holding screen wakelock but no longer has FLAG_KEEP_SCREEN_ON!!! called by"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    if-nez p3, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_4

    iget v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_4

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v6, p0, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    :cond_4
    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget-boolean v9, v7, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v9, :cond_7

    const/16 v9, 0x7e7

    if-eq v6, v9, :cond_5

    iget v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v9, v9, 0x400

    if-eqz v9, :cond_6

    :cond_5
    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    if-eqz v7, :cond_9

    iget-boolean v9, p0, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    if-eqz v9, :cond_8

    if-eqz p2, :cond_9

    const/16 v9, 0x7d9

    if-ne v6, v9, :cond_9

    :cond_8
    const/4 v5, 0x1

    :cond_9
    :goto_1
    const/high16 v9, 0x40000

    and-int/2addr v9, v4

    if-eqz v9, :cond_a

    iput-boolean v8, p0, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    :cond_a
    return v5
.end method

.method hasPendingLayoutChanges(Lcom/android/server/wm/WindowAnimator;)Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/WindowAnimator;->getPendingLayoutChanges(I)I

    move-result v4

    and-int/lit8 v5, v4, 0x4

    if-eqz v5, :cond_0

    iget v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p1, Lcom/android/server/wm/WindowAnimator;->mBulkUpdateParams:I

    :cond_0
    if-eqz v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method isLayoutNeeded()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/RootWindowContainer;->prepareFreezingTaskBounds()V

    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->onConfigurationChanged()V

    return-void
.end method

.method performSurfacePlacement(Z)V
    .locals 19

    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performSurfacePlacementInner: entry. Called by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v3, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v0

    :cond_1
    move v2, v0

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    move v0, v4

    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/DisplayContent;->setExitingTokensHasVisible(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const-wide/16 v6, -0x1

    iput-wide v6, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mObscureApplicationContentOnSecondaryDisplays:Z

    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionSequence:I

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v8

    iget v9, v8, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v10, v8, Landroid/view/DisplayInfo;->logicalHeight:I

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v11, ">>> OPEN TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v0, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    move/from16 v11, p1

    :try_start_0
    invoke-direct {v1, v11, v9, v10}, Lcom/android/server/wm/RootWindowContainer;->applySurfaceChangesTransaction(ZII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    :goto_1
    const-string v0, "WindowManager"

    const-string v12, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v0

    move/from16 v16, v3

    goto/16 :goto_13

    :catch_0
    move-exception v0

    move-object v12, v0

    :try_start_1
    const-string v12, "WindowManager"

    const-string v13, "Unhandled exception in Window Manager"

    invoke-static {v12, v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v12, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowAnimator;->executeAfterPrepareSurfacesRunnables()V

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->handleAppTransitionReadyLocked()I

    move-result v12

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v12

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_5

    const-string v13, "after handleAppTransitionReadyLocked"

    iget v14, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isAppAnimating()Z

    move-result v12

    if-nez v12, :cond_6

    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v12, v12, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v12}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_6

    iget v12, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->handleAnimatingStoppedAndTransitionLocked()I

    move-result v13

    or-int/2addr v12, v13

    iput v12, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v12, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v12, :cond_6

    const-string v12, "after handleAnimStopAndXitionLock"

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v12, v13}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_6
    iget-object v12, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v12}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v12

    if-eqz v12, :cond_7

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v12, v13}, Lcom/android/server/wm/RecentsAnimationController;->checkAnimationReady(Lcom/android/server/wm/WallpaperController;)V

    :cond_7
    iget-boolean v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    if-eqz v13, :cond_8

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-nez v13, :cond_8

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->isReady()Z

    move-result v13

    if-nez v13, :cond_8

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v7

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_8

    const-string v13, "after animateAwayWallpaperLocked"

    iget v14, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_8
    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperForceHidingChanged:Z

    iget-boolean v13, v1, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    if-eqz v13, :cond_a

    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v13, :cond_9

    const-string v13, "WindowManager"

    const-string v14, "Wallpaper may change!  Adjusting"

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x4

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_a

    const-string v13, "WallpaperMayChange"

    iget v14, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v14}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_a
    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v13, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    const/4 v14, 0x2

    if-eqz v13, :cond_b

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v4, v13, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    iget-object v13, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13, v14, v4}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    move-result v13

    if-eqz v13, :cond_b

    const/4 v2, 0x1

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v13, v13, 0x8

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->isLayoutNeeded()Z

    move-result v13

    if-eqz v13, :cond_c

    iget v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v13, v7

    iput v13, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    sget-boolean v13, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_LAYOUT_REPEATS:Z

    if-eqz v13, :cond_c

    const-string/jumbo v13, "mLayoutNeeded"

    iget v15, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v0, v13, v15}, Lcom/android/server/wm/WindowSurfacePlacer;->debugLayoutRepeats(Ljava/lang/String;I)V

    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/RootWindowContainer;->handleResizingWindows()Landroid/util/ArraySet;

    move-result-object v13

    sget-boolean v15, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v15, :cond_d

    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v15, v15, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-eqz v15, :cond_d

    const-string v15, "WindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "With display frozen, orientationChangeComplete="

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-boolean v7, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v7, :cond_f

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v7, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    if-eqz v7, :cond_e

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iput v4, v7, Lcom/android/server/wm/WindowManagerService;->mWindowsFreezingScreen:I

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mLastWindowFreezeSource:Ljava/lang/Object;

    iput-object v14, v7, Lcom/android/server/wm/WindowManagerService;->mLastFinishedFreezeSource:Ljava/lang/Object;

    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v14, 0xb

    invoke-virtual {v7, v14}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    :cond_e
    iget-object v7, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->stopFreezingDisplayLocked()V

    :cond_f
    const/4 v7, 0x0

    iget-object v14, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v14, v14, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v15, -0x1

    if-lez v14, :cond_13

    :goto_3
    add-int/2addr v14, v15

    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/WindowState;

    iput-boolean v4, v15, Lcom/android/server/wm/WindowState;->mDestroying:Z

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-ne v4, v15, :cond_10

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setInputMethodWindowLocked(Lcom/android/server/wm/WindowState;)V

    :cond_10
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v15}, Lcom/android/server/wm/WallpaperController;->isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    move v7, v4

    :cond_11
    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->destroySurfaceUnchecked()V

    iget-object v4, v15, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    if-gtz v14, :cond_12

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mDestroySurface:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_4

    :cond_12
    const/4 v4, 0x0

    const/4 v15, -0x1

    goto :goto_3

    :cond_13
    :goto_4
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_14

    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->removeExistingTokensIfPossible()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_14
    if-eqz v7, :cond_15

    iget v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v4, v4, 0x4

    iput v4, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_15
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v3, :cond_17

    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v15, v4}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/DisplayContent;

    iget v5, v15, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    if-eqz v5, :cond_16

    invoke-virtual {v15}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    :cond_16
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x0

    goto :goto_6

    :cond_17
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHoldScreen:Lcom/android/server/wm/Session;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowManagerService;->setHoldScreenLocked(Lcom/android/server/wm/Session;)V

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    if-nez v4, :cond_1a

    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_19

    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_18

    goto :goto_7

    :cond_18
    iget v4, v1, Lcom/android/server/wm/RootWindowContainer;->mScreenBrightness:F

    invoke-static {v4}, Lcom/android/server/wm/RootWindowContainer;->toBrightnessOverride(F)I

    move-result v15

    goto :goto_8

    :cond_19
    :goto_7
    const/4 v15, -0x1

    :goto_8
    move v4, v15

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move/from16 v16, v3

    const/4 v3, 0x1

    const/4 v15, 0x0

    invoke-virtual {v5, v3, v4, v15}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mHandler:Landroid/os/Handler;

    move/from16 v17, v4

    iget-wide v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUserActivityTimeout:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v3, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_9

    :cond_1a
    move/from16 v16, v3

    :goto_9
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iget-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    if-eq v3, v4, :cond_1b

    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeCurrent:Z

    iput-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v4, 0x6

    iget-boolean v5, v1, Lcom/android/server/wm/RootWindowContainer;->mSustainedPerformanceModeEnabled:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManagerInternal;->powerHint(II)V

    :cond_1b
    iget-boolean v3, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-eqz v3, :cond_1f

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ORIENTATION:Z

    if-eqz v3, :cond_1c

    const-string v3, "WindowManager"

    const-string v4, "Performing post-rotate rotation"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v4

    const/16 v5, 0x12

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v5, v15}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :cond_1d
    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    :goto_a
    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    const/4 v15, -0x1

    if-eq v4, v15, :cond_1e

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v4, v4, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_b

    :cond_1e
    const/4 v4, 0x0

    :goto_b
    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->updateRotationUnchecked()Z

    move-result v15

    if-eqz v15, :cond_1f

    iget-object v15, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v15, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v5, v5, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v18, v0

    const/16 v0, 0x12

    invoke-virtual {v15, v0, v5}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_c

    :cond_1f
    move-object/from16 v18, v0

    :goto_c
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_20

    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mOrientationChangeComplete:Z

    if-eqz v0, :cond_21

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->isLayoutNeeded()Z

    move-result v0

    if-nez v0, :cond_21

    iget-boolean v0, v1, Lcom/android/server/wm/RootWindowContainer;->mUpdateRotation:Z

    if-nez v0, :cond_21

    :cond_20
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    :cond_21
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    array-length v3, v3

    if-ge v3, v0, :cond_22

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    add-int/lit8 v4, v0, 0xa

    new-array v4, v4, [Lcom/android/server/wm/WindowState;

    iput-object v4, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    :cond_22
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    move v14, v4

    :goto_d
    if-ge v14, v0, :cond_24

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPendingRemoveTmp:[Lcom/android/server/wm/WindowState;

    aget-object v4, v4, v14

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->removeImmediately()V

    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    if-eqz v5, :cond_23

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_23

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_24
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_e
    if-ltz v4, :cond_26

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v15, v5}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_25
    const/4 v5, 0x1

    :cond_26
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v5

    :goto_f
    if-ltz v3, :cond_27

    iget-object v4, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->checkCompleteDeferredRemoval()Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    :cond_27
    if-eqz v2, :cond_28

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mInputMonitor:Lcom/android/server/wm/InputMonitor;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    :cond_28
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->setFocusTaskRegionLocked(Lcom/android/server/wm/AppWindowToken;)V

    if-eqz v13, :cond_2b

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_29

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    goto :goto_10

    :cond_29
    const/4 v5, 0x0

    :goto_10
    move-object v3, v5

    invoke-virtual {v13}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    if-eq v3, v5, :cond_2a

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Lcom/android/server/wm/DisplayContent;->setTouchExcludeRegion(Lcom/android/server/wm/Task;)V

    goto :goto_12

    :cond_2a
    const/4 v15, 0x0

    :goto_12
    goto :goto_11

    :cond_2b
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WINDOW_TRACE:Z

    if-eqz v3, :cond_2c

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "performSurfacePlacementInner exit: animating="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowAnimator;->isAnimating()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    return-void

    :catchall_1
    move-exception v0

    move/from16 v16, v3

    :goto_13
    iget-object v3, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v4, "performLayoutAndPlaceSurfaces"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v3, :cond_2d

    const-string v3, "WindowManager"

    const-string v4, "<<< CLOSE TRANSACTION performLayoutAndPlaceSurfaces"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    throw v0
.end method

.method reclaimSomeSurfaceMemory(Lcom/android/server/wm/WindowStateAnimator;Ljava/lang/String;Z)Z
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v0, v7

    iget-object v6, v2, Lcom/android/server/wm/WindowStateAnimator;->mSession:Lcom/android/server/wm/Session;

    iget v6, v6, Lcom/android/server/wm/Session;->mPid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v0, v8

    const/4 v6, 0x2

    aput-object p2, v0, v6

    const/16 v6, 0x7918

    invoke-static {v6, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    const-string v0, "WindowManager"

    const-string v6, "Out of memory for surface!  Looking for leaks..."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    move v6, v0

    move v0, v7

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v11, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v11, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v11}, Lcom/android/server/wm/DisplayContent;->destroyLeakedSurfaces()Z

    move-result v11

    or-int/2addr v4, v11

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v4, :cond_4

    const-string v0, "WindowManager"

    const-string v11, "No leaked surfaces; killing applications!"

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    move-object v11, v0

    move v0, v7

    :goto_1
    move v12, v0

    if-ge v12, v6, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayContent;

    new-instance v13, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;

    invoke-direct {v13, v1, v11}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$utugHDPHgMp2b3JwigOH_-Y0P1Q;-><init>(Lcom/android/server/wm/RootWindowContainer;Landroid/util/SparseIntArray;)V

    invoke-virtual {v0, v13, v7}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {v11}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v0, v0, [I

    move-object v13, v0

    move v0, v7

    :goto_2
    array-length v14, v13

    if-ge v0, v14, :cond_1

    invoke-virtual {v11, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    aput v14, v13, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    :try_start_1
    iget-object v0, v1, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    const-string v14, "Free memory"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v8, p3

    :try_start_2
    invoke-interface {v0, v13, v14, v8}, Landroid/app/IActivityManager;->killPids([ILjava/lang/String;Z)Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v5, v0

    :cond_2
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v8, p3

    :goto_3
    goto :goto_4

    :cond_3
    move/from16 v8, p3

    :goto_4
    add-int/lit8 v0, v12, 0x1

    const/4 v8, 0x1

    goto :goto_1

    :cond_4
    move/from16 v8, p3

    if-nez v4, :cond_5

    if-eqz v5, :cond_9

    :cond_5
    :try_start_3
    const-string v0, "WindowManager"

    const-string v11, "Looks like we have reclaimed some memory, clearing surface for retry."

    invoke-static {v0, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_8

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v11, "RECOVER DESTROY"

    invoke-static {v0, v11, v7}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowStateAnimator;->destroySurface()V

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->getController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowContainerController;->removeStartingWindow()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_8
    :try_start_4
    iget-object v0, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->dispatchGetNewSurface()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    :cond_9
    :goto_5
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-nez v4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    move v15, v7

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v15, 0x1

    :goto_7
    return v15

    :catchall_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move/from16 v8, p3

    :goto_8
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method removeReplacedWindows()V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION removeReplacedWindows"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    sget-object v0, Lcom/android/server/wm/RootWindowContainer;->sRemoveReplacedWindowsConsumer:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "removeReplacedWindows"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "removeReplacedWindows"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v1, :cond_2

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION removeReplacedWindows"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    throw v0
.end method

.method scheduleAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    return-void
.end method

.method setDisplayOverrideConfigurationIfNeeded(Landroid/content/res/Configuration;I)[I
    .locals 9

    invoke-virtual {p0, p2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x0

    if-nez v2, :cond_1

    return-object v4

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    if-nez p2, :cond_2

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->setGlobalConfigurationIfNeeded(Landroid/content/res/Configuration;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, v5}, Lcom/android/server/wm/RootWindowContainer;->updateStackBoundsAfterConfigChange(ILjava/util/List;)V

    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    nop

    :goto_2
    if-ge v3, v5, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/TaskStack;

    iget-boolean v7, v6, Lcom/android/server/wm/TaskStack;->mDeferRemoval:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    iget v8, v6, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/RootWindowContainer;->mTmpStackIds:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object v4

    :goto_3
    return-object v4

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display not found for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method setSecureSurfaceState(IZ)V
    .locals 2

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$3VVFoec4x74e1MMAq03gYI9kKjo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$3VVFoec4x74e1MMAq03gYI9kKjo;-><init>(IZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updateAppOpsState()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;->INSTANCE:Lcom/android/server/wm/-$$Lambda$RootWindowContainer$0aCEx04eIvMHmZVtI4ucsiK5s9I;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method updateHiddenWhileSuspendedState(Landroid/util/ArraySet;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$9Gi6QLDM5W-SF-EH_zfgZZvIlo0;-><init>(Landroid/util/ArraySet;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowManagerService;->mDisplayReady:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/RootWindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DisplayContent;

    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6, p4}, Lcom/android/server/wm/DisplayContent;->writeToProto(Landroid/util/proto/ProtoOutputStream;JZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-nez p4, :cond_1

    new-instance v2, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$WK0a_BR42j4A-e0Xx1wj4BL8rUk;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$WK0a_BR42j4A-e0Xx1wj4BL8rUk;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
