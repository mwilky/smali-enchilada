.class public Landroid/animation/LayoutTransition;
.super Ljava/lang/Object;
.source "LayoutTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/animation/LayoutTransition$CleanupCallback;,
        Landroid/animation/LayoutTransition$TransitionListener;
    }
.end annotation


# static fields
.field private static ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field public static final APPEARING:I = 0x2

.field public static final CHANGE_APPEARING:I = 0x0

.field public static final CHANGE_DISAPPEARING:I = 0x1

.field public static final CHANGING:I = 0x4

.field private static DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator; = null

.field private static DEFAULT_DURATION:J = 0x0L

.field public static final DISAPPEARING:I = 0x3

.field private static final FLAG_APPEARING:I = 0x1

.field private static final FLAG_CHANGE_APPEARING:I = 0x4

.field private static final FLAG_CHANGE_DISAPPEARING:I = 0x8

.field private static final FLAG_CHANGING:I = 0x10

.field private static final FLAG_DISAPPEARING:I = 0x2

.field private static defaultChange:Landroid/animation/ObjectAnimator;

.field private static defaultChangeIn:Landroid/animation/ObjectAnimator;

.field private static defaultChangeOut:Landroid/animation/ObjectAnimator;

.field private static defaultFadeIn:Landroid/animation/ObjectAnimator;

.field private static defaultFadeOut:Landroid/animation/ObjectAnimator;

.field private static sAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private static sDisappearingInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private final currentAppearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentChangingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final currentDisappearingAnimations:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutChangeListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/view/View$OnLayoutChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimateParentHierarchy:Z

.field private mAppearingAnim:Landroid/animation/Animator;

.field private mAppearingDelay:J

.field private mAppearingDuration:J

.field private mAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAnim:Landroid/animation/Animator;

.field private mChangingAppearingAnim:Landroid/animation/Animator;

.field private mChangingAppearingDelay:J

.field private mChangingAppearingDuration:J

.field private mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingAppearingStagger:J

.field private mChangingDelay:J

.field private mChangingDisappearingAnim:Landroid/animation/Animator;

.field private mChangingDisappearingDelay:J

.field private mChangingDisappearingDuration:J

.field private mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingDisappearingStagger:J

.field private mChangingDuration:J

.field private mChangingInterpolator:Landroid/animation/TimeInterpolator;

.field private mChangingStagger:J

.field private mDisappearingAnim:Landroid/animation/Animator;

.field private mDisappearingDelay:J

.field private mDisappearingDuration:J

.field private mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTransitionTypes:I

