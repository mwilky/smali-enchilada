.class public Lcom/android/server/wm/AppTransition;
.super Ljava/lang/Object;
.source "AppTransition.java"

# interfaces
.implements Lcom/android/internal/util/DumpUtils$Dump;


# static fields
.field private static final APP_STATE_IDLE:I = 0x0

.field private static final APP_STATE_READY:I = 0x1

.field private static final APP_STATE_RUNNING:I = 0x2

.field private static final APP_STATE_TIMEOUT:I = 0x3

.field private static final APP_TRANSITION_TIMEOUT_MS:J = 0x1388L

.field private static final CLIP_REVEAL_TRANSLATION_Y_DP:I = 0x8

.field static final DEFAULT_APP_TRANSITION_DURATION:I = 0xe1

.field private static final MAX_CLIP_REVEAL_TRANSITION_DURATION:I = 0x1a4

.field private static final NEXT_TRANSIT_TYPE_CLIP_REVEAL:I = 0x8

.field private static final NEXT_TRANSIT_TYPE_CUSTOM:I = 0x1

.field private static final NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE:I = 0x7

.field private static final NEXT_TRANSIT_TYPE_NONE:I = 0x0

.field private static final NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS:I = 0x9

.field private static final NEXT_TRANSIT_TYPE_REMOTE:I = 0xa

.field private static final NEXT_TRANSIT_TYPE_SCALE_UP:I = 0x2

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN:I = 0x6

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP:I = 0x5

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN:I = 0x4

.field private static final NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP:I = 0x3

.field private static final RECENTS_THUMBNAIL_FADEIN_FRACTION:F = 0.5f

.field private static final RECENTS_THUMBNAIL_FADEOUT_FRACTION:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final THUMBNAIL_APP_TRANSITION_DURATION:I = 0xe1

.field private static final THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_DOWN:I = 0x2

.field private static final THUMBNAIL_TRANSITION_ENTER_SCALE_UP:I = 0x0

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_DOWN:I = 0x3

.field private static final THUMBNAIL_TRANSITION_EXIT_SCALE_UP:I = 0x1

.field static final TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

.field private mAppTransitionState:I

.field private final mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

.field private final mClipRevealTranslationY:I

.field private final mConfigShortAnimTime:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDecelerateInterpolator:Landroid/view/animation/Interpolator;

.field private final mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

.field private mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

.field private final mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mGridLayoutRecentsEnabled:Z

.field private mLastClipRevealMaxTranslation:I

.field private mLastClipRevealTransitionDuration:J

.field private mLastClosingApp:Ljava/lang/String;

.field private mLastHadClipReveal:Z

.field private mLastOpeningApp:Ljava/lang/String;

.field private mLastUsedAppTransition:I

.field private final mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLowRamRecentsEnabled:Z

.field private mNextAppTransition:I

.field private final mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/AppTransitionAnimationSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

.field private mNextAppTransitionAnimationsSpecsPending:Z

.field private mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionEnter:I

.field private mNextAppTransitionExit:I

.field private mNextAppTransitionFlags:I

.field private mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

.field private mNextAppTransitionInPlace:I

.field private mNextAppTransitionInsets:Landroid/graphics/Rect;

.field private mNextAppTransitionPackage:Ljava/lang/String;

.field private mNextAppTransitionScaleUp:Z

.field private mNextAppTransitionType:I

.field private mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

.field private mScaleDownAnim:Landroid/view/animation/Animation;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

.field private final mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

