.class public final Lcom/android/server/display/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;,
        Lcom/android/server/display/ColorDisplayService$CustomAutoMode;,
        Lcom/android/server/display/ColorDisplayService$AutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_IDENTITY:[F

.field private static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private final mColorTempCoefficients:[F

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mMatrixNight:[F

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    sget-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/ColorDisplayService$1;)V

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/ColorDisplayService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/ColorDisplayService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/ColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/display/ColorDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method private applyTint(Z)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    if-nez v2, :cond_3

    sget-object v6, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/ColorDisplayService$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/ColorDisplayService$2;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/ColorDisplayService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/server/display/ColorDisplayService$3;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :goto_2
    return-void
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method private onUserChanged(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->tearDown()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/display/ColorDisplayService$1;

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/ColorDisplayService$1;-><init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    :cond_3
    :goto_1
    return-void
.end method

.method private setCoefficientMatrix(Landroid/content/Context;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x1070036

    goto :goto_0

    :cond_0
    const v1, 0x1070037

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private setMatrix(I[F)V
    .locals 9

    array-length v0, p2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const-string v0, "ColorDisplayService"

    const-string v1, "The display transformation matrix must be 4x4"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    mul-int v0, p1, p1

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget v2, v2, v1

    mul-float/2addr v2, v0

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v0

    int-to-float v4, p1

    iget-object v5, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x6

    aget v4, v4, v6

    mul-float/2addr v4, v0

    int-to-float v6, p1

    iget-object v7, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/16 v7, 0x8

    aget v6, v6, v7

    add-float/2addr v4, v6

    aput v2, p2, v1

    aput v3, p2, v5

    const/16 v1, 0xa

    aput v4, p2, v1

    return-void
.end method

.method private setUp()V
    .locals 3

    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onAutoModeChanged(I)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onActivated(Z)V

    :cond_0
    return-void
.end method

.method private tearDown()V
    .locals 3

    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    :cond_2
    return-void
.end method


# virtual methods
.method public onAccessibilityTransformChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void
.end method

.method public onActivated(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3

    :cond_0
    const-string v0, "ColorDisplayService"

    if-eqz p1, :cond_1

    const-string v1, "Turning on night display"

    goto :goto_0

    :cond_1
    const-string v1, "Turning off night display"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onActivated(Z)V

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    :cond_3
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3

    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStart()V

    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    :cond_0
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    :cond_0
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMode(I[F)Z

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStartUser(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    return-void
.end method
