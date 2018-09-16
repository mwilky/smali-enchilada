.class Lcom/android/server/wm/WallpaperController;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WALLPAPER_DRAW_NORMAL:I = 0x0

.field private static final WALLPAPER_DRAW_PENDING:I = 0x1

.field private static final WALLPAPER_DRAW_PENDING_TIMEOUT_DURATION:J = 0x1f4L

.field private static final WALLPAPER_DRAW_TIMEOUT:I = 0x2

.field private static final WALLPAPER_TIMEOUT:J = 0x96L

.field private static final WALLPAPER_TIMEOUT_RECOVERY:J = 0x2710L


# instance fields
.field mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

.field private final mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

.field private final mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWallpaperDisplayOffsetX:I

.field private mLastWallpaperDisplayOffsetY:I

.field private mLastWallpaperTimeoutTime:J

.field private mLastWallpaperX:F

.field private mLastWallpaperXStep:F

.field private mLastWallpaperY:F

.field private mLastWallpaperYStep:F

.field private mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private mService:Lcom/android/server/wm/WindowManagerService;

.field private mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

.field private mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

.field private mWallpaperDrawState:I

.field private mWallpaperTarget:Lcom/android/server/wm/WindowState;

.field private final mWallpaperTokens:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WallpaperWindowToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 71
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 73
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 74
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 75
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 76
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 77
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 78
    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 95
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 110
    new-instance v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {v1, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;-><init>(Lcom/android/server/wm/WallpaperController$1;)V

    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 112
    new-instance v0, Lcom/android/server/wm/-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$6pruPGLeSJAwNl9vGfC87eso21w;-><init>(Lcom/android/server/wm/WallpaperController;)V

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    .line 207
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 208
    return-void
.end method

.method private findWallpaperTarget(Lcom/android/server/wm/DisplayContent;)V
    .locals 2
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 507
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->reset()V

    .line 508
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindWallpaperTargetFunction:Lcom/android/internal/util/ToBooleanFunction;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 516
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v0, v0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 519
    :cond_1
    return-void
.end method

.method private getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;
    .locals 4

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 774
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 775
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    new-instance v3, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;

    invoke-direct {v3, p0}, Lcom/android/server/wm/-$$Lambda$WallpaperController$3kGUJhX6nW41Z26JaiCQelxXZr8;-><init>(Lcom/android/server/wm/WallpaperController;)V

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/WallpaperWindowToken;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    .line 773
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 785
    .end local v0    # "curTokenNdx":I
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method private isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z
    .locals 2
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .line 522
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z
    .locals 7
    .param p1, "wallpaperTarget"    # Lcom/android/server/wm/WindowState;

    .line 237
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 238
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 239
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 241
    .local v3, "isAnimatingWithRecentsComponent":Z
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v4, :cond_3

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper vis: target "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", obscured="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    if-eqz p1, :cond_1

    iget-boolean v6, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    const-string v6, "??"

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " animating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    if-eqz p1, :cond_2

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_2

    .line 244
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " prev="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " recentsAnimationWallpaperVisible="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 241
    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_3
    if-eqz p1, :cond_4

    iget-boolean v4, p1, Lcom/android/server/wm/WindowState;->mObscured:Z

    if-eqz v4, :cond_5

    if-nez v3, :cond_5

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 251
    invoke-virtual {v4}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_6

    .line 247
    :cond_5
    move v1, v2

    goto :goto_3

    .line 251
    :cond_6
    nop

    .line 247
    :goto_3
    return v1
.end method

.method public static synthetic lambda$getTopVisibleWallpaper$2(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .locals 3
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 776
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 777
    .local v0, "winAnim":Lcom/android/server/wm/WindowStateAnimator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 778
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mTmpTopWallpaper:Lcom/android/server/wm/WindowState;

    .line 779
    const/4 v1, 0x1

    return v1

    .line 781
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/wm/WallpaperController;Lcom/android/server/wm/WindowState;)Z
    .locals 12
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 114
    .local v0, "winAnimator":Lcom/android/server/wm/WindowAnimator;
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x0

    const/16 v3, 0x7dd

    if-ne v1, v3, :cond_2

    .line 115
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-object v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->topWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    if-eqz v1, :cond_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setTopWallpaper(Lcom/android/server/wm/WindowState;)V

    .line 117
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iput-boolean v2, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 119
    :cond_1
    return v2

    .line 122
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->resetTopWallpaper:Z

    .line 123
    iget-object v1, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-eq p1, v1, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_4

    .line 125
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-nez v1, :cond_4

    .line 126
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_3

    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping hidden and not animating token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    return v2

    .line 131
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_5

    const-string v1, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Win "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ": isOnScreen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " mDrawState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v5, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_5
    iget-boolean v1, p1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    iget-boolean v1, v1, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->useTopWallpaperAsTarget:Z

    if-nez v1, :cond_6

    .line 139
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 142
    :cond_6
    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 143
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->isSelfAnimating()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 144
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTransit()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 145
    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->getTransitFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_7

    .line 155
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->isAppWindowCompat(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v3

    goto :goto_0

    :cond_7
    move v1, v2

    .line 158
    .local v1, "keyguardGoingAwayWithWallpaper":Z
    :goto_0
    const/4 v4, 0x0

    .line 159
    .local v4, "needsShowWhenLockedWallpaper":Z
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 160
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 161
    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardOccluded()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 164
    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v5}, Lcom/android/server/wm/WallpaperController;->isFullscreen(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_8

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 165
    invoke-virtual {v5}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    move v5, v2

    goto :goto_2

    :cond_9
    :goto_1
    move v5, v3

    :goto_2
    move v4, v5

    .line 168
    :cond_a
    if-nez v1, :cond_b

    if-eqz v4, :cond_c

    .line 171
    :cond_b
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 174
    :cond_c
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 175
    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v5

    .line 176
    .local v5, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v6, :cond_d

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v6

    if-eqz v6, :cond_d

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 177
    invoke-virtual {v6}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/wm/AnimationAdapter;->getShowWallpaper()Z

    move-result v6

    if-eqz v6, :cond_d

    move v6, v3

    goto :goto_3

    :cond_d
    move v6, v2

    .line 178
    .local v6, "animationWallpaper":Z
    :goto_3
    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x100000

    and-int/2addr v7, v8

    if-nez v7, :cond_f

    if-eqz v6, :cond_e

    goto :goto_4

    :cond_e
    move v7, v2

    goto :goto_5

    :cond_f
    :goto_4
    move v7, v3

    .line 180
    .local v7, "hasWallpaper":Z
    :goto_5
    if-eqz v5, :cond_10

    .line 181
    invoke-virtual {v5, p1}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v8

    if-eqz v8, :cond_10

    move v8, v3

    goto :goto_6

    :cond_10
    move v8, v2

    .line 182
    .local v8, "isRecentsTransitionTarget":Z
    :goto_6
    if-eqz v8, :cond_12

    .line 183
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_11

    const-string v2, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found recents animation wallpaper target: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 185
    return v3

    .line 186
    :cond_12
    if-eqz v7, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v9, p1, :cond_13

    .line 187
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawFinishedLw()Z

    move-result v9

    if-eqz v9, :cond_16

    .line 188
    :cond_13
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_14

    const-string v2, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found wallpaper target: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_14
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 190
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v2, :cond_15

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 193
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_15

    const-string v2, "WindowManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Win "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": token animating, looking behind."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_15
    return v3

    .line 198
    :cond_16
    iget-object v9, v0, Lcom/android/server/wm/WindowAnimator;->mWindowDetachedWallpaper:Lcom/android/server/wm/WindowState;

    if-ne p1, v9, :cond_18

    .line 199
    sget-boolean v9, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v9, :cond_17

    const-string v9, "WindowManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found animating detached wallpaper target win: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_17
    iget-object v9, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-virtual {v9, v3}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setUseTopWallpaperAsTarget(Z)V

    .line 203
    :cond_18
    return v2
.end method

.method static synthetic lambda$updateWallpaperWindowsTarget$1(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p0, "prevWallpaperTarget"    # Lcom/android/server/wm/WindowState;
    .param p1, "w"    # Lcom/android/server/wm/WindowState;

    .line 578
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V
    .locals 8
    .param p1, "changingTarget"    # Lcom/android/server/wm/WindowState;
    .param p2, "sync"    # Z

    .line 439
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 440
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 441
    return-void

    .line 443
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 444
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 445
    .local v2, "dw":I
    iget v3, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 447
    .local v3, "dh":I
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 448
    .local v4, "target":Lcom/android/server/wm/WindowState;
    if-eqz v4, :cond_c

    .line 449
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    .line 450
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_0

    .line 451
    :cond_1
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    .line 452
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 454
    :cond_2
    :goto_0
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_3

    .line 455
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_1

    .line 456
    :cond_3
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_4

    .line 457
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 459
    :cond_4
    :goto_1
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v7, -0x80000000

    if-eq v5, v7, :cond_5

    .line 460
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    goto :goto_2

    .line 461
    :cond_5
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-eq v5, v7, :cond_6

    .line 462
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 464
    :cond_6
    :goto_2
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v5, v7, :cond_7

    .line 465
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    goto :goto_3

    .line 466
    :cond_7
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v5, v7, :cond_8

    .line 467
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 469
    :cond_8
    :goto_3
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_9

    .line 470
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_4

    .line 471
    :cond_9
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_a

    .line 472
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 474
    :cond_a
    :goto_4
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_b

    .line 475
    iget v5, v4, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    .line 476
    :cond_b
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_c

    .line 477
    iget v5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v5, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 481
    :cond_c
    :goto_5
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "curTokenNdx":I
    :goto_6
    if-ltz v5, :cond_d

    .line 482
    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WallpaperWindowToken;

    invoke-virtual {v6, v2, v3, p2}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperOffset(IIZ)V

    .line 481
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 484
    .end local v5    # "curTokenNdx":I
    :cond_d
    return-void
.end method

.method private updateWallpaperTokens(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 614
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperWindows(Z)V

    .line 615
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->assignWindowLayers(Z)V

    .line 612
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 617
    .end local v0    # "curTokenNdx":I
    :cond_0
    return-void
.end method

.method private updateWallpaperWindowsTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V
    .locals 9
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "result"    # Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    .line 530
    iget-object v0, p2, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->wallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 532
    .local v0, "wallpaperTarget":Lcom/android/server/wm/WindowState;
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    const/4 v2, 0x0

    if-eq v1, v0, :cond_10

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v0, :cond_0

    goto/16 :goto_4

    .line 554
    :cond_0
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New wallpaper target: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " prevTarget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    :cond_2
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 561
    .local v1, "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 563
    if-eqz v0, :cond_f

    if-nez v1, :cond_3

    goto/16 :goto_3

    .line 569
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v2

    .line 570
    .local v2, "oldAnim":Z
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v3

    .line 571
    .local v3, "foundAnim":Z
    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v4, :cond_4

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New animation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " old animation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_4
    if-eqz v3, :cond_e

    if-nez v2, :cond_5

    goto/16 :goto_2

    .line 578
    :cond_5
    new-instance v4, Lcom/android/server/wm/-$$Lambda$WallpaperController$Gy7houdzET4VmpY0QJ2v-NX1b7k;

    invoke-direct {v4, v1}, Lcom/android/server/wm/-$$Lambda$WallpaperController$Gy7houdzET4VmpY0QJ2v-NX1b7k;-><init>(Lcom/android/server/wm/WindowState;)V

    invoke-virtual {p1, v4}, Lcom/android/server/wm/DisplayContent;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v4

    if-nez v4, :cond_6

    .line 579
    return-void

    .line 582
    :cond_6
    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_7

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_7

    move v4, v6

    goto :goto_0

    :cond_7
    move v4, v5

    .line 584
    .local v4, "newTargetHidden":Z
    :goto_0
    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v7, :cond_8

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v7, v7, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v7, :cond_8

    move v5, v6

    nop

    .line 587
    .local v5, "oldTargetHidden":Z
    :cond_8
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_9

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animating wallpapers: old: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hidden="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " hidden="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_9
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 593
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    .line 594
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v6, :cond_a

    const-string v6, "WindowManager"

    const-string v7, "Old wallpaper still the target."

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_a
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    goto :goto_1

    .line 598
    :cond_b
    if-ne v4, v5, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 599
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 600
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v7, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 601
    invoke-virtual {v6, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 605
    :cond_c
    iput-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 608
    :cond_d
    :goto_1
    invoke-virtual {p2, v0}, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;->setWallpaperTarget(Lcom/android/server/wm/WindowState;)V

    .line 609
    return-void

    .line 575
    .end local v4    # "newTargetHidden":Z
    .end local v5    # "oldTargetHidden":Z
    :cond_e
    :goto_2
    return-void

    .line 564
    .end local v2    # "oldAnim":Z
    .end local v3    # "foundAnim":Z
    :cond_f
    :goto_3
    return-void

    .line 535
    .end local v1    # "prevWallpaperTarget":Lcom/android/server/wm/WindowState;
    :cond_10
    :goto_4
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-nez v1, :cond_11

    .line 536
    return-void

    .line 540
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-nez v1, :cond_13

    .line 541
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_12

    const-string v1, "WindowManager"

    const-string v3, "No longer animating wallpaper targets!"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_12
    iput-object v2, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 543
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 545
    :cond_13
    return-void
.end method


# virtual methods
.method addWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 729
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    return-void
.end method

.method adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;

    .line 620
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/wm/RootWindowContainer;->mWallpaperMayChange:Z

    .line 624
    invoke-direct {p0, p1}, Lcom/android/server/wm/WallpaperController;->findWallpaperTarget(Lcom/android/server/wm/DisplayContent;)V

    .line 625
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mFindResults:Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperWindowsTarget(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult;)V

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    move v0, v1

    .line 630
    .local v0, "visible":Z
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v1, :cond_1

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper visibility: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_1
    if-eqz v0, :cond_5

    .line 633
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 634
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    .line 635
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    .line 637
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 638
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    .line 639
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    .line 641
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_4

    .line 642
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    .line 644
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v1, v2, :cond_5

    .line 645
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v1, v1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    iput v1, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    .line 649
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperTokens(Z)V

    .line 651
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-eqz v1, :cond_6

    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "New wallpaper: target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " prev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_6
    return-void
.end method

.method adjustWallpaperWindowsForAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/util/ArraySet;)V
    .locals 4
    .param p1, "dc"    # Lcom/android/server/wm/DisplayContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayContent;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)V"
        }
    .end annotation

    .line 710
    .local p2, "openingApps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/AppWindowToken;>;"
    const/4 v0, 0x0

    .line 711
    .local v0, "adjust":Z
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    .line 712
    const/4 v0, 0x1

    goto :goto_1

    .line 714
    :cond_0
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 715
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .line 716
    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {v2}, Lcom/android/server/wm/AppWindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 717
    const/4 v0, 0x1

    .line 718
    goto :goto_1

    .line 714
    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 723
    .end local v1    # "i":I
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 724
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows(Lcom/android/server/wm/DisplayContent;)V

    .line 726
    :cond_3
    return-void
.end method

.method clearLastWallpaperTimeoutTime()V
    .locals 2

    .line 487
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 488
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 790
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 791
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrevWallpaperTarget="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 793
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastWallpaperX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 794
    const-string v0, " mLastWallpaperY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(F)V

    .line 795
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    if-eq v0, v1, :cond_2

    .line 797
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 798
    const-string/jumbo v0, "mLastWallpaperDisplayOffsetX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 799
    const-string v0, " mLastWallpaperDisplayOffsetY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 801
    :cond_2
    return-void
.end method

.method getWallpaperTarget()Lcom/android/server/wm/WindowState;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    return-object v0
.end method

.method hideDeferredWallpapersIfNeeded()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WallpaperController;->hideWallpapers(Lcom/android/server/wm/WindowState;)V

    .line 273
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 275
    :cond_0
    return-void
.end method

.method hideWallpapers(Lcom/android/server/wm/WindowState;)V
    .locals 9
    .param p1, "winGoingAway"    # Lcom/android/server/wm/WindowState;

    .line 278
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 280
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 285
    iput-object p1, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    .line 286
    return-void

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 293
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 294
    .local v0, "recentsAnimationController":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    .line 295
    invoke-virtual {v0, v3}, Lcom/android/server/wm/RecentsAnimationController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v1

    .line 296
    .local v3, "isAnimatingWithRecentsComponent":Z
    :goto_0
    if-eqz v3, :cond_5

    .line 297
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    .line 298
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hideWallpapers skip for recents animating target="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_4
    return-void

    .line 305
    :cond_5
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mDeferredHideWallpaper:Lcom/android/server/wm/WindowState;

    if-ne v4, p1, :cond_6

    move v1, v2

    nop

    .line 306
    .local v1, "wasDeferred":Z
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "i":I
    :goto_1
    move v2, v4

    .end local v4    # "i":I
    .local v2, "i":I
    if-ltz v2, :cond_9

    .line 307
    iget-object v4, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 308
    .local v4, "token":Lcom/android/server/wm/WallpaperWindowToken;
    const-string v5, "hideWallpapers"

    invoke-virtual {v4, v1, v5}, Lcom/android/server/wm/WallpaperWindowToken;->hideWallpaperToken(ZLjava/lang/String;)V

    .line 315
    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER_LIGHT:Z

    if-nez v5, :cond_7

    sget-boolean v5, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v5, :cond_8

    .line 316
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/WallpaperWindowToken;->isHidden()Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Hiding wallpaper "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " prev="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x5

    const-string v8, "  "

    .line 319
    invoke-static {v7, v8}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    .end local v4    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_8
    add-int/lit8 v4, v2, -0x1

    .end local v2    # "i":I
    .local v4, "i":I
    goto :goto_1

    .line 321
    .end local v4    # "i":I
    :cond_9
    return-void
.end method

.method isBelowWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 2
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget v0, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    iget v1, p1, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTarget(Lcom/android/server/wm/WindowState;)Z
    .locals 1
    .param p1, "win"    # Lcom/android/server/wm/WindowState;

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isWallpaperTargetAnimating()Z
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 258
    invoke-virtual {v0}, Lcom/android/server/wm/AppWindowToken;->isWaitingForTransitionStart()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 256
    :goto_0
    return v0
.end method

.method isWallpaperVisible()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0
.end method

.method processWallpaperDrawPendingTimeout()Z
    .locals 4

    .line 656
    iget v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 657
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 658
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "WindowManager"

    const-string v3, "*** WALLPAPER DRAW TIMEOUT"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 663
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v2

    const-string/jumbo v3, "wallpaperDrawPendingTimeout"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/wm/RecentsAnimationController;->cancelAnimation(ILjava/lang/String;)V

    .line 666
    :cond_2
    return v1

    .line 668
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method removeWallpaperToken(Lcom/android/server/wm/WallpaperWindowToken;)V
    .locals 1
    .param p1, "token"    # Lcom/android/server/wm/WallpaperWindowToken;

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    return-void
.end method

.method screenshotWallpaperLocked()Landroid/graphics/Bitmap;
    .locals 6

    .line 742
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isScreenOn()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 743
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v0, :cond_0

    .line 744
    const-string v0, "WindowManager"

    const-string v2, "Attempted to take screenshot while display was off."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    :cond_0
    return-object v1

    .line 749
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/WallpaperController;->getTopVisibleWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 750
    .local v0, "wallpaperWindowState":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_3

    .line 751
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz v2, :cond_2

    .line 752
    const-string v2, "WindowManager"

    const-string v3, "No visible wallpaper to screenshot"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2
    return-object v1

    .line 757
    :cond_3
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 758
    .local v2, "bounds":Landroid/graphics/Rect;
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 760
    nop

    .line 761
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    .line 760
    invoke-static {v3, v2, v4}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 763
    .local v3, "wallpaperBuffer":Landroid/graphics/GraphicBuffer;
    if-nez v3, :cond_4

    .line 764
    const-string v4, "WindowManager"

    const-string v5, "Failed to screenshot wallpaper"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return-object v1

    .line 767
    :cond_4
    invoke-static {v3}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method sendWindowWallpaperCommand(Lcom/android/server/wm/WindowState;Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 12
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "x"    # I
    .param p4, "y"    # I
    .param p5, "z"    # I
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z

    move-object v0, p0

    move-object v1, p1

    .line 423
    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-eq v1, v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/WallpaperController;->mPrevWallpaperTarget:Lcom/android/server/wm/WindowState;

    if-ne v1, v2, :cond_2

    .line 424
    :cond_0
    move/from16 v2, p7

    .line 425
    .local v2, "doWait":Z
    iget-object v3, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "curTokenNdx":I
    :goto_0
    if-ltz v3, :cond_1

    .line 426
    iget-object v4, v0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WallpaperWindowToken;

    .line 427
    .local v4, "token":Lcom/android/server/wm/WallpaperWindowToken;
    move-object v5, v4

    move-object v6, p2

    move v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/wm/WallpaperWindowToken;->sendWindowWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)V

    .line 425
    .end local v4    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 430
    .end local v3    # "curTokenNdx":I
    :cond_1
    nop

    .line 435
    .end local v2    # "doWait":Z
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method setWindowWallpaperDisplayOffset(Lcom/android/server/wm/WindowState;II)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 414
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v0, p2, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v0, p3, :cond_1

    .line 415
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 416
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 417
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 419
    :cond_1
    return-void
.end method

.method setWindowWallpaperPosition(Lcom/android/server/wm/WindowState;FFFF)V
    .locals 1
    .param p1, "window"    # Lcom/android/server/wm/WindowState;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "xStep"    # F
    .param p5, "yStep"    # F

    .line 404
    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    iput p2, p1, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 406
    iput p3, p1, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 407
    iput p4, p1, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 408
    iput p5, p1, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 409
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/WallpaperController;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;Z)V

    .line 411
    :cond_1
    return-void
.end method

.method startWallpaperAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "a"    # Landroid/view/animation/Animation;

    .line 230
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "curTokenNdx":I
    :goto_0
    if-ltz v0, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WallpaperWindowToken;

    .line 232
    .local v1, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v1, p1}, Lcom/android/server/wm/WallpaperWindowToken;->startAnimation(Landroid/view/animation/Animation;)V

    .line 230
    .end local v1    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 234
    .end local v0    # "curTokenNdx":I
    :cond_0
    return-void
.end method

.method updateWallpaperOffset(Lcom/android/server/wm/WindowState;IIZ)Z
    .locals 21
    .param p1, "wallpaperWin"    # Lcom/android/server/wm/WindowState;
    .param p2, "dw"    # I
    .param p3, "dh"    # I
    .param p4, "sync"    # Z

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "xOffset":I
    const/4 v3, 0x0

    .line 326
    .local v3, "yOffset":I
    const/4 v4, 0x0

    .line 329
    .local v4, "rawChanged":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/WindowState;->isRtl()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move v9, v5

    .line 330
    .local v9, "defaultWallpaperX":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_1

    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperX:F

    goto :goto_1

    :cond_1
    move v5, v9

    :goto_1
    move v10, v5

    .line 331
    .local v10, "wpx":F
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_2

    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperXStep:F

    goto :goto_2

    :cond_2
    const/high16 v5, -0x40800000    # -1.0f

    :goto_2
    move v11, v5

    .line 332
    .local v11, "wpxs":F
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v8, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v8

    sub-int v12, v5, p2

    .line 333
    .local v12, "availw":I
    const/high16 v8, 0x3f000000    # 0.5f

    if-lez v12, :cond_3

    int-to-float v13, v12

    mul-float/2addr v13, v10

    add-float/2addr v13, v8

    float-to-int v13, v13

    neg-int v13, v13

    goto :goto_3

    :cond_3
    const/4 v13, 0x0

    .line 334
    .local v13, "offset":I
    :goto_3
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    const/high16 v7, -0x80000000

    if-eq v5, v7, :cond_4

    .line 335
    iget v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetX:I

    add-int/2addr v13, v5

    .line 337
    :cond_4
    move v5, v13

    .line 339
    .end local v0    # "xOffset":I
    .local v5, "xOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v0, v0, v10

    if-nez v0, :cond_5

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v0, v0, v11

    if-eqz v0, :cond_6

    .line 340
    :cond_5
    iput v10, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 341
    iput v11, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 342
    const/4 v4, 0x1

    .line 345
    :cond_6
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_7

    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperY:F

    goto :goto_4

    :cond_7
    move v0, v8

    :goto_4
    move v15, v0

    .line 346
    .local v15, "wpy":F
    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_8

    iget v0, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperYStep:F

    goto :goto_5

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    :goto_5
    move v6, v0

    .line 347
    .local v6, "wpys":F
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v7, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v7

    sub-int v7, v0, p3

    .line 348
    .local v7, "availh":I
    if-lez v7, :cond_9

    int-to-float v0, v7

    move/from16 v17, v9

    move v9, v15

    mul-float/2addr v0, v9

    .end local v15    # "wpy":F
    .local v9, "wpy":F
    .local v17, "defaultWallpaperX":F
    add-float/2addr v0, v8

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_6

    .end local v17    # "defaultWallpaperX":F
    .local v9, "defaultWallpaperX":F
    .restart local v15    # "wpy":F
    :cond_9
    move/from16 v17, v9

    move v9, v15

    .end local v15    # "wpy":F
    .local v9, "wpy":F
    .restart local v17    # "defaultWallpaperX":F
    const/4 v0, 0x0

    .line 349
    .end local v13    # "offset":I
    .local v0, "offset":I
    :goto_6
    iget v8, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    const/high16 v13, -0x80000000

    if-eq v8, v13, :cond_a

    .line 350
    iget v8, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperDisplayOffsetY:I

    add-int/2addr v0, v8

    .line 352
    .end local v0    # "offset":I
    .restart local v13    # "offset":I
    :cond_a
    move v13, v0

    move v8, v13

    .line 354
    .end local v3    # "yOffset":I
    .local v8, "yOffset":I
    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v0, v0, v9

    if-nez v0, :cond_c

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_b

    goto :goto_8

    .line 360
    .end local v4    # "rawChanged":Z
    .local v14, "rawChanged":Z
    :cond_b
    :goto_7
    move v14, v4

    goto :goto_9

    .line 355
    .end local v14    # "rawChanged":Z
    .restart local v4    # "rawChanged":Z
    :cond_c
    :goto_8
    iput v9, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 356
    iput v6, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 357
    const/4 v4, 0x1

    goto :goto_7

    .line 360
    .end local v4    # "rawChanged":Z
    .restart local v14    # "rawChanged":Z
    :goto_9
    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v5, v8}, Lcom/android/server/wm/WindowStateAnimator;->setWallpaperOffset(II)Z

    move-result v15

    .line 362
    .local v15, "changed":Z
    if-eqz v14, :cond_13

    iget-object v0, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_13

    .line 365
    :try_start_0
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v0, :cond_d

    :try_start_1
    const-string v0, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Report new wp offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 395
    :catch_0
    move-exception v0

    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    goto/16 :goto_c

    .line 368
    :cond_d
    :goto_a
    if-eqz p4, :cond_e

    .line 369
    iput-object v2, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 371
    :cond_e
    :try_start_2
    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget v4, v2, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    iget v0, v2, Lcom/android/server/wm/WindowState;->mWallpaperY:F
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_5

    move/from16 v18, v6

    :try_start_3
    iget v6, v2, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    .end local v6    # "wpys":F
    .local v18, "wpys":F
    move/from16 v19, v7

    :try_start_4
    iget v7, v2, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .end local v7    # "availh":I
    .local v19, "availh":I
    move/from16 v16, v5

    move v5, v0

    .end local v5    # "xOffset":I
    .local v16, "xOffset":I
    move/from16 v20, v8

    move/from16 v8, p4

    .end local v8    # "yOffset":I
    .local v20, "yOffset":I
    :try_start_5
    invoke-interface/range {v3 .. v8}, Landroid/view/IWindow;->dispatchWallpaperOffsets(FFFFZ)V

    .line 374
    if-eqz p4, :cond_12

    .line 375
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_12

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 377
    .local v3, "start":J
    iget-wide v5, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    const-wide/16 v7, 0x2710

    add-long/2addr v5, v7

    cmp-long v0, v5, v3

    if-gez v0, :cond_11

    .line 380
    const-wide/16 v5, 0x96

    :try_start_6
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_f

    const-string v0, "WindowManager"

    const-string v7, "Waiting for offset complete..."

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_f
    iget-object v0, v1, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 384
    goto :goto_b

    .line 383
    :catch_1
    move-exception v0

    .line 385
    :goto_b
    :try_start_7
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v0, :cond_10

    const-string v0, "WindowManager"

    const-string v7, "Offset complete!"

    invoke-static {v0, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_10
    add-long/2addr v5, v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_11

    .line 387
    const-string v0, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeout waiting for wallpaper to offset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iput-wide v3, v1, Lcom/android/server/wm/WallpaperController;->mLastWallpaperTimeoutTime:J

    .line 392
    :cond_11
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 396
    .end local v3    # "start":J
    :cond_12
    goto :goto_d

    .line 395
    :catch_2
    move-exception v0

    goto :goto_c

    .end local v16    # "xOffset":I
    .end local v20    # "yOffset":I
    .restart local v5    # "xOffset":I
    .restart local v8    # "yOffset":I
    :catch_3
    move-exception v0

    move/from16 v16, v5

    move/from16 v20, v8

    .end local v5    # "xOffset":I
    .end local v8    # "yOffset":I
    .restart local v16    # "xOffset":I
    .restart local v20    # "yOffset":I
    goto :goto_c

    .end local v16    # "xOffset":I
    .end local v19    # "availh":I
    .end local v20    # "yOffset":I
    .restart local v5    # "xOffset":I
    .restart local v7    # "availh":I
    .restart local v8    # "yOffset":I
    :catch_4
    move-exception v0

    move/from16 v16, v5

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v5    # "xOffset":I
    .end local v7    # "availh":I
    .end local v8    # "yOffset":I
    .restart local v16    # "xOffset":I
    .restart local v19    # "availh":I
    .restart local v20    # "yOffset":I
    goto :goto_c

    .end local v16    # "xOffset":I
    .end local v18    # "wpys":F
    .end local v19    # "availh":I
    .end local v20    # "yOffset":I
    .restart local v5    # "xOffset":I
    .restart local v6    # "wpys":F
    .restart local v7    # "availh":I
    .restart local v8    # "yOffset":I
    :catch_5
    move-exception v0

    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v5    # "xOffset":I
    .end local v6    # "wpys":F
    .end local v7    # "availh":I
    .end local v8    # "yOffset":I
    .restart local v16    # "xOffset":I
    .restart local v18    # "wpys":F
    .restart local v19    # "availh":I
    .restart local v20    # "yOffset":I
    :goto_c
    goto :goto_d

    .line 399
    .end local v16    # "xOffset":I
    .end local v18    # "wpys":F
    .end local v19    # "availh":I
    .end local v20    # "yOffset":I
    .restart local v5    # "xOffset":I
    .restart local v6    # "wpys":F
    .restart local v7    # "availh":I
    .restart local v8    # "yOffset":I
    :cond_13
    move/from16 v16, v5

    move/from16 v18, v6

    move/from16 v19, v7

    move/from16 v20, v8

    .end local v5    # "xOffset":I
    .end local v6    # "wpys":F
    .end local v7    # "availh":I
    .end local v8    # "yOffset":I
    .restart local v16    # "xOffset":I
    .restart local v18    # "wpys":F
    .restart local v19    # "availh":I
    .restart local v20    # "yOffset":I
    :goto_d
    return v15
.end method

.method updateWallpaperVisibility()V
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTarget:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    .line 264
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "curTokenNdx":I
    :goto_0
    if-ltz v1, :cond_0

    .line 265
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WallpaperWindowToken;

    .line 266
    .local v2, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WallpaperWindowToken;->updateWallpaperVisibility(Z)V

    .line 264
    .end local v2    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 268
    .end local v1    # "curTokenNdx":I
    :cond_0
    return-void
.end method

.method wallpaperCommandComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 492
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 494
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 496
    :cond_0
    return-void
.end method

.method wallpaperOffsetsComplete(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "window"    # Landroid/os/IBinder;

    .line 499
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 500
    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/WallpaperController;->mWaitingOnWallpaper:Lcom/android/server/wm/WindowState;

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 504
    :cond_0
    return-void
.end method

.method wallpaperTransitionReady()Z
    .locals 8

    .line 672
    const/4 v0, 0x1

    .line 673
    .local v0, "transitionReady":Z
    const/4 v1, 0x1

    .line 674
    .local v1, "wallpaperReady":Z
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 675
    .local v2, "curTokenIndex":I
    :goto_0
    const/16 v4, 0x27

    if-ltz v2, :cond_4

    if-eqz v1, :cond_4

    .line 676
    iget-object v5, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperTokens:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WallpaperWindowToken;

    .line 677
    .local v5, "token":Lcom/android/server/wm/WallpaperWindowToken;
    invoke-virtual {v5}, Lcom/android/server/wm/WallpaperWindowToken;->hasVisibleNotDrawnWallpaper()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 679
    const/4 v1, 0x0

    .line 680
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    .line 682
    const/4 v0, 0x0

    .line 684
    :cond_0
    iget v6, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    if-nez v6, :cond_1

    .line 685
    iput v3, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 686
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 687
    iget-object v3, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 690
    :cond_1
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_WALLPAPER:Z

    if-eqz v3, :cond_4

    :cond_2
    const-string v3, "WindowManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wallpaper should be visible but has not been drawn yet. mWallpaperDrawState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 675
    .end local v5    # "token":Lcom/android/server/wm/WallpaperWindowToken;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 696
    .end local v2    # "curTokenIndex":I
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 697
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/WallpaperController;->mWallpaperDrawState:I

    .line 698
    iget-object v2, p0, Lcom/android/server/wm/WallpaperController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 701
    :cond_5
    return v0
.end method