.field private mTmpFromClipRect:Landroid/graphics/Rect;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mTmpToClipRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e99999a    # 0.3f

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3f59999a    # 0.85f

    invoke-direct {v0, v3, v1, v2, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mClipHorizontalInterpolator:Landroid/view/animation/Interpolator;

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    const-wide/16 v2, 0xe1

    iput-wide v2, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    const v0, 0x10c000e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000d

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v2, 0x10e0000

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    const v0, 0x10c0003

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/server/wm/AppTransition$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$1;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/android/server/wm/AppTransition$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/AppTransition$2;-><init>(Lcom/android/server/wm/AppTransition;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v2, v0

    float-to-int v0, v2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mClipRevealTranslationY:I

    const-string/jumbo v0, "ro.recents.grid"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/AppTransition;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wm/AppTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method private appStateToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "APP_STATE_TIMEOUT"

    return-object v0

    :pswitch_1
    const-string v0, "APP_STATE_RUNNING"

    return-object v0

    :pswitch_2
    const-string v0, "APP_STATE_READY"

    return-object v0

    :pswitch_3
    const-string v0, "APP_STATE_IDLE"

    return-object v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static appTransitionToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "TRANSIT_CRASHING_ACTIVITY_CLOSE"

    return-object v0

    :pswitch_2
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_CLOSE"

    return-object v0

    :pswitch_3
    const-string v0, "TRANSIT_TRANSLUCENT_ACTIVITY_OPEN"

    return-object v0

    :pswitch_4
    const-string v0, "TRANSIT_KEYGUARD_UNOCCLUDE"

    return-object v0

    :pswitch_5
    const-string v0, "TRANSIT_KEYGUARD_OCCLUDE"

    return-object v0

    :pswitch_6
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY_ON_WALLPAPER"

    return-object v0

    :pswitch_7
    const-string v0, "TRANSIT_KEYGUARD_GOING_AWAY"

    return-object v0

    :pswitch_8
    const-string v0, "TRANSIT_DOCK_TASK_FROM_RECENTS"

    return-object v0

    :pswitch_9
    const-string v0, "TRANSIT_ACTIVITY_RELAUNCH"

    return-object v0

    :pswitch_a
    const-string v0, "TRANSIT_TASK_OPEN_BEHIND"

    return-object v0

    :pswitch_b
    const-string v0, "TRANSIT_WALLPAPER_INTRA_CLOSE"

    return-object v0

    :pswitch_c
    const-string v0, "TRANSIT_WALLPAPER_INTRA_OPEN"

    return-object v0

    :pswitch_d
    const-string v0, "TRANSIT_WALLPAPER_OPEN"

    return-object v0

    :pswitch_e
    const-string v0, "TRANSIT_WALLPAPER_CLOSE"

    return-object v0

    :pswitch_f
    const-string v0, "TRANSIT_TASK_TO_BACK"

    return-object v0

    :pswitch_10
    const-string v0, "TRANSIT_TASK_TO_FRONT"

    return-object v0

    :pswitch_11
    const-string v0, "TRANSIT_TASK_CLOSE"

    return-object v0

    :pswitch_12
    const-string v0, "TRANSIT_TASK_OPEN"

    return-object v0

    :pswitch_13
    const-string v0, "TRANSIT_ACTIVITY_CLOSE"

    return-object v0

    :pswitch_14
    const-string v0, "TRANSIT_ACTIVITY_OPEN"

    return-object v0

    :pswitch_15
    const-string v0, "TRANSIT_NONE"

    return-object v0

    :pswitch_16
    const-string v0, "TRANSIT_UNSET"

    return-object v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_16
        :pswitch_15
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J
    .locals 3

    if-nez p1, :cond_0

    const-wide/16 v0, 0xe1

    return-wide v0

    :cond_0
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x43610000    # 225.0f

    const/high16 v2, 0x43430000    # 195.0f

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-long v1, v1

    return-wide v1
.end method

.method private canOverridePendingAppTransition()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static computePivot(IF)F
    .locals 3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x38d1b717    # 1.0E-4f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    int-to-float v1, p0

    return v1

    :cond_0
    neg-int v1, p0

    int-to-float v1, v1

    div-float/2addr v1, v0

    return v1
.end method

.method private createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p3, v0}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;

    move-result-object v0

    return-object v0
.end method

.method private createAspectScaledThumbnailFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Z)Landroid/view/animation/AnimationSet;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    if-eqz p4, :cond_0

    div-float v9, v5, v7

    :goto_0
    move v11, v9

    goto :goto_1

    :cond_0
    div-float v9, v7, v5

    goto :goto_0

    :goto_1
    if-eqz p4, :cond_1

    div-float v9, v6, v8

    :goto_2
    move v13, v9

    goto :goto_3

    :cond_1
    div-float v9, v8, v6

    goto :goto_2

    :goto_3
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x1

    invoke-direct {v9, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v10, 0x0

    if-nez v3, :cond_2

    move v12, v10

    goto :goto_4

    :cond_2
    iget v12, v3, Landroid/graphics/Rect;->left:I

    iget v14, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v14

    :goto_4
    move v15, v12

    if-nez v3, :cond_3

    goto :goto_5

    :cond_3
    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v12, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v12

    :goto_5
    move v14, v10

    if-eqz p4, :cond_4

    move v10, v7

    goto :goto_6

    :cond_4
    move v10, v5

    :goto_6
    int-to-float v12, v15

    add-float/2addr v10, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float v23, v10, v12

    if-eqz p4, :cond_5

    move v10, v8

    goto :goto_7

    :cond_5
    move v10, v6

    :goto_7
    int-to-float v3, v14

    add-float/2addr v10, v3

    div-float v3, v10, v12

    if-eqz p4, :cond_6

    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    move-object/from16 v10, v17

    move/from16 v24, v14

    move/from16 v14, v16

    move/from16 v25, v15

    move/from16 v15, v23

    move/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto :goto_8

    :cond_6
    move/from16 v24, v14

    move/from16 v25, v15

    new-instance v10, Landroid/view/animation/ScaleAnimation;

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v16, v10

    move/from16 v18, v11

    move/from16 v20, v13

    move/from16 v21, v23

    move/from16 v22, v3

    invoke-direct/range {v16 .. v22}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_8
    iget v12, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v12, v14

    iget v14, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    iget v15, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v15, v15, v16

    iget v1, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    add-int v1, v1, v16

    if-eqz p4, :cond_7

    sub-int v16, v12, v15

    goto :goto_9

    :cond_7
    sub-int v16, v15, v12

    :goto_9
    move/from16 v26, v16

    if-eqz p4, :cond_8

    sub-int v16, v14, v1

    goto :goto_a

    :cond_8
    sub-int v16, v1, v14

    :goto_a
    move/from16 v27, v16

    move/from16 v28, v1

    if-eqz p4, :cond_9

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    move/from16 v29, v3

    move/from16 v2, v26

    int-to-float v3, v2

    move/from16 v30, v5

    move/from16 v4, v27

    int-to-float v5, v4

    move/from16 v31, v6

    const/4 v6, 0x0

    invoke-direct {v1, v3, v6, v5, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b

    :cond_9
    move/from16 v29, v3

    move/from16 v30, v5

    move/from16 v31, v6

    move/from16 v2, v26

    move/from16 v4, v27

    const/4 v6, 0x0

    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float v3, v2

    int-to-float v5, v4

    invoke-direct {v1, v6, v3, v6, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_b
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    if-eqz v3, :cond_a

    new-instance v5, Lcom/android/server/wm/AppTransition$3;

    invoke-direct {v5, v0, v3}, Lcom/android/server/wm/AppTransition$3;-><init>(Lcom/android/server/wm/AppTransition;Landroid/os/IRemoteCallback;)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_a
    return-object v9
.end method

.method private createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 30

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v5, 0x0

    if-eqz p2, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v8}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    const/16 v8, 0xc8

    const/4 v9, 0x0

    move v10, v8

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v16

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v18, v11, 0x2

    iget-object v11, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v19, v11, 0x2

    sub-int v11, v16, v18

    iget v12, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    sub-int v12, v17, v19

    iget v13, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v3, v17, v19

    if-le v14, v3, :cond_0

    sub-int v3, v17, v19

    iget v14, v2, Landroid/graphics/Rect;->top:I

    sub-int v8, v3, v14

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x1

    move/from16 v21, v3

    move v3, v8

    move/from16 v20, v10

    goto :goto_0

    :cond_0
    move v3, v8

    move/from16 v21, v10

    move/from16 v20, v12

    :goto_0
    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int v10, v16, v18

    if-le v8, v10, :cond_1

    sub-int v8, v16, v18

    iget v10, v2, Landroid/graphics/Rect;->left:I

    sub-int v9, v8, v10

    const/4 v11, 0x0

    const/4 v13, 0x1

    :cond_1
    iget v8, v2, Landroid/graphics/Rect;->right:I

    add-int v10, v16, v18

    if-ge v8, v10, :cond_2

    add-int v8, v16, v18

    iget v10, v2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v10

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    sub-int v11, v7, v8

    const/4 v13, 0x1

    :cond_2
    move v12, v11

    move v14, v13

    move v13, v9

    int-to-float v8, v13

    int-to-float v9, v3

    move-object/from16 v11, p4

    invoke-direct {v0, v14, v8, v9, v11}, Lcom/android/server/wm/AppTransition;->calculateClipRevealTransitionDuration(ZFFLandroid/graphics/Rect;)J

    move-result-wide v9

    new-instance v8, Lcom/android/server/wm/animation/ClipRectLRAnimation;

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v12

    move/from16 v22, v14

    const/4 v14, 0x0

    invoke-direct {v8, v12, v4, v14, v7}, Lcom/android/server/wm/animation/ClipRectLRAnimation;-><init>(IIII)V

    move-object v4, v8

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v23, 0x4b

    move/from16 v25, v15

    sub-long v14, v9, v23

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    int-to-float v14, v13

    int-to-float v15, v3

    invoke-direct {v8, v14, v5, v15, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v15, v8

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v8}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v15, v9, v10}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    new-instance v23, Lcom/android/server/wm/animation/ClipRectTBAnimation;

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    add-int v14, v20, v8

    const/16 v24, 0x0

    const/16 v26, 0x0

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v27, v8

    move-object/from16 v8, v23

    move-wide v5, v9

    move/from16 v9, v20

    move v10, v14

    move/from16 v11, v24

    move/from16 v24, v12

    move/from16 v12, v25

    move v14, v13

    move/from16 v13, v21

    move/from16 v28, v14

    move/from16 v14, v26

    move-object v1, v15

    move/from16 v2, v25

    move-object/from16 v15, v27

    invoke-direct/range {v8 .. v15}, Lcom/android/server/wm/animation/ClipRectTBAnimation;-><init>(IIIIIILandroid/view/animation/Interpolator;)V

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v8, v9}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    move-wide v9, v5

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v12, v13}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v9, v10}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v12}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    invoke-virtual {v12, v7, v2, v7, v2}, Landroid/view/animation/AnimationSet;->initialize(IIII)V

    move-object v15, v12

    iput-boolean v14, v0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    iput-wide v5, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    if-eqz v22, :cond_3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    move-object/from16 v29, v1

    move/from16 v14, v28

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v13, v1

    goto :goto_1

    :cond_3
    move-object/from16 v29, v1

    move/from16 v14, v28

    :goto_1
    iput v13, v0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    nop

    move/from16 v1, p1

    goto :goto_5

    :cond_4
    move/from16 v1, p1

    packed-switch v1, :pswitch_data_0

    const-wide/16 v2, 0xe1

    goto :goto_2

    :pswitch_0
    iget v2, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v2, v2

    nop

    :goto_2
    nop

    const/16 v4, 0xe

    if-eq v1, v4, :cond_6

    const/16 v4, 0xf

    if-ne v1, v4, :cond_5

    goto :goto_3

    :cond_5
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    :goto_3
    const/high16 v5, 0x3f800000    # 1.0f

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    :goto_4
    move-object v15, v4

    iget-object v4, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v15, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v15, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v15, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :goto_5
    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private createCurvedMotion(FFFF)Landroid/view/animation/Animation;
    .locals 2

    sub-float v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/AppTransition;->createCurvedPath(FFFF)Landroid/graphics/Path;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/animation/CurvedTranslateAnimation;

    invoke-direct {v1, v0}, Lcom/android/server/wm/animation/CurvedTranslateAnimation;-><init>(Landroid/graphics/Path;)V

    return-object v1

    :cond_1
    :goto_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    return-object v0
