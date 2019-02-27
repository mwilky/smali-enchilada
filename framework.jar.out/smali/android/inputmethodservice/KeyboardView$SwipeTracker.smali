.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .locals 0

    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 11

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    :goto_0
    const-wide/16 v4, 0x0

    const/4 v6, 0x4

    if-ge v0, v6, :cond_2

    aget-wide v7, v1, v0

    cmp-long v7, v7, v4

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    aget-wide v4, v1, v0

    const-wide/16 v6, 0xc8

    sub-long v6, p3, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    move v3, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v0, v6, :cond_3

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-ne v3, v0, :cond_4

    add-int/lit8 v3, v3, -0x1

    :cond_4
    iget-object v7, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    iget-object v8, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    if-ltz v3, :cond_5

    add-int/lit8 v9, v3, 0x1

    rsub-int/lit8 v10, v3, 0x4

    add-int/lit8 v10, v10, -0x1

    invoke-static {v7, v9, v7, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v9, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, v9, v1, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v3, 0x1

    sub-int/2addr v0, v2

    :cond_5
    aput p1, v7, v0

    aput p2, v8, v0

    aput-wide p3, v1, v0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v6, :cond_6

    aput-wide v4, v1, v0

    :cond_6
    return-void
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4, v0, v1}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    return-void
.end method

.method public clear()V
    .locals 4

    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    iget-object v4, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    iget-object v5, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v6, 0x0

    aget v7, v3, v6

    aget v8, v4, v6

    aget-wide v9, v5, v6

    const/4 v11, 0x0

    const/4 v12, 0x0

    nop

    :goto_0
    const/4 v13, 0x4

    if-ge v6, v13, :cond_1

    aget-wide v13, v5, v6

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-nez v13, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v13, 0x1

    :goto_2
    if-ge v13, v6, :cond_5

    aget-wide v15, v5, v13

    sub-long v14, v15, v9

    long-to-int v14, v14

    if-nez v14, :cond_2

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    goto :goto_5

    :cond_2
    aget v15, v3, v13

    sub-float/2addr v15, v7

    move-object/from16 v17, v3

    int-to-float v3, v14

    div-float v3, v15, v3

    move-object/from16 v18, v5

    int-to-float v5, v1

    mul-float/2addr v3, v5

    const/4 v5, 0x0

    cmpl-float v16, v11, v5

    const/high16 v5, 0x3f000000    # 0.5f

    if-nez v16, :cond_3

    move v11, v3

    goto :goto_3

    :cond_3
    add-float v16, v11, v3

    mul-float v11, v16, v5

    :goto_3
    aget v16, v4, v13

    sub-float v16, v16, v8

    int-to-float v15, v14

    div-float v15, v16, v15

    int-to-float v5, v1

    mul-float/2addr v15, v5

    const/4 v3, 0x0

    cmpl-float v3, v12, v3

    if-nez v3, :cond_4

    move v3, v15

    :goto_4
    move v12, v3

    goto :goto_5

    :cond_4
    add-float v3, v12, v15

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    goto :goto_4

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v3, v17

    move-object/from16 v5, v18

    goto :goto_2

    :cond_5
    move-object/from16 v17, v3

    move-object/from16 v18, v5

    const/4 v3, 0x0

    cmpg-float v5, v11, v3

    if-gez v5, :cond_6

    neg-float v3, v2

    invoke-static {v11, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_6

    :cond_6
    invoke-static {v11, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_6
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    const/4 v3, 0x0

    cmpg-float v3, v12, v3

    if-gez v3, :cond_7

    neg-float v3, v2

    invoke-static {v12, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_7

    :cond_7
    invoke-static {v12, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    :goto_7
    iput v3, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return-void
.end method

.method public getXVelocity()F
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
