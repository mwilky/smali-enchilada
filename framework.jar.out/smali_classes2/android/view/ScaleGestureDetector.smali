.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    nop

    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v1, p0, v0}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x12

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    invoke-virtual {p0, v3}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    :cond_1
    const/16 v2, 0x16

    if-le v1, v2, :cond_2

    invoke-virtual {p0, v3}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    :cond_2
    return-void
.end method

.method static synthetic access$002(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic access$102(Landroid/view/ScaleGestureDetector;F)F
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method static synthetic access$202(Landroid/view/ScaleGestureDetector;I)I
    .locals 0

    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method private inAnchoredScaleMode()Z
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 5

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v0, :cond_2

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v1, v4, v1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    add-float/2addr v2, v3

    goto :goto_1

    :cond_4
    sub-float/2addr v2, v3

    :goto_1
    return v2

    :cond_5
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float v2, v0, v1

    nop

    :cond_6
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, v1, v3}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iput-wide v4, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    iget-boolean v4, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v5

    and-int/lit8 v5, v5, 0x20

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    iget v7, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    if-nez v5, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    if-eq v2, v6, :cond_5

    const/4 v9, 0x3

    if-eq v2, v9, :cond_5

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v9, v3

    goto :goto_3

    :cond_5
    :goto_2
    move v9, v6

    :goto_3
    const/4 v10, 0x0

    if-eqz v2, :cond_6

    if-eqz v9, :cond_9

    :cond_6
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v11, :cond_7

    iget-object v11, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v11, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_4

    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-eqz v11, :cond_8

    if-eqz v9, :cond_8

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    iput v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    :cond_8
    :goto_4
    if-eqz v9, :cond_9

    return v6

    :cond_9
    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v11, :cond_a

    iget-boolean v11, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    if-eqz v11, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v11

    if-nez v11, :cond_a

    if-nez v9, :cond_a

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v11

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    iput v11, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    iput v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_a
    const/4 v10, 0x6

    if-eqz v2, :cond_c

    if-eq v2, v10, :cond_c

    const/4 v11, 0x5

    if-eq v2, v11, :cond_c

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    move v11, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v11, v6

    :goto_6
    if-ne v2, v10, :cond_d

    move v10, v6

    goto :goto_7

    :cond_d
    move v10, v3

    :goto_7
    if-eqz v10, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v12

    goto :goto_8

    :cond_e
    const/4 v12, -0x1

    :goto_8
    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v10, :cond_f

    add-int/lit8 v15, v4, -0x1

    goto :goto_9

    :cond_f
    move v15, v4

    :goto_9
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v16

    if-eqz v16, :cond_11

    iget v8, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v16

    cmpg-float v16, v16, v3

    if-gez v16, :cond_10

    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    :cond_10
    const/4 v6, 0x0

    iput-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_c

    :cond_11
    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_13

    if-ne v12, v3, :cond_12

    goto :goto_b

    :cond_12
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    add-float/2addr v13, v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v14, v6

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_13
    int-to-float v3, v15

    div-float v8, v13, v3

    int-to-float v3, v15

    div-float v3, v14, v3

    :goto_c
    const/4 v6, 0x0

    const/16 v16, 0x0

    move/from16 v17, v16

    move/from16 v16, v6

    const/4 v6, 0x0

    :goto_d
    if-ge v6, v4, :cond_15

    if-ne v12, v6, :cond_14

    move/from16 v19, v4

    goto :goto_e

    :cond_14
    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v18

    move/from16 v19, v4

    sub-float v4, v18, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v16, v16, v4

    invoke-virtual {v1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    add-float v17, v17, v4

    :goto_e
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v19

    goto :goto_d

    :cond_15
    move/from16 v19, v4

    int-to-float v4, v15

    div-float v4, v16, v4

    int-to-float v6, v15

    div-float v6, v17, v6

    const/high16 v18, 0x40000000    # 2.0f

    mul-float v1, v4, v18

    move/from16 v20, v4

    mul-float v4, v6, v18

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v18

    if-eqz v18, :cond_16

    move/from16 v18, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v9

    move/from16 v24, v10

    goto :goto_f

    :cond_16
    move/from16 v21, v5

    move/from16 v22, v6

    float-to-double v5, v1

    move/from16 v23, v9

    move/from16 v24, v10

    float-to-double v9, v4

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    double-to-float v5, v5

    move/from16 v18, v5

    :goto_f
    move/from16 v5, v18

    iget-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v8, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    iput v3, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-nez v9, :cond_18

    iget-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v9, :cond_18

    iget v9, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    int-to-float v9, v9

    cmpg-float v9, v5, v9

    if-ltz v9, :cond_17

    if-eqz v11, :cond_18

    :cond_17
    iget-object v9, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v9, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    const/4 v9, 0x0

    iput-boolean v9, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_18
    if-eqz v11, :cond_19

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v9

    if-eqz v9, :cond_1a

    iget v9, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    goto :goto_10

    :cond_1a
    iget v9, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    :goto_10
    iget-boolean v10, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-nez v10, :cond_1d

    int-to-float v10, v9

    cmpl-float v10, v5, v10

    if-ltz v10, :cond_1d

    if-nez v6, :cond_1c

    iget v10, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    sub-float v10, v5, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move/from16 v25, v3

    iget v3, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    int-to-float v3, v3

    cmpl-float v3, v10, v3

    if-lez v3, :cond_1b

    goto :goto_11

    :cond_1b
    move/from16 v27, v6

    move/from16 v26, v7

    goto :goto_12

    :cond_1c
    move/from16 v25, v3

    :goto_11
    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v27, v6

    move/from16 v26, v7

    iget-wide v6, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v6, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    iget-object v3, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v3, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    iput-boolean v3, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    goto :goto_12

    :cond_1d
    move/from16 v25, v3

    move/from16 v27, v6

    move/from16 v26, v7

    :goto_12
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1f

    iput v1, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v4, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v5, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    const/4 v3, 0x1

    iget-boolean v6, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    if-eqz v6, :cond_1e

    iget-object v6, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v6, v0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v3

    :cond_1e
    if-eqz v3, :cond_1f

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    iget v6, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iput v6, v0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    iget-wide v6, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v6, v0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    :cond_1f
    const/4 v3, 0x1

    return v3
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return-void
.end method