.end method

.method private createCurvedPath(FFFF)Landroid/graphics/Path;
    .locals 8

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, p1, p3}, Landroid/graphics/Path;->moveTo(FF)V

    cmpl-float v1, p3, p4

    const v2, 0x3dcccccd    # 0.1f

    const v3, 0x3f666666    # 0.9f

    if-lez v1, :cond_0

    mul-float/2addr v3, p3

    mul-float/2addr v2, p4

    add-float v5, v3, v2

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p2

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    :cond_0
    mul-float/2addr v2, p3

    mul-float/2addr v3, p4

    add-float v5, v2, v3

    move-object v1, v0

    move v2, p1

    move v3, p3

    move v4, p1

    move v6, p2

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    :goto_0
    return-object v0
.end method

.method private createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 13

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    neg-int v3, v0

    neg-int v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    const/4 v8, 0x0

    cmpg-float v9, v4, v5

    if-gtz v9, :cond_0

    cmpg-float v9, v6, v7

    if-gtz v9, :cond_0

    new-instance v9, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, p0, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, p0, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v9, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    new-instance v9, Landroid/view/animation/ScaleAnimation;

    div-float v10, v4, v5

    div-float v11, v6, v7

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v6

    div-float/2addr v9, v7

    float-to-int v8, v9

    :goto_0
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    iget v10, p1, Landroid/graphics/Rect;->left:I

    sub-int v10, v0, v10

    int-to-float v10, v10

    iget v11, p1, Landroid/graphics/Rect;->top:I

    sub-int v11, v1, v11

    sub-int/2addr v11, v8

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-direct {v9, v10, v12, v11, v12}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v10, 0xe1

    invoke-virtual {v2, v10, v11}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    return-object v2
.end method

