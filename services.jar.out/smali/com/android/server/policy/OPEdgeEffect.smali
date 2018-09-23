.class public Lcom/android/server/policy/OPEdgeEffect;
.super Ljava/lang/Object;
.source "OPEdgeEffect.java"


# static fields
.field private static final ANGLE:D = 0.5235987755982988

.field private static final COS:F

.field private static final EPSILON:F = 0.001f

.field private static final GLOW_ALPHA_START:F = 0.09f

.field private static final MAX_ALPHA:F = 0.15f

.field private static final MAX_GLOW_SCALE:F = 2.0f

.field private static final MAX_VELOCITY:I = 0x2710

.field private static final MIN_VELOCITY:I = 0x64

.field private static final PULL_DECAY_TIME:I = 0x7d0

.field private static final PULL_DISTANCE_ALPHA_GLOW_FACTOR:F = 0.8f

.field private static final PULL_GLOW_BEGIN:F = 0.0f

.field private static final PULL_TIME:I = 0xa7

.field private static final RADIUS_FACTOR:F = 0.4f

.field private static final RECEDE_TIME:I = 0x258

.field private static final SIN:F

.field private static final STATE_ABSORB:I = 0x2

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PULL:I = 0x1

.field private static final STATE_PULL_DECAY:I = 0x4

.field private static final STATE_RECEDE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OPEdgeEffect"

.field private static final VELOCITY_GLOW_FACTOR:I = 0x6


# instance fields
.field private mBaseGlowScale:F

.field private final mBounds:Landroid/graphics/Rect;

.field private mDisplacement:F

.field private mDuration:F

.field private mGlowAlpha:F

.field private mGlowAlphaFinish:F

.field private mGlowAlphaStart:F

.field private mGlowScaleY:F

.field private mGlowScaleYFinish:F

.field private mGlowScaleYStart:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPullDistance:F

.field private mRadius:F

.field private mStartTime:J

.field private mState:I

.field private mTargetDisplacement:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Lcom/android/server/policy/OPEdgeEffect;->SIN:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/server/policy/OPEdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    iget-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v3, -0x99999a

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v4, 0xffffff

    and-int/2addr v4, v0

    const/high16 v5, 0x33000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    invoke-static {}, Landroid/graphics/PorterDuff$Mode;->values()[Landroid/graphics/PorterDuff$Mode;

    move-result-object v5

    const-string/jumbo v6, "persist.gesture_button.mode"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v2, v5, v2

    invoke-direct {v4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private update()V
    .locals 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    goto :goto_0

    :pswitch_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    goto :goto_0

    :pswitch_2
    iput v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    goto :goto_0

    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 10

    invoke-direct {p0}, Lcom/android/server/policy/OPEdgeEffect;->update()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mRadius:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    iget v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mRadius:F

    iget-object v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    iget v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    cmpl-float v5, v7, v5

    if-nez v5, :cond_0

    iput v8, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v6, 0x1

    :cond_0
    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    if-nez v5, :cond_2

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v8, 0x1

    :goto_1
    return v8
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iget v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    div-int/lit8 v0, p1, 0x64

    mul-int/2addr v0, p1

    int-to-float v0, v0

    const v2, 0x391d4952    # 1.5E-4f

    mul-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    const v2, 0x3ccccccd    # 0.025f

    add-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    iget v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v2, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/OPEdgeEffect;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 7

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput p2, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    return-void

    :cond_0
    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    :cond_1
    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    iput-wide v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    const/high16 v2, 0x43270000    # 167.0f

    iput v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3e19999a    # 0.15f

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    :goto_0
    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 10

    int-to-float v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    sget v2, Lcom/android/server/policy/OPEdgeEffect;->SIN:F

    div-float/2addr v0, v2

    sget v2, Lcom/android/server/policy/OPEdgeEffect;->COS:F

    mul-float/2addr v2, v0

    sub-float v3, v0, v2

    int-to-float v4, p2

    mul-float/2addr v4, v1

    sget v1, Lcom/android/server/policy/OPEdgeEffect;->SIN:F

    div-float/2addr v4, v1

    sget v1, Lcom/android/server/policy/OPEdgeEffect;->COS:F

    mul-float/2addr v1, v4

    sub-float v5, v4, v1

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mRadius:F

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-lez v6, :cond_0

    div-float v6, v5, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    nop

    :cond_0
    iput v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mBaseGlowScale:F

    iget-object v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    int-to-float v9, p2

    invoke-static {v9, v3}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
