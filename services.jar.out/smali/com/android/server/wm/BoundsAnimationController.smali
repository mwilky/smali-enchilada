.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    sput-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/BoundsAnimationController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method public static synthetic lambda$MoVv_WhxoMrTVo-xz1qu2FMcYrM(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method private resume()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateBooster()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    return-void
.end method


# virtual methods
.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .locals 22
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move/from16 v0, p5

    iget-object v3, v9, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    const/4 v13, 0x1

    if-eqz v12, :cond_0

    move v3, v13

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v14, v3

    const/4 v3, 0x0

    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateBounds: target="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " from="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v15, p2

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " to="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " schedulePipModeChangedState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " replacing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v15, p2

    :goto_1
    const/4 v8, 0x2

    if-eqz v14, :cond_d

    invoke-virtual {v12, v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p7, :cond_2

    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_2
    if-eqz p6, :cond_3

    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_3
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animateBounds: same destination and moveTo/From flags as existing="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", ignoring..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-object v12

    :cond_5
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v13, :cond_8

    if-ne v0, v13, :cond_6

    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: still animating to fullscreen, keep existing deferred state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: fullscreen animation canceled, callback on start already processed, schedule deferred update on end"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v0, 0x2

    :goto_2
    goto :goto_3

    :cond_8
    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$1000(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v4

    if-ne v4, v8, :cond_b

    if-ne v0, v13, :cond_9

    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_b

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: non-fullscreen animation canceled, callback on start will be processed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    sget-boolean v4, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v4, :cond_a

    const-string v4, "WindowManager"

    const-string v5, "animateBounds: still animating from fullscreen, keep existing deferred state"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v0, 0x2

    goto :goto_2

    :cond_b
    :goto_3
    if-nez p6, :cond_c

    if-nez p7, :cond_c

    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$800(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v2

    invoke-static {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->access$900(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)Z

    move-result v1

    goto :goto_4

    :cond_c
    move/from16 v1, p6

    move/from16 v2, p7

    :goto_4
    invoke-virtual {v12}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    move/from16 v16, v0

    move/from16 v18, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_d
    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v16, v0

    :goto_5
    move/from16 v17, v3

    new-instance v20, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object/from16 v0, v20

    move-object v1, v9

    move-object v2, v10

    move-object v3, v15

    move-object v4, v11

    move/from16 v5, v16

    move/from16 v6, v17

    move/from16 v7, v18

    move v13, v8

    move/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    iget-object v1, v9, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v10, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v13, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    const/4 v1, -0x1

    move/from16 v2, p4

    if-eq v2, v1, :cond_e

    move v1, v2

    goto :goto_6

    :cond_e
    const/16 v1, 0x1a9

    :goto_6
    const/4 v3, 0x1

    mul-int/2addr v1, v3

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, v9, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onAllWindowsDrawn()V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    const-string/jumbo v1, "onAllWindowsDrawn:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$BoundsAnimationController$MoVv_WhxoMrTVo-xz1qu2FMcYrM;-><init>(Lcom/android/server/wm/BoundsAnimationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