.method private createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v2}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    iget-object v7, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    iget-object v8, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    int-to-float v9, v3

    div-float/2addr v8, v9

    new-instance v16, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    invoke-static {v9, v8}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v16

    move v10, v7

    move v12, v8

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v4, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v10, 0x0

    invoke-direct {v6, v10}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v6, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v6, v5}, Landroid/view/animation/AnimationSet;->setDetachWallpaper(Z)V

    nop

    move-object v4, v6

    goto :goto_1

    :cond_0
    const/16 v7, 0xe

    if-eq v1, v7, :cond_2

    const/16 v7, 0xf

    if-ne v1, v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v6, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v7

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setDetachWallpaper(Z)V

    :goto_1
    nop

    packed-switch v1, :pswitch_data_0

    const-wide/16 v7, 0xe1

    goto :goto_2

    :pswitch_0
    iget v6, v0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    int-to-long v7, v6

    nop

    :goto_2
    nop

    invoke-virtual {v4, v7, v8}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v5, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v2, v3, v2, v3}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private fetchAppTransitionSpecsFromFuture()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mDefaultExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;

    invoke-direct {v2, p0, v0}, Lcom/android/server/wm/-$$Lambda$AppTransition$CyT0POoZKxhd7Ybm_eVYXG4NCrI;-><init>(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private getAspectScaleDuration()J
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x12f

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xe1

    return-wide v0
.end method

.method private getAspectScaleInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/wm/AppTransition;->TOUCH_RESPONSE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method private getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading animations: layout params pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " resId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    iget v3, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_6

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eqz v0, :cond_6

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "android"

    :goto_2
    iget v1, p1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/high16 v2, -0x1000000

    and-int/2addr v2, v1

    const/high16 v3, 0x1000000

    if-ne v2, v3, :cond_4

    const-string v0, "android"

    :cond_4
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_5

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading animations: picked package="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v2

    sget-object v3, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v4, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    return-object v2

    :cond_6
    return-object v1
.end method

.method private getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " resId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    const/high16 v0, -0x1000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_1

    const-string p1, "android"

    :cond_1
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v0, :cond_2

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading animations: picked package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->WindowAnimation:[I

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/AttributeCache;->get(Ljava/lang/String;I[II)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iget-object v0, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "WindowManager"

    const-string v1, "Starting rect for app requested, but none available"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1
    return-void
.end method

.method static isActivityTransit(I)Z
    .locals 1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-ne p0, v0, :cond_0

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

.method public static isKeyguardGoingAwayTransit(I)Z
    .locals 1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

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

.method private static isKeyguardTransit(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-ne p0, v0, :cond_0

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

.method private static isTaskOpenTransit(I)Z
    .locals 1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

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

.method static isTaskTransit(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransition;->isTaskOpenTransit(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0x11

    if-ne p0, v0, :cond_0

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

.method public static synthetic lambda$fetchAppTransitionSpecsFromFuture$0(Lcom/android/server/wm/AppTransition;Landroid/view/IAppTransitionAnimationSpecsFuture;)V
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    invoke-interface {p1}, Landroid/view/IAppTransitionAnimationSpecsFuture;->get()[Landroid/view/AppTransitionAnimationSpec;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to fetch app transition specs: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    iget-boolean v4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p0, v1, v3, v0, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;
    .locals 2

    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Ljava/lang/String;I)Lcom/android/server/AttributeCache$Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    invoke-static {v1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;
    .locals 5

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    const/16 v4, 0x15

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-interface {v3, v1, v0}, Lcom/android/server/policy/WindowManagerPolicy;->createHiddenByKeyguardExit(ZZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private needsBoosting()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    if-eq v3, v2, :cond_2

    iget v3, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    return v1
.end method

.method private notifyAppTransitionCancelledLocked(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionCancelledLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAppTransitionPendingLocked()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionPendingLocked()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I
    .locals 14

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    move v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v3

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private prepare()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionPendingLocked()V

    iput-boolean v1, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    iput v1, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    const-wide/16 v0, 0xe1

    iput-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method private putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V
    .locals 4

    new-instance v0, Landroid/view/AppTransitionAnimationSpec;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, -0x1

    invoke-direct {v0, v2, p5, v1}, Landroid/view/AppTransitionAnimationSpec;-><init>(ILandroid/graphics/GraphicBuffer;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    return-void
.end method

.method private setAppTransition(II)V
    .locals 2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    return-void
.end method

.method private setAppTransitionState(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->updateBooster()V

    return-void
.end method

.method private shouldScaleDownThumbnailTransition(II)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private transitTypeToString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_1
    const-string v0, "NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS"

    return-object v0

    :pswitch_2
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM_IN_PLACE"

    return-object v0

    :pswitch_3
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_DOWN"

    return-object v0

    :pswitch_4
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_ASPECT_SCALE_UP"

    return-object v0

    :pswitch_5
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_DOWN"

    return-object v0

    :pswitch_6
    const-string v0, "NEXT_TRANSIT_TYPE_THUMBNAIL_SCALE_UP"

    return-object v0

    :pswitch_7
    const-string v0, "NEXT_TRANSIT_TYPE_SCALE_UP"

    return-object v0

    :pswitch_8
    const-string v0, "NEXT_TRANSIT_TYPE_CUSTOM"

    return-object v0

    :pswitch_9
    const-string v0, "NEXT_TRANSIT_TYPE_NONE"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateToTranslucentAnimIfNeeded(II)I
    .locals 1

    const/16 v0, 0x18

    if-ne p2, v0, :cond_0

    const v0, 0x10a000f

    if-ne p1, v0, :cond_0

    const v0, 0x10a0012

    return v0

    :cond_0
    const/16 v0, 0x19

    if-ne p2, v0, :cond_1

    const v0, 0x10a000e

    if-ne p1, v0, :cond_1

    const v0, 0x10a0011

    return v0

    :cond_1
    return p1
.end method


# virtual methods
.method canSkipFirstFrame()Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v2, 0x14

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method clear()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    return-void
.end method

.method createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;
    .locals 34

    move-object/from16 v7, p0

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    move/from16 v15, p10

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v16

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v17

    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v7, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    iget-object v0, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    int-to-float v1, v6

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move/from16 v18, v1

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-lez v4, :cond_1

    int-to-float v1, v4

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    move/from16 v19, v1

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v5, v1, v2

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int v20, v1, v2

    const/16 v1, 0xe

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    move v12, v4

    move v14, v5

    move v8, v6

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invalid thumbnail transition state"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-ne v9, v1, :cond_2

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v2, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    goto :goto_2

    :cond_2
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    goto/16 :goto_f

    :pswitch_1
    if-ne v9, v1, :cond_3

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    :goto_2
    goto/16 :goto_f

    :cond_3
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v1

    goto/16 :goto_f

    :pswitch_2
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_4

    move/from16 v21, v1

    goto :goto_3

    :cond_4
    move/from16 v21, v3

    :goto_3
    if-eqz p9, :cond_5

    if-eqz v21, :cond_5

    invoke-direct {v7, v10, v12, v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_4
    move-object v1, v0

    goto/16 :goto_f

    :cond_5
    if-eqz p9, :cond_6

    invoke-direct {v7, v10, v12, v15}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailExitFreeformAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_4

    :cond_6
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move/from16 v3, p2

    move/from16 v1, p3

    invoke-direct {v7, v3, v1}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v23

    if-eqz v23, :cond_f

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int v2, v16, v2

    iget v1, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float v1, v18, v1

    iget-boolean v2, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v2, :cond_7

    div-float v2, v19, v1

    float-to-int v2, v2

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v2

    iput v8, v3, Landroid/graphics/Rect;->bottom:I

    :cond_7
    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v11}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v2, Landroid/view/animation/ScaleAnimation;

    if-eqz v21, :cond_8

    move/from16 v25, v1

    goto :goto_5

    :cond_8
    const/high16 v25, 0x3f800000    # 1.0f

    :goto_5
    if-eqz v21, :cond_9

    const/high16 v26, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_9
    move/from16 v26, v1

    :goto_6
    if-eqz v21, :cond_a

    move/from16 v27, v1

    goto :goto_7

    :cond_a
    const/high16 v27, 0x3f800000    # 1.0f

    :goto_7
    if-eqz v21, :cond_b

    const/high16 v28, 0x3f800000    # 1.0f

    goto :goto_8

    :cond_b
    move/from16 v28, v1

    :goto_8
    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x40000000    # 2.0f

    div-float v29, v3, v8

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v8

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    add-float v30, v3, v8

    move-object/from16 v24, v2

    invoke-direct/range {v24 .. v30}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v8, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    const/high16 v22, 0x40000000    # 2.0f

    div-float v8, v8, v22

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v9, v9, v22

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget v12, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v12

    int-to-float v12, v12

    const/high16 v22, 0x40000000    # 2.0f

    div-float v12, v12, v22

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float v14, v14, v22

    mul-float/2addr v14, v1

    sub-float/2addr v12, v14

    iget-boolean v14, v7, Lcom/android/server/wm/AppTransition;->mLowRamRecentsEnabled:Z

    if-eqz v14, :cond_c

    iget v14, v11, Landroid/graphics/Rect;->top:I

    if-nez v14, :cond_c

    if-eqz v21, :cond_c

    iget-object v14, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v31, v1

    iget v1, v14, Landroid/graphics/Rect;->top:I

    iget v10, v13, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v14, Landroid/graphics/Rect;->top:I

    iget v1, v13, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v12, v1

    goto :goto_9

    :cond_c
    move/from16 v31, v1

    :goto_9
    sub-float v1, v3, v8

    sub-float v10, v9, v12

    if-eqz v21, :cond_d

    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    move/from16 v32, v3

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    move/from16 v33, v8

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v14, v3, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_a

    :cond_d
    move/from16 v32, v3

    move/from16 v33, v8

    new-instance v14, Landroid/view/animation/ClipRectAnimation;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v8, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v14, v3, v8}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_a
    move-object v3, v14

    if-eqz v21, :cond_e

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v10, v8

    const/4 v14, 0x0

    invoke-direct {v7, v1, v14, v8, v14}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    goto :goto_b

    :cond_e
    const/4 v14, 0x0

    iget v8, v11, Landroid/graphics/Rect;->top:I

    int-to-float v8, v8

    sub-float v8, v10, v8

    invoke-direct {v7, v14, v1, v14, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_e

    :cond_f
    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v6

    iput v2, v1, Landroid/graphics/Rect;->right:I

    if-eqz v21, :cond_10

    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_c

    :cond_10
    new-instance v1, Landroid/view/animation/ClipRectAnimation;

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :goto_c
    if-eqz v21, :cond_11

    int-to-float v2, v5

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8, v3, v8}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_d

    :cond_11
    const/4 v8, 0x0

    int-to-float v2, v5

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int v3, v20, v3

    int-to-float v3, v3

    invoke-direct {v7, v8, v2, v8, v3}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v2

    :goto_d
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :goto_e
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setZAdjustment(I)V

    nop

    :goto_f
    nop

    nop

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v8

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v10

    move-object v0, v7

    move/from16 v2, v16

    move/from16 v3, v17

    move v12, v4

    move v14, v5

    move-wide v4, v8

    move v8, v6

    move-object v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method createCrossProfileAppsThumbnail(ILandroid/graphics/Rect;)Landroid/graphics/GraphicBuffer;
    .locals 10

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    new-instance v2, Landroid/graphics/Picture;

    invoke-direct {v2}, Landroid/graphics/Picture;-><init>()V

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v5, v4, v4, v4}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    iget-object v4, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105005a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sub-int v6, v0, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v7, v1, v4

    div-int/lit8 v7, v7, 0x2

    add-int v8, v0, v4

    div-int/lit8 v8, v8, 0x2

    add-int v9, v1, v4

    div-int/lit8 v9, v9, 0x2

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    const v7, 0x106000b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-virtual {v5, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v2}, Landroid/graphics/Picture;->endRecording()V

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v6

    return-object v6
.end method

.method createCrossProfileAppsThumbnailAnimationLocked(Landroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 9

    const-string v0, "android"

    const v1, 0x10a0021

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method createThumbnailAspectScaleAnimationLocked(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/GraphicBuffer;III)Landroid/view/animation/Animation;
    .locals 33

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v10

    const/high16 v0, 0x3f800000    # 1.0f

    if-lez v10, :cond_0

    int-to-float v1, v10

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    move v11, v1

    invoke-virtual/range {p3 .. p3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v1, v13

    div-float v21, v1, v11

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    move/from16 v6, p4

    invoke-virtual {v7, v6, v1}, Lcom/android/server/wm/AppTransition;->getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V

    move/from16 v4, p5

    move/from16 v5, p6

    invoke-direct {v7, v4, v5}, Lcom/android/server/wm/AppTransition;->shouldScaleDownThumbnailTransition(II)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v14, v21, v0

    mul-float/2addr v3, v14

    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    add-float/2addr v3, v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    div-float v15, v0, v21

    sub-float v15, v0, v15

    mul-float/2addr v14, v15

    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    add-float/2addr v14, v15

    iget-object v15, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v0, v16, 0x2

    int-to-float v0, v0

    div-float v0, v0, v21

    move/from16 v22, v0

    iget-boolean v0, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-eqz v0, :cond_1

    int-to-float v0, v12

    sub-float/2addr v2, v0

    int-to-float v0, v12

    mul-float v0, v0, v21

    sub-float/2addr v14, v0

    :cond_1
    move v0, v2

    move/from16 v23, v22

    move v2, v1

    move/from16 v22, v15

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, v7, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget v14, v8, Landroid/graphics/Rect;->left:I

    int-to-float v14, v14

    iget v15, v8, Landroid/graphics/Rect;->top:I

    int-to-float v15, v15

    move/from16 v22, v0

    move/from16 v23, v1

    move v0, v3

    move v3, v14

    move v14, v15

    :goto_1
    move v1, v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleDuration()J

    move-result-wide v14

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getAspectScaleInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v6

    iget-boolean v4, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-wide/from16 v24, v14

    const/4 v15, 0x0

    const/4 v14, 0x0

    if-eqz v4, :cond_7

    new-instance v4, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v17, 0x3f800000    # 1.0f

    move v5, v14

    move-wide/from16 v26, v24

    move-object v14, v4

    move v5, v15

    move/from16 v15, v16

    move/from16 v16, v21

    move/from16 v18, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v4, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    move-wide/from16 v14, v26

    invoke-virtual {v4, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    move/from16 v28, v11

    new-instance v11, Landroid/view/animation/AlphaAnimation;

    move/from16 v29, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v11, v13, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v5, v11

    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v13, 0x13

    if-ne v11, v13, :cond_3

    sget-object v11, Lcom/android/server/wm/AppTransition;->THUMBNAIL_DOCK_INTERPOLATOR:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v5, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v11, v7, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v11, v13, :cond_4

    const-wide/16 v16, 0x2

    div-long v16, v14, v16

    move-wide/from16 v8, v16

    goto :goto_3

    :cond_4
    nop

    move-wide v8, v14

    :goto_3
    invoke-virtual {v5, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-direct {v7, v2, v3, v0, v1}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v12}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move-object/from16 v13, p1

    invoke-virtual {v9, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v11, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->right:I

    iget-object v9, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    div-float v11, v11, v21

    float-to-int v11, v11

    iput v11, v9, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v9, p2

    if-eqz v9, :cond_5

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    move/from16 v30, v10

    iget v10, v9, Landroid/graphics/Rect;->left:I

    neg-int v10, v10

    int-to-float v10, v10

    mul-float v10, v10, v21

    float-to-int v10, v10

    move/from16 v31, v12

    iget v12, v9, Landroid/graphics/Rect;->top:I

    neg-int v12, v12

    int-to-float v12, v12

    mul-float v12, v12, v21

    float-to-int v12, v12

    iget v13, v9, Landroid/graphics/Rect;->right:I

    neg-int v13, v13

    int-to-float v13, v13

    mul-float v13, v13, v21

    float-to-int v13, v13

    move/from16 v32, v0

    iget v0, v9, Landroid/graphics/Rect;->bottom:I

    neg-int v0, v0

    int-to-float v0, v0

    mul-float v0, v0, v21

    float-to-int v0, v0

    invoke-virtual {v11, v10, v12, v13, v0}, Landroid/graphics/Rect;->inset(IIII)V

    goto :goto_4

    :cond_5
    move/from16 v32, v0

    move/from16 v30, v10

    move/from16 v31, v12

    :goto_4
    new-instance v0, Landroid/view/animation/ClipRectAnimation;

    iget-object v10, v7, Lcom/android/server/wm/AppTransition;->mTmpFromClipRect:Landroid/graphics/Rect;

    iget-object v11, v7, Lcom/android/server/wm/AppTransition;->mTmpToClipRect:Landroid/graphics/Rect;

    invoke-direct {v0, v10, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v14, v15}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v11, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v11, :cond_6

    invoke-virtual {v10, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    invoke-virtual {v10, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    nop

    move-object v0, v10

    nop

    move-object v12, v0

    move-wide v10, v14

    move/from16 v5, v32

    goto :goto_5

    :cond_7
    move/from16 v32, v0

    move/from16 v30, v10

    move/from16 v28, v11

    move/from16 v31, v12

    move/from16 v29, v13

    move v5, v15

    move-wide/from16 v14, v24

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v16, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    move-wide v10, v14

    move-object v14, v0

    move/from16 v15, v21

    move/from16 v17, v21

    move/from16 v19, v22

    move/from16 v20, v23

    invoke-direct/range {v14 .. v20}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v5, v7, Lcom/android/server/wm/AppTransition;->mThumbnailFadeInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v5}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    move/from16 v5, v32

    invoke-direct {v7, v3, v2, v1, v5}, Lcom/android/server/wm/AppTransition;->createCurvedMotion(FFFF)Landroid/view/animation/Animation;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v10, v11}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v12, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-boolean v13, v7, Lcom/android/server/wm/AppTransition;->mGridLayoutRecentsEnabled:Z

    if-nez v13, :cond_8

    invoke-virtual {v12, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    invoke-virtual {v12, v8}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    nop

    :goto_5
    move v8, v1

    move-object v1, v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    move v15, v5

    move-object v0, v7

    move/from16 v16, v2

    move/from16 v2, v29

    move/from16 v17, v3

    move v3, v4

    move-wide v4, v12

    move-object v12, v6

    move-object v6, v14

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v3

    move/from16 v4, p4

    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppTransition;->getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;

    move-result-object v5

    iget-object v6, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v6}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_1

    int-to-float v8, v6

    goto :goto_1

    :cond_1
    move v8, v7

    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v9

    goto :goto_2

    :cond_2
    move v9, v3

    :goto_2
    if-lez v9, :cond_3

    int-to-float v10, v9

    goto :goto_3

    :cond_3
    move v10, v7

    :goto_3
    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v11, "Invalid thumbnail transition state"

    invoke-direct {v7, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_0
    int-to-float v12, v2

    div-float v12, v8, v12

    int-to-float v13, v3

    div-float v14, v10, v13

    new-instance v20, Landroid/view/animation/ScaleAnimation;

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->left:I

    invoke-static {v13, v12}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    iget-object v13, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    invoke-static {v13, v14}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v19

    move-object/from16 v13, v20

    move/from16 v21, v14

    move v14, v15

    move v15, v12

    move/from16 v17, v21

    invoke-direct/range {v13 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    new-instance v14, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v14, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v7, v14

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v14, 0x1

    invoke-direct {v11, v14}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v11, v13}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v14}, Landroid/view/animation/AnimationSet;->setZAdjustment(I)V

    move-object v14, v11

    goto :goto_4

    :pswitch_1
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    goto :goto_4

    :pswitch_2
    const/16 v12, 0xe

    if-ne v1, v12, :cond_4

    new-instance v12, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v12, v7, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v12

    goto :goto_4

    :cond_4
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v11, v7, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v14, v11

    goto :goto_4

    :pswitch_3
    int-to-float v7, v2

    div-float v7, v8, v7

    int-to-float v11, v3

    div-float v11, v10, v11

    new-instance v19, Landroid/view/animation/ScaleAnimation;

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    invoke-static {v12, v7}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v17

    iget-object v12, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    invoke-static {v12, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v18

    move-object/from16 v12, v19

    move v13, v7

    move v15, v11

    invoke-direct/range {v12 .. v18}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object/from16 v14, v19

    nop

    :goto_4
    move-object v7, v14

    invoke-virtual {v0, v7, v2, v3, v1}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v11

    return-object v11

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method createThumbnailScaleAnimationLocked(IIILandroid/graphics/GraphicBuffer;)Landroid/view/animation/Animation;
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {v0, v3}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v3, :cond_0

    int-to-float v5, v3

    goto :goto_0

    :cond_0
    move v5, v4

    :goto_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v6

    if-lez v6, :cond_1

    int-to-float v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    iget-boolean v8, v0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v8, :cond_2

    int-to-float v8, v1

    div-float/2addr v8, v5

    int-to-float v9, v2

    div-float v16, v9, v7

    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v11, v4, v8

    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v11, v4, v16

    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v11, v8

    move/from16 v13, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    invoke-direct {v10, v4, v11}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v4, v10

    iget-object v10, v0, Lcom/android/server/wm/AppTransition;->mThumbnailFadeOutInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v10}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v10, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v10, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    nop

    move-object v4, v10

    nop

    move-object/from16 v17, v4

    goto :goto_2

    :cond_2
    int-to-float v8, v1

    div-float/2addr v8, v5

    int-to-float v9, v2

    div-float v16, v9, v7

    new-instance v17, Landroid/view/animation/ScaleAnimation;

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    div-float v10, v4, v8

    invoke-static {v9, v10}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v14

    iget-object v9, v0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    div-float v4, v4, v16

    invoke-static {v9, v4}, Lcom/android/server/wm/AppTransition;->computePivot(IF)F

    move-result v15

    move-object/from16 v9, v17

    move v10, v8

    move/from16 v12, v16

    invoke-direct/range {v9 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    :goto_2
    move-object/from16 v4, v17

    move/from16 v8, p3

    invoke-virtual {v0, v4, v1, v2, v8}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;

    move-result-object v9

    return-object v9
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAppTransitionState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->appStateToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->transitTypeToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionInPlace=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultNextAppTransitionAnimationSpec="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionAnimationsSpecs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionScaleUp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->getDefaultNextAppTransitionStartRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartX="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartY="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionStartWidth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNextAppTransitionStartHeight="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionEnter=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " mNextAppTransitionExit=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mNextAppTransitionCallback="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastUsedAppTransition="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastOpeningApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLastClosingApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method freeze()V
    .locals 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->setReady()V

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionCancelledLocked(I)V

    return-void
.end method

.method getAppStackClipMode()I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_3
    :goto_2
    const/4 v0, 0x1

    return v0
.end method

.method getAppTransition()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    return v0
.end method

.method getAppTransitionThumbnailHeader(I)Landroid/graphics/GraphicBuffer;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getLastClipRevealMaxTranslation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealMaxTranslation:I

    return v0
.end method

.method getLastClipRevealTransitionDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/AppTransition;->mLastClipRevealTransitionDuration:J

    return-wide v0
.end method

.method getNextAppTransitionStartRect(ILandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/AppTransitionAnimationSpec;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mDefaultNextAppTransitionAnimationSpec:Landroid/view/AppTransitionAnimationSpec;

    :cond_0
    if-eqz v0, :cond_2

    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v0, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting rect for task: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " requested, but not available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1
    return-void
.end method

.method getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    return-object v0
.end method

.method getThumbnailTransitionState(Z)I
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x3

    return v0
.end method

.method public getTransitFlags()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    return v0
.end method

.method goodToGo(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;Landroid/util/ArraySet;Landroid/util/ArraySet;)I
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/AppWindowToken;",
            "Lcom/android/server/wm/AppWindowToken;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;)I"
        }
    .end annotation

    move-object v10, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const/4 v0, -0x1

    iput v0, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFlags:I

    const/4 v0, 0x2

    invoke-direct {v10, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    const/4 v0, 0x0

    if-eqz v11, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/AppWindowToken;->getAnimation()Lcom/android/server/wm/AnimationAdapter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    move-object v13, v1

    nop

    if-eqz v11, :cond_1

    iget-object v1, v11, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    move-object v2, v1

    goto :goto_1

    :cond_1
    nop

    move-object v2, v0

    :goto_1
    if-eqz v12, :cond_2

    iget-object v0, v12, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    :goto_2
    move-object v3, v0

    goto :goto_3

    :cond_2
    goto :goto_2

    :goto_3
    if-eqz v13, :cond_3

    invoke-interface {v13}, Lcom/android/server/wm/AnimationAdapter;->getDurationHint()J

    move-result-wide v0

    :goto_4
    move-wide v4, v0

    goto :goto_5

    :cond_3
    const-wide/16 v0, 0x0

    goto :goto_4

    :goto_5
    if-eqz v13, :cond_4

    invoke-interface {v13}, Lcom/android/server/wm/AnimationAdapter;->getStatusBarTransitionsStartTime()J

    move-result-wide v0

    :goto_6
    move-wide v6, v0

    goto :goto_7

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    goto :goto_6

    :goto_7
    const-wide/16 v8, 0x78

    move-object v0, v10

    move v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/AppTransition;->notifyAppTransitionStartingLocked(ILandroid/os/IBinder;Landroid/os/IBinder;JJJ)I

    move-result v0

    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDockedDividerController()Lcom/android/server/wm/DockedStackDividerController;

    move-result-object v1

    move v2, p1

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2}, Lcom/android/server/wm/DockedStackDividerController;->notifyAppTransitionStarting(Landroid/util/ArraySet;I)V

    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    if-eqz v1, :cond_5

    iget-object v1, v10, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGo()V

    :cond_5
    return v0
.end method

.method hadClipRevealAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mLastHadClipReveal:Z

    return v0
.end method

.method isFetchingAppTransitionsSpecs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsPending:Z

    return v0
.end method

.method isNextAppTransitionOpenCrossProfileApps()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isNextAppTransitionThumbnailDown()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

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

.method isNextAppTransitionThumbnailUp()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

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

.method isNextThumbnailTransitionAspectScaled()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x6

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

.method isNextThumbnailTransitionScaleUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    return v0
.end method

.method isReady()Z
    .locals 3

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method isRunning()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTimeout()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionEqual(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isTransitionSet()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method loadAnimation(Landroid/view/WindowManager$LayoutParams;IZIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)Landroid/view/animation/Animation;
    .locals 21

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p6

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v14, :cond_1

    invoke-direct {v11, v13}, Lcom/android/server/wm/AppTransition;->loadKeyguardExitAnimation(I)Landroid/view/animation/Animation;

    move-result-object v0

    :cond_0
    :goto_0
    move/from16 v1, p13

    goto/16 :goto_16

    :cond_1
    const/16 v0, 0x16

    if-ne v13, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/16 v1, 0x17

    if-ne v13, v1, :cond_3

    if-nez v14, :cond_3

    const v0, 0x10a00b5

    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/16 v2, 0x1a

    if-ne v13, v2, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/16 v2, 0xa

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v10, 0x3

    if-eqz p11, :cond_8

    if-eq v13, v4, :cond_5

    if-eq v13, v3, :cond_5

    if-ne v13, v2, :cond_8

    :cond_5
    if-eqz v14, :cond_6

    const v0, 0x10a00a8

    goto :goto_1

    :cond_6
    const v0, 0x10a00a9

    :goto_1
    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_7

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    :cond_7
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation voice: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    const/16 v5, 0xb

    const/16 v6, 0x9

    const/4 v7, 0x7

    if-eqz p11, :cond_c

    if-eq v13, v7, :cond_9

    if-eq v13, v6, :cond_9

    if-ne v13, v5, :cond_c

    :cond_9
    if-eqz v14, :cond_a

    const v0, 0x10a00a6

    goto :goto_2

    :cond_a
    const v0, 0x10a00a7

    :goto_2
    invoke-virtual {v11, v12, v0}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_b

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    :cond_b
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation voice: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    const/16 v8, 0x12

    if-ne v13, v8, :cond_e

    move-object/from16 v9, p8

    invoke-direct {v11, v15, v9}, Lcom/android/server/wm/AppTransition;->createRelaunchAnimation(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_d

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    :cond_d
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v9, p8

    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    if-eqz v14, :cond_f

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    goto :goto_3

    :cond_f
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    :goto_3
    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_10

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    :cond_10
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isEntrance="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v7, :cond_13

    iget-object v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    invoke-direct {v11, v0, v1}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_12

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    :cond_12
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyAnimation: anim="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " nextAppTransition=ANIM_CUSTOM_IN_PLACE transit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Callers="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v3, :cond_16

    move-object/from16 v0, p7

    invoke-direct {v11, v13, v14, v15, v0}, Lcom/android/server/wm/AppTransition;->createClipRevealAnimationLocked(IZLandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_14

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_15

    :cond_14
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextAppTransition=ANIM_CLIP_REVEAL transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_4
    move-object v0, v1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p7

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    invoke-direct {v11, v13, v14, v15}, Lcom/android/server/wm/AppTransition;->createScaleUpAnimationLocked(IZLandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_17

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_15

    :cond_17
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextAppTransition=ANIM_SCALE_UP transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEntrance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_18
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-eq v1, v10, :cond_31

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_19

    goto/16 :goto_13

    :cond_19
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2d

    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v4, :cond_1a

    goto/16 :goto_10

    :cond_1a
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v6, :cond_1b

    if-eqz v14, :cond_1b

    const-string v1, "android"

    const v2, 0x10a009e

    invoke-direct {v11, v1, v2}, Lcom/android/server/wm/AppTransition;->loadAnimationRes(Ljava/lang/String;I)Landroid/view/animation/Animation;

    move-result-object v1

    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation NEXT_TRANSIT_TYPE_OPEN_CROSS_PROFILE_APPS: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEntrance=true Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_1b
    const/4 v1, 0x0

    const/16 v3, 0x19

    const/16 v4, 0x13

    if-eq v13, v4, :cond_26

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    goto/16 :goto_e

    :pswitch_0
    if-eqz v14, :cond_1c

    nop

    move v2, v3

    goto :goto_5

    :cond_1c
    const/16 v2, 0x18

    :goto_5
    move v1, v2

    goto/16 :goto_e

    :pswitch_1
    if-eqz v14, :cond_1d

    nop

    const/16 v16, 0x16

    goto :goto_6

    :cond_1d
    const/16 v16, 0x17

    :goto_6
    move/from16 v1, v16

    goto/16 :goto_e

    :pswitch_2
    if-eqz v14, :cond_1e

    const/16 v2, 0x14

    goto :goto_7

    :cond_1e
    const/16 v2, 0x15

    :goto_7
    move v1, v2

    goto/16 :goto_e

    :pswitch_3
    if-eqz v14, :cond_1f

    const/16 v2, 0x10

    goto :goto_8

    :cond_1f
    const/16 v2, 0x11

    :goto_8
    move v1, v2

    goto :goto_e

    :pswitch_4
    if-eqz v14, :cond_20

    nop

    move v4, v8

    nop

    :cond_20
    move v1, v4

    goto :goto_e

    :pswitch_5
    if-eqz v14, :cond_21

    const/16 v2, 0xe

    goto :goto_9

    :cond_21
    const/16 v2, 0xf

    :goto_9
    move v1, v2

    goto :goto_e

    :pswitch_6
    if-eqz v14, :cond_22

    const/16 v2, 0xc

    goto :goto_a

    :cond_22
    const/16 v2, 0xd

    :goto_a
    move v1, v2

    goto :goto_e

    :pswitch_7
    if-eqz v14, :cond_23

    nop

    const/16 v17, 0xa

    goto :goto_b

    :cond_23
    move/from16 v17, v5

    :goto_b
    move/from16 v1, v17

    goto :goto_e

    :pswitch_8
    if-eqz v14, :cond_24

    nop

    const/16 v19, 0x6

    goto :goto_c

    :cond_24
    move/from16 v19, v7

    :goto_c
    move/from16 v1, v19

    goto :goto_e

    :pswitch_9
    if-eqz v14, :cond_25

    nop

    const/4 v2, 0x4

    nop

    :cond_25
    move v1, v2

    goto :goto_e

    :cond_26
    :pswitch_a
    if-eqz v14, :cond_27

    nop

    const/16 v18, 0x8

    goto :goto_d

    :cond_27
    move/from16 v18, v6

    :goto_d
    move/from16 v1, v18

    nop

    :goto_e
    if-eqz v1, :cond_28

    invoke-virtual {v11, v12, v1, v13}, Lcom/android/server/wm/AppTransition;->loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;

    move-result-object v2

    goto :goto_f

    :cond_28
    const/4 v2, 0x0

    :goto_f
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v4, :cond_2a

    if-nez v14, :cond_2a

    const/16 v4, 0xd

    if-eq v13, v4, :cond_29

    if-ne v13, v3, :cond_2a

    :cond_29
    iget-object v3, v11, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->mSkipAppAnimation:Z

    if-eqz v3, :cond_2a

    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GestureButton: NEXT_TRANSIT_TYPE_SCALE_DOWN "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v11, Lcom/android/server/wm/AppTransition;->mScaleDownAnim:Landroid/view/animation/Animation;

    const/4 v3, 0x0

    iput-object v3, v11, Lcom/android/server/wm/AppTransition;->mScaleDownAnim:Landroid/view/animation/Animation;

    :cond_2a
    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v3, :cond_2b

    sget-boolean v3, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v3, :cond_2c

    :cond_2b
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAnimation: anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " animAttr=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " transit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isEntrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move/from16 v1, p13

    move-object v0, v2

    goto/16 :goto_16

    :cond_2d
    :goto_10
    iget v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v1, v2, :cond_2e

    const/4 v1, 0x1

    goto :goto_11

    :cond_2e
    const/4 v1, 0x0

    :goto_11
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    nop

    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v1

    move-object v0, v11

    move/from16 v2, p4

    move/from16 v3, p5

    move v4, v13

    move-object v5, v15

    move-object v6, v9

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p12

    move v12, v10

    move/from16 v10, p13

    invoke-virtual/range {v0 .. v10}, Lcom/android/server/wm/AppTransition;->createAspectScaledThumbnailEnterExitAnimationLocked(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZI)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v1, :cond_2f

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v1, :cond_0

    :cond_2f
    iget-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v1, :cond_30

    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_UP"

    goto :goto_12

    :cond_30
    const-string v1, "ANIM_THUMBNAIL_ASPECT_SCALE_DOWN"

    :goto_12
    const-string v2, "WindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyAnimation: anim="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " nextAppTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " isEntrance="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_31
    :goto_13
    move v12, v10

    iget v0, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    if-ne v0, v12, :cond_32

    const/4 v1, 0x1

    goto :goto_14

    :cond_32
    const/4 v1, 0x0

    :goto_14
    iput-boolean v1, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    invoke-virtual {v11, v14}, Lcom/android/server/wm/AppTransition;->getThumbnailTransitionState(Z)I

    move-result v0

    move/from16 v1, p13

    invoke-virtual {v11, v0, v15, v13, v1}, Lcom/android/server/wm/AppTransition;->createThumbnailEnterExitAnimationLocked(ILandroid/graphics/Rect;II)Landroid/view/animation/Animation;

    move-result-object v0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-nez v2, :cond_33

    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-eqz v2, :cond_35

    :cond_33
    iget-boolean v2, v11, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz v2, :cond_34

    const-string v2, "ANIM_THUMBNAIL_SCALE_UP"

    goto :goto_15

    :cond_34
    const-string v2, "ANIM_THUMBNAIL_SCALE_DOWN"

    :goto_15
    const-string v3, "WindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applyAnimation: anim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " nextAppTransition="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " transit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isEntrance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " Callers="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_35
    :goto_16
    return-object v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_9
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method loadAnimationAttr(Landroid/view/WindowManager$LayoutParams;II)Landroid/view/animation/Animation;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    if-ltz p2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, v2, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/AttributeCache$Entry;->array:Landroid/content/res/TypedArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    :cond_0
    invoke-direct {p0, v0, p3}, Lcom/android/server/wm/AppTransition;->updateToTranslucentAnimIfNeeded(II)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method loadAnimationRes(Landroid/view/WindowManager$LayoutParams;I)Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/AppTransition;->getCachedAnimations(Landroid/view/WindowManager$LayoutParams;)Lcom/android/server/AttributeCache$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/android/server/AttributeCache$Entry;->context:Landroid/content/Context;

    :cond_0
    invoke-static {v0, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    return-object v2

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public notifyAppTransitionFinishedLocked(Landroid/os/IBinder;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;->onAppTransitionFinishedLocked(Landroid/os/IBinder;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method overrideInPlaceAppTransition(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionInPlace:I

    :cond_0
    return-void
.end method

.method overridePendingAppTransition(Ljava/lang/String;IILandroid/os/IRemoteCallback;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionPackage:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionEnter:I

    iput p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionExit:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method

.method overridePendingAppTransitionAspectScaledThumb(Landroid/graphics/GraphicBuffer;IIIILandroid/os/IRemoteCallback;Z)V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p7, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-boolean p7, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p6, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_1
    return-void
.end method

.method overridePendingAppTransitionClipReveal(IIII)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    :cond_0
    return-void
.end method

.method overridePendingAppTransitionMultiThumb([Landroid/view/AppTransitionAnimationSpec;Landroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V
    .locals 9

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p4, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-boolean p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecs:Landroid/util/SparseArray;

    iget v3, v1, Landroid/view/AppTransitionAnimationSpec;->taskId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-nez v0, :cond_1

    iget-object v2, v1, Landroid/view/AppTransitionAnimationSpec;->rect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget-object v8, v1, Landroid/view/AppTransitionAnimationSpec;->buffer:Landroid/graphics/GraphicBuffer;

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    iput-object p3, p0, Lcom/android/server/wm/AppTransition;->mAnimationFinishedCallback:Landroid/os/IRemoteCallback;

    :cond_3
    return-void
.end method

.method overridePendingAppTransitionMultiThumbFuture(Landroid/view/IAppTransitionAnimationSpecsFuture;Landroid/os/IRemoteCallback;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionAnimationsSpecsFuture:Landroid/view/IAppTransitionAnimationSpecsFuture;

    iput-boolean p3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    iput-object p2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionFutureCallback:Landroid/os/IRemoteCallback;

    :cond_1
    return-void
.end method

.method overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    new-instance v0, Lcom/android/server/wm/RemoteAnimationController;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-direct {v0, v1, p1, v2}, Lcom/android/server/wm/RemoteAnimationController;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/RemoteAnimationAdapter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mRemoteAnimationController:Lcom/android/server/wm/RemoteAnimationController;

    :cond_0
    return-void
.end method

.method overridePendingAppTransitionScaleDown(Landroid/view/animation/Animation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AppTransition;->mScaleDownAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method overridePendingAppTransitionScaleUp(IIII)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    :cond_0
    return-void
.end method

.method overridePendingAppTransitionStartCrossProfileApps()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    :cond_0
    return-void
.end method

.method overridePendingAppTransitionThumb(Landroid/graphics/GraphicBuffer;IILandroid/os/IRemoteCallback;Z)V
    .locals 7

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->canOverridePendingAppTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->clear()V

    if-eqz p5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionType:I

    iput-boolean p5, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionScaleUp:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/AppTransition;->putDefaultNextAppTransitionCoordinates(IIIILandroid/graphics/GraphicBuffer;)V

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    iput-object p4, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_1
    return-void
.end method

.method postAnimationCallback()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x1a

    iget-object v3, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransitionCallback:Landroid/os/IRemoteCallback;

    :cond_0
    return-void
.end method

.method prepareAppTransitionLocked(IZIZ)Z
    .locals 6

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prepare app transition: transit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " alwaysKeepCurrent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v0

    const/16 v1, 0x1a

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p4, :cond_5

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eqz v2, :cond_5

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    if-nez p2, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v2}, Lcom/android/server/wm/AppTransition;->isKeyguardTransit(I)Z

    move-result v2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    if-eq v2, v1, :cond_6

    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/server/wm/AppTransition;->isTransitionEqual(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    :cond_4
    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->isTaskTransit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->isActivityTransit(I)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/AppTransition;->setAppTransition(II)V

    :cond_6
    :goto_2
    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->prepare()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/wm/AppTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    :cond_7
    return v1
.end method

.method prepareThumbnailAnimation(Landroid/view/animation/Animation;III)Landroid/view/animation/Animation;
    .locals 8

    packed-switch p4, :pswitch_data_0

    const/16 v0, 0xe1

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/android/server/wm/AppTransition;->mConfigShortAnimTime:I

    nop

    :goto_0
    nop

    int-to-long v5, v0

    iget-object v7, p0, Lcom/android/server/wm/AppTransition;->mDecelerateInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AppTransition;->prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method prepareThumbnailAnimationWithDuration(Landroid/view/animation/Animation;IIJLandroid/view/animation/Interpolator;)Landroid/view/animation/Animation;
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-lez v0, :cond_0

    invoke-virtual {p1, p4, p5}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-eqz p6, :cond_1

    invoke-virtual {p1, p6}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/animation/Animation;->initialize(IIII)V

    return-object p1
.end method

.method registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/AppTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCurrentUser(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mCurrentUserId:I

    return-void
.end method

.method setIdle()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    return-void
.end method

.method setLastAppTransition(ILcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .locals 2

    iput p1, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastOpeningApp:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/AppTransition;->mLastClosingApp:Ljava/lang/String;

    return-void
.end method

.method setReady()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->fetchAppTransitionSpecsFromFuture()V

    return-void
.end method

.method setTimeout()V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/wm/AppTransition;->setAppTransitionState(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNextAppTransition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/AppTransition;->mNextAppTransition:I

    invoke-static {v1}, Lcom/android/server/wm/AppTransition;->appTransitionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateBooster()V
    .locals 2

    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransition;->needsBoosting()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setAppTransitionRunning(Z)V

    return-void
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mAppTransitionState:I

    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/wm/AppTransition;->mLastUsedAppTransition:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
