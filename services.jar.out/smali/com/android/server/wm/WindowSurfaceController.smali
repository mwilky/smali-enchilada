.class Lcom/android/server/wm/WindowSurfaceController;
.super Ljava/lang/Object;
.source "WindowSurfaceController.java"


# static fields
.field static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field final mAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field private mHiddenForCrop:Z

.field private mHiddenForOtherReasons:Z

.field private mLastDsdx:F

.field private mLastDsdy:F

.field private mLastDtdx:F

.field private mLastDtdy:F

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSurfaceAlpha:F

.field mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceH:I

.field private mSurfaceLayer:I

.field private mSurfaceShown:Z

.field private mSurfaceW:I

.field private mSurfaceX:F

.field private mSurfaceY:F

.field private final mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

.field private final mWindowSession:Lcom/android/server/wm/Session;

.field private final mWindowType:I

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIIILcom/android/server/wm/WindowStateAnimator;II)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    iput v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iput v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    iput v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    iput-object p2, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    iget-object v0, p7, Lcom/android/server/wm/WindowStateAnimator;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p7, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iput p8, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iput-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    const-string/jumbo v1, "new SurfaceControl"

    const-wide/16 v2, 0x20

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->makeSurface()Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/view/SurfaceControl$Builder;->setSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p6}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1, p8, p9}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method private hideSurface(Landroid/view/SurfaceControl$Transaction;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isGestureButtonForLauncher()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isGestureButtonEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->screenshotWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->preloadWallapepr(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    const-string v2, "HIDE"

    invoke-static {v1, v2, v0}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception hiding surface in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SURFACE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v1, "WindowManager"

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showSurface()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->show()V

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SHOW alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mShownAlpha:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " layer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mFrame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/server/wm/WindowManagerService;->logSurface(Lcom/android/server/wm/WindowState;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception v2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure showing surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "show"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    return v0
.end method

.method private updateVisibility()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->showSurface()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mTmpTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0}, Landroid/view/SurfaceControl;->mergeToGlobalTransaction(Landroid/view/SurfaceControl$Transaction;)V

    :cond_3
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method clearCropInTransaction(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "CLEAR CROP"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error setting clearing crop of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v2, "crop"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method clearWindowContentFrameStats()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->clearContentFrameStats()Z

    move-result v0

    return v0
.end method

.method deferTransactionUntil(Landroid/os/IBinder;J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/SurfaceControl;->deferTransactionUntil(Landroid/os/IBinder;J)V

    return-void
.end method

.method destroyNotInTransaction()V
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " called by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->destroy()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error destroying surface in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowSurfaceController;->setShown(Z)V

    iput-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    throw v2
.end method

.method detachChildren()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string v1, "SEVER CHILDREN"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->detachChildren()V

    :cond_1
    return-void
.end method

.method disconnectInTransaction()V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_SURFACE_ALLOC:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->disconnect()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error disconnecting surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSurface="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Surface: shown="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " layer="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " rect=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " transform=("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method forceScaleableInTransaction(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceControl;->setOverrideScalingMode(I)V

    return-void
.end method

.method getContainerRect(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowStateAnimator;->getContainerRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method getHandle()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    return v0
.end method

.method getLayer()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    return v0
.end method

.method getShown()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    return v0
.end method

.method getSurface(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    return-void
.end method

.method getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    return v0
.end method

.method getWindowContentFrameStats(Landroid/view/WindowContentFrameStats;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->getContentFrameStats(Landroid/view/WindowContentFrameStats;)Z

    move-result v0

    return v0
.end method

.method getX()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    return v0
.end method

.method getY()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    return v0
.end method

.method hasSurface()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method hide(Landroid/view/SurfaceControl$Transaction;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HIDE ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowSurfaceController;->hideSurface(Landroid/view/SurfaceControl$Transaction;)V

    :cond_1
    return-void
.end method

.method prepareToShowInTransaction(FFFFFZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    :try_start_0
    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceAlpha:F

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput p4, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    iput p5, p0, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error updating surface in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p6, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v3, "update"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method reparentChildrenInTransaction(Lcom/android/server/wm/WindowSurfaceController;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REPARENT from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowSurfaceController;->getHandle()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->reparentChildren(Landroid/os/IBinder;)V

    :cond_1
    return-void
.end method

.method setCropInTransaction(Landroid/graphics/Rect;Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CROP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setWindowCrop(Landroid/graphics/Rect;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForCrop:Z

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->destroyPreservedSurfaceLocked()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting crop surface of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " crop="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string v3, "crop"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method setFinalCropInTransaction(Landroid/graphics/Rect;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FINAL CROP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setFinalCrop(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error disconnecting surface in: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method setGeometryAppliesWithResizeInTransaction(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->setGeometryAppliesWithResize()V

    return-void
.end method

.method setLayerStackInTransaction(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    :cond_0
    return-void
.end method

.method setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    cmpl-float v0, v0, v8

    const/4 v12, 0x1

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_1

    iget v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v12

    :goto_1
    move v13, v0

    if-nez v13, :cond_2

    return-void

    :cond_2
    iput v8, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdx:F

    iput v9, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdx:F

    iput v10, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDtdy:F

    iput v11, v1, Lcom/android/server/wm/WindowSurfaceController;->mLastDsdy:F

    const/4 v14, 0x0

    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MATRIX ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v14}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_2

    :cond_4
    iget-object v3, v1, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    move-object/from16 v2, p1

    move v4, v8

    move v5, v9

    move v6, v10

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error setting matrix on surface surface"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MATRIX ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p6, :cond_5

    iget-object v3, v1, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v4, "matrix"

    invoke-virtual {v3, v4, v12}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method setMatrixInTransaction(FFFFZ)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/WindowSurfaceController;->setMatrix(Landroid/view/SurfaceControl$Transaction;FFFFZ)V

    return-void
.end method

.method setOpaque(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isOpaque="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION setOpaqueLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setOpaque(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "setOpaqueLocked"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION setOpaqueLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setOpaqueLocked"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setOpaqueLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method

.method setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V
    .locals 6

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    cmpl-float v0, v0, p2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceX:F

    iput p3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceY:F

    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "POS (setPositionInTransaction) @ ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_2
    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, p2, p3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error positioning surface of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " pos=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p4, :cond_4

    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v4, "position"

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_4
    :goto_3
    return-void
.end method

.method setPositionInTransaction(FFZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/WindowSurfaceController;->setPosition(Landroid/view/SurfaceControl$Transaction;FFZ)V

    return-void
.end method

.method setSecure(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSecure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION setSecureLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setSecure(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "setSecure"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION setSecureLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setSecure"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_4

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setSecureLocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method

.method setShown(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->updateNonSystemOverlayWindowsVisibilityIfNeeded(Lcom/android/server/wm/WindowState;Z)V

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowSession:Lcom/android/server/wm/Session;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mWindowType:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/wm/Session;->onWindowSurfaceVisibilityChanged(Lcom/android/server/wm/WindowSurfaceController;ZI)V

    :cond_0
    return-void
.end method

.method setSizeInTransaction(IIZ)Z
    .locals 7

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    if-eq v0, p2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    iput p1, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceW:I

    iput p2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceH:I

    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIZE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v3, p1, p2}, Landroid/view/SurfaceControl;->setSize(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return v1

    :catch_0
    move-exception v3

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error resizing surface of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WindowSurfaceController;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " size=("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez p3, :cond_3

    iget-object v4, p0, Lcom/android/server/wm/WindowSurfaceController;->mAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const-string/jumbo v5, "size"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/wm/WindowStateAnimator;->reclaimSomeSurfaceMemory(Ljava/lang/String;Z)V

    :cond_3
    return v2

    :cond_4
    return v2
.end method

.method setTransparentRegionHint(Landroid/graphics/Region;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "setTransparentRegionHint: null mSurface after mHasSurface true"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    const-string v1, ">>> OPEN TRANSACTION setTransparentRegion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setTransparentRegionHint(Landroid/graphics/Region;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v1, "setTransparentRegion"

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    const-string v1, "<<< CLOSE TRANSACTION setTransparentRegion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/WindowSurfaceController;->mService:Lcom/android/server/wm/WindowManagerService;

    const-string/jumbo v2, "setTransparentRegion"

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    const-string v2, "<<< CLOSE TRANSACTION setTransparentRegion"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    throw v0
.end method

.method showRobustlyInTransaction()Z
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_TRANSACTIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "SHOW (performLayout)"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/WindowSurfaceController;->logSurface(Ljava/lang/String;Ljava/lang/RuntimeException;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_1

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Showing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " during relayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mHiddenForOtherReasons:Z

    invoke-direct {p0}, Lcom/android/server/wm/WindowSurfaceController;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceShown:Z

    const-wide v3, 0x10800000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget v2, p0, Lcom/android/server/wm/WindowSurfaceController;->mSurfaceLayer:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