.field private final pendingAnimations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private staggerDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x12c

    sput-wide v0, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v0, Landroid/animation/LayoutTransition;->ACCEL_DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v0, Landroid/animation/LayoutTransition;->DECEL_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    sput-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    sget-wide v1, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    sget-wide v3, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    iput-wide v3, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    iput-wide v1, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    sget-object v1, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v1, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v1, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v1, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v1, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    iput-object v1, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    iput v1, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    sget-object v2, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    if-nez v2, :cond_0

    const-string/jumbo v2, "left"

    const/4 v3, 0x2

    new-array v4, v3, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    const-string/jumbo v4, "top"

    new-array v5, v3, [I

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const-string/jumbo v5, "right"

    new-array v6, v3, [I

    fill-array-data v6, :array_2

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    const-string v6, "bottom"

    new-array v7, v3, [I

    fill-array-data v7, :array_3

    invoke-static {v6, v7}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    const-string/jumbo v7, "scrollX"

    new-array v8, v3, [I

    fill-array-data v8, :array_4

    invoke-static {v7, v8}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    const-string/jumbo v8, "scrollY"

    new-array v9, v3, [I

    fill-array-data v9, :array_5

    invoke-static {v8, v9}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v8

    const/4 v9, 0x6

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    aput-object v4, v9, v1

    aput-object v5, v9, v3

    const/4 v1, 0x3

    aput-object v6, v9, v1

    const/4 v1, 0x4

    aput-object v7, v9, v1

    const/4 v1, 0x5

    aput-object v8, v9, v1

    invoke-static {v0, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sput-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    sget-wide v9, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-wide v9, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    sput-object v1, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-wide v9, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->clone()Landroid/animation/ObjectAnimator;

    move-result-object v1

    sput-object v1, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iget-wide v9, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v1, "alpha"

    new-array v9, v3, [F

    fill-array-data v9, :array_6

    invoke-static {v0, v1, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    sput-object v1, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    sget-wide v9, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-wide v9, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v1, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iget-object v9, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v1, "alpha"

    new-array v3, v3, [F

    fill-array-data v3, :array_7

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sput-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    sget-wide v9, Landroid/animation/LayoutTransition;->DEFAULT_DURATION:J

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-wide v9, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_0
    sget-object v0, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    sget-object v0, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    sget-object v0, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeIn:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    sget-object v0, Landroid/animation/LayoutTransition;->defaultFadeOut:Landroid/animation/ObjectAnimator;

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x1
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    return-wide v0
.end method

.method static synthetic access$1000(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    return-wide v0
.end method

.method static synthetic access$1100(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    return-wide v0
.end method

.method static synthetic access$1200(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Landroid/animation/LayoutTransition;->sChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/animation/LayoutTransition;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/animation/LayoutTransition;)Z
    .locals 1

    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/animation/LayoutTransition;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/animation/LayoutTransition;)Ljava/util/LinkedHashMap;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static synthetic access$214(Landroid/animation/LayoutTransition;J)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Landroid/animation/LayoutTransition;->staggerDelay:J

    return-wide v0
.end method

.method static synthetic access$300(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$500()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Landroid/animation/LayoutTransition;->sChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$600(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    return-wide v0
.end method

.method static synthetic access$700(Landroid/animation/LayoutTransition;)J
    .locals 2

    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    return-wide v0
.end method

.method static synthetic access$800(Landroid/animation/LayoutTransition;)Landroid/animation/TimeInterpolator;
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method static synthetic access$900()Landroid/animation/TimeInterpolator;
    .locals 1

    sget-object v0, Landroid/animation/LayoutTransition;->sChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method private addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_1
    const/4 v0, 0x4

    if-eqz p3, :cond_2

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    invoke-virtual {p0, v0}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_2
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/LayoutTransition$TransitionListener;

    invoke-interface {v5, p0, p1, p2, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_4

    invoke-direct {p0, p1, p2, v3}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private hasListeners()Z
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, v1}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_1
    const/16 v0, 0x8

    if-eqz p3, :cond_2

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Landroid/animation/LayoutTransition;->cancel(I)V

    :cond_2
    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/LayoutTransition$TransitionListener;

    invoke-interface {v5, p0, p1, p2, v3}, Landroid/animation/LayoutTransition$TransitionListener;->startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v0

    if-ne v2, v0, :cond_4

    invoke-direct {p0, p1, p2, v3}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1, p2}, Landroid/animation/LayoutTransition;->runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V

    :cond_5
    return-void
.end method

.method private runAppearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition$TransitionListener;

    const/4 v4, 0x2

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-wide v2, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v2, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v3, Landroid/animation/LayoutTransition;->sAppearingInterpolator:Landroid/animation/TimeInterpolator;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    instance-of v2, v1, Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_4

    move-object v2, v1

    check-cast v2, Landroid/animation/ObjectAnimator;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_4
    new-instance v2, Landroid/animation/LayoutTransition$4;

    invoke-direct {v2, p0, p2, p1}, Landroid/animation/LayoutTransition$4;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch p3, :pswitch_data_0

    move-object v15, v0

    move-object/from16 v16, v1

    move-wide v4, v2

    goto :goto_1

    :pswitch_0
    iget-object v0, v13, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    iget-wide v4, v13, Landroid/animation/LayoutTransition;->mChangingDuration:J

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChange:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_1
    iget-object v0, v13, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    iget-wide v4, v13, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeOut:Landroid/animation/ObjectAnimator;

    goto :goto_0

    :pswitch_2
    iget-object v0, v13, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    iget-wide v4, v13, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    sget-object v1, Landroid/animation/LayoutTransition;->defaultChangeIn:Landroid/animation/ObjectAnimator;

    nop

    :goto_0
    move-object v15, v0

    move-object/from16 v16, v1

    :goto_1
    if-nez v15, :cond_0

    return-void

    :cond_0
    iput-wide v2, v13, Landroid/animation/LayoutTransition;->staggerDelay:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    const/4 v0, 0x0

    :goto_2
    move v7, v0

    if-ge v7, v10, :cond_3

    invoke-virtual {v14, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v11, p2

    if-eq v8, v11, :cond_2

    move-object v0, v13

    move-object v1, v14

    move/from16 v2, p3

    move-object v3, v15

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v7, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v11, p2

    iget-boolean v0, v13, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    if-eqz v0, :cond_5

    move-object v0, v14

    :goto_3
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    move-object v7, v1

    check-cast v7, Landroid/view/ViewGroup;

    move-object v6, v13

    move/from16 v8, p3

    move-object/from16 v9, v16

    move v2, v10

    move-wide v10, v4

    move-object v3, v12

    move-object v12, v0

    invoke-direct/range {v6 .. v12}, Landroid/animation/LayoutTransition;->setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_4

    :cond_4
    move v2, v10

    move-object v3, v12

    const/4 v0, 0x0

    :goto_4
    nop

    move-object/from16 v11, p2

    move v10, v2

    move-object v12, v3

    goto :goto_3

    :cond_5
    move v2, v10

    move-object v3, v12

    new-instance v0, Landroid/animation/LayoutTransition$CleanupCallback;

    iget-object v1, v13, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v14}, Landroid/animation/LayoutTransition$CleanupCallback;-><init>(Ljava/util/Map;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runDisappearingTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    if-nez v1, :cond_2

    invoke-direct {p0}, Landroid/animation/LayoutTransition;->hasListeners()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/LayoutTransition$TransitionListener;

    const/4 v4, 0x3

    invoke-interface {v3, p0, p1, p2, v4}, Landroid/animation/LayoutTransition$TransitionListener;->endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v1

    iget-wide v2, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    iget-wide v2, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    sget-object v3, Landroid/animation/LayoutTransition;->sDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_3
    invoke-virtual {v1, p2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/View;->getAlpha()F

    move-result v2

    new-instance v3, Landroid/animation/LayoutTransition$5;

    invoke-direct {v3, p0, p2, v2, p1}, Landroid/animation/LayoutTransition$5;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;FLandroid/view/ViewGroup;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    instance-of v3, v1, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_4

    move-object v3, v1

    check-cast v3, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_4
    iget-object v3, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, p2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private setupChangeAnimation(Landroid/view/ViewGroup;ILandroid/animation/Animator;JLandroid/view/View;)V
    .locals 14

    move-object v8, p0

    move-object/from16 v9, p6

    iget-object v0, v8, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/animation/Animator;->clone()Landroid/animation/Animator;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v10}, Landroid/animation/Animator;->setupStartValues()V

    iget-object v0, v8, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/animation/Animator;

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Landroid/animation/Animator;->cancel()V

    iget-object v0, v8, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v8, Landroid/animation/LayoutTransition;->pendingAnimations:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    add-long v1, p4, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v12

    new-instance v0, Landroid/animation/LayoutTransition$1;

    invoke-direct {v0, v8, v9}, Landroid/animation/LayoutTransition$1;-><init>(Landroid/animation/LayoutTransition;Landroid/view/View;)V

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v12}, Landroid/animation/ValueAnimator;->start()V

    new-instance v13, Landroid/animation/LayoutTransition$2;

    move-object v0, v13

    move-object v1, v8

    move-object v2, v10

    move/from16 v3, p2

    move-wide/from16 v4, p4

    move-object v6, v9

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Landroid/animation/LayoutTransition$2;-><init>(Landroid/animation/LayoutTransition;Landroid/animation/Animator;IJLandroid/view/View;Landroid/view/ViewGroup;)V

    move-object v6, v13

    new-instance v7, Landroid/animation/LayoutTransition$3;

    move-object v0, v7

    move-object v2, p1

    move-object v3, v9

    move/from16 v4, p2

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Landroid/animation/LayoutTransition$3;-><init>(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;ILandroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {v10, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v9, v6}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, v8, Landroid/animation/LayoutTransition;->layoutChangeListenerMap:Ljava/util/HashMap;

    invoke-virtual {v0, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public addChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method public addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 3

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    :cond_5
    return-void
.end method

.method public cancel(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    nop

    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public disableTransitionType(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public enableTransitionType(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    goto :goto_0

    :pswitch_4
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endChangingAnimations()V
    .locals 3

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    invoke-virtual {v2}, Landroid/animation/Animator;->end()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public getAnimator(I)Landroid/animation/Animator;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getDuration(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    return-wide v0

    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    return-wide v0

    :pswitch_4
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    return-wide v0

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

.method public getInterpolator(I)Landroid/animation/TimeInterpolator;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    :pswitch_1
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    :pswitch_2
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    :pswitch_3
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    :pswitch_4
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStagger(I)J
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    return-wide v0

    :cond_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getStartDelay(I)J
    .locals 2

    packed-switch p1, :pswitch_data_0

    const-wide/16 v0, 0x0

    return-wide v0

    :pswitch_0
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    return-wide v0

    :pswitch_1
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    return-wide v0

    :pswitch_2
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    return-wide v0

    :pswitch_3
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    return-wide v0

    :pswitch_4
    iget-wide v0, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    return-wide v0

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

.method public getTransitionListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/LayoutTransition$TransitionListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method public hideChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method public isChangingLayout()Z
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentAppearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentDisappearingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

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

.method public isTransitionTypeEnabled(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    return v0

    :pswitch_0
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/16 v3, 0x10

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    move v0, v1

    nop

    :cond_0
    return v0

    :pswitch_1
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    :pswitch_2
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_2

    move v0, v1

    nop

    :cond_2
    return v0

    :pswitch_3
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/16 v3, 0x8

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_3

    move v0, v1

    nop

    :cond_3
    return v0

    :pswitch_4
    iget v2, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/4 v3, 0x4

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    move v0, v1

    nop

    :cond_4
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public layoutChange(Landroid/view/ViewGroup;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Landroid/animation/LayoutTransition;->mTransitionTypes:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-direct {p0, p1, v0, v1}, Landroid/animation/LayoutTransition;->runChangeTransition(Landroid/view/ViewGroup;Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method public removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V
    .locals 1

    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/animation/LayoutTransition;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnimateParentHierarchy(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/animation/LayoutTransition;->mAnimateParentHierarchy:Z

    return-void
.end method

.method public setAnimator(ILandroid/animation/Animator;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingAnim:Landroid/animation/Animator;

    goto :goto_0

    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingAnim:Landroid/animation/Animator;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDuration(IJ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    goto :goto_0

    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    goto :goto_0

    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    goto :goto_0

    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    goto :goto_0

    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDuration(J)V
    .locals 0

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mChangingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mAppearingDuration:J

    iput-wide p1, p0, Landroid/animation/LayoutTransition;->mDisappearingDuration:J

    return-void
.end method

.method public setInterpolator(ILandroid/animation/TimeInterpolator;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_1
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_2
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mAppearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_3
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    :pswitch_4
    iput-object p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingInterpolator:Landroid/animation/TimeInterpolator;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStagger(IJ)V
    .locals 1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingStagger:J

    goto :goto_0

    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingStagger:J

    goto :goto_0

    :cond_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingStagger:J

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setStartDelay(IJ)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDelay:J

    goto :goto_0

    :pswitch_1
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mDisappearingDelay:J

    goto :goto_0

    :pswitch_2
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mAppearingDelay:J

    goto :goto_0

    :pswitch_3
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingDisappearingDelay:J

    goto :goto_0

    :pswitch_4
    iput-wide p2, p0, Landroid/animation/LayoutTransition;->mChangingAppearingDelay:J

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method public showChild(Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1

    const/16 v0, 0x8

    if-ne p3, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method public startChangingAnimations()V
    .locals 6

    iget-object v0, p0, Landroid/animation/LayoutTransition;->currentChangingAnimations:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/animation/Animator;

    instance-of v3, v2, Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    :cond_0
    invoke-virtual {v2}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_1
    return-void
.end method
