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

    .line 78
    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Lcom/android/server/policy/OPEdgeEffect;->SIN:F

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/android/server/policy/OPEdgeEffect;->COS:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 109
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    .line 110
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    .line 113
    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    .line 114
    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    .line 121
    iget-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    sget-object v1, Lcom/android/internal/R$styleable;->EdgeEffect:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 124
    .local v1, "a":Landroid/content/res/TypedArray;
    const v3, -0x99999a

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 126
    .local v0, "themeColor":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    const v4, 0xffffff

    and-int/2addr v4, v0

    const/high16 v5, 0x33000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 128
    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
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

    .line 131
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 132
    return-void
.end method

.method private update()V
    .locals 7

    .line 361
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 362
    .local v0, "time":J
    iget-wide v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 364
    .local v2, "t":F
    iget-object v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v3, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    .line 366
    .local v3, "interp":F
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    iget v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    .line 367
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    iget v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    .line 368
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    .line 370
    const v4, 0x3f7fbe77    # 0.999f

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_0

    .line 371
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    iput v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 398
    goto :goto_0

    .line 400
    :pswitch_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    goto :goto_0

    .line 373
    :pswitch_2
    iput v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 374
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    .line 375
    const/high16 v4, 0x44160000    # 600.0f

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    .line 377
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    .line 378
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    .line 381
    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 382
    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    .line 383
    goto :goto_0

    .line 385
    :pswitch_3
    const/4 v4, 0x4

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 386
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    .line 387
    const/high16 v4, 0x44fa0000    # 2000.0f

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    .line 389
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    .line 390
    iget v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    .line 393
    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 394
    iput v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    .line 395
    nop

    .line 404
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
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 324
    invoke-direct {p0}, Lcom/android/server/policy/OPEdgeEffect;->update()V

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 328
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    .line 329
    .local v1, "centerX":F
    iget-object v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mRadius:F

    sub-float/2addr v2, v3

    .line 331
    .local v2, "centerY":F
    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mBaseGlowScale:F

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v3, v1, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 333
    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mDisplacement:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    .line 334
    .local v3, "displacement":F
    iget-object v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    .line 337
    .local v4, "translateX":F
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 338
    iget-object v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, v7

    float-to-int v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 339
    iget v6, p0, Lcom/android/server/policy/OPEdgeEffect;->mRadius:F

    iget-object v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 340
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 342
    const/4 v6, 0x0

    .line 343
    .local v6, "oneLastFrame":Z
    iget v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v8, 0x0

    const/4 v9, 0x3

    if-ne v7, v9, :cond_0

    iget v7, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    cmpl-float v5, v7, v5

    if-nez v5, :cond_0

    .line 344
    iput v8, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 345
    const/4 v6, 0x1

    .line 348
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

    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 171
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    .line 357
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

    .line 162
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
    .param p1, "velocity"    # I

    .line 272
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 273
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 275
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    .line 276
    int-to-float v0, p1

    const v1, 0x3ca3d70a    # 0.02f

    mul-float/2addr v0, v1

    const v1, 0x3e19999a    # 0.15f

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    .line 280
    const v0, 0x3db851ec    # 0.09f

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    .line 281
    iget v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    const/4 v2, 0x0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    .line 288
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

    .line 290
    iget v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    mul-int/lit8 v2, p1, 0x6

    int-to-float v2, v2

    const v3, 0x3727c5ac    # 1.0E-5f

    mul-float/2addr v2, v3

    .line 291
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 290
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 292
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    .line 293
    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "deltaDistance"    # F

    .line 187
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Lcom/android/server/policy/OPEdgeEffect;->onPull(FF)V

    .line 188
    return-void
.end method

.method public onPull(FF)V
    .locals 7
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 204
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 205
    .local v0, "now":J
    iput p2, p0, Lcom/android/server/policy/OPEdgeEffect;->mTargetDisplacement:F

    .line 206
    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-wide v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    sub-long v2, v0, v2

    long-to-float v2, v2

    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 210
    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    .line 212
    :cond_1
    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 214
    iput-wide v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    .line 215
    const/high16 v2, 0x43270000    # 167.0f

    iput v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    .line 217
    iget v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    add-float/2addr v2, p1

    iput v2, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    .line 219
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 220
    .local v2, "absdd":F
    const v3, 0x3e19999a    # 0.15f

    iget v5, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    .line 223
    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    .line 224
    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput v4, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    goto :goto_0

    .line 230
    :cond_2
    iput p1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    iput p1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    .line 233
    :goto_0
    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 234
    iget v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v3, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    .line 235
    return-void
.end method

.method public onRelease()V
    .locals 3

    .line 244
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mPullDistance:F

    .line 246
    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mState:I

    .line 251
    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlpha:F

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaStart:F

    .line 252
    iget v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleY:F

    iput v1, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYStart:F

    .line 254
    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowAlphaFinish:F

    .line 255
    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mGlowScaleYFinish:F

    .line 257
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mStartTime:J

    .line 258
    const/high16 v0, 0x44160000    # 600.0f

    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mDuration:F

    .line 259
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .line 301
    iget-object v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 302
    return-void
.end method

.method public setSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 141
    int-to-float v0, p1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    sget v2, Lcom/android/server/policy/OPEdgeEffect;->SIN:F

    div-float/2addr v0, v2

    .line 142
    .local v0, "r":F
    sget v2, Lcom/android/server/policy/OPEdgeEffect;->COS:F

    mul-float/2addr v2, v0

    .line 143
    .local v2, "y":F
    sub-float v3, v0, v2

    .line 144
    .local v3, "h":F
    int-to-float v4, p2

    mul-float/2addr v4, v1

    sget v1, Lcom/android/server/policy/OPEdgeEffect;->SIN:F

    div-float/2addr v4, v1

    .line 145
    .local v4, "or":F
    sget v1, Lcom/android/server/policy/OPEdgeEffect;->COS:F

    mul-float/2addr v1, v4

    .line 146
    .local v1, "oy":F
    sub-float v5, v4, v1

    .line 148
    .local v5, "oh":F
    iput v0, p0, Lcom/android/server/policy/OPEdgeEffect;->mRadius:F

    .line 149
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

    .line 151
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

    .line 152
    return-void
.end method
