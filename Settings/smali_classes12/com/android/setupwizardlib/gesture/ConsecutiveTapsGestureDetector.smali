.class public final Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;
.super Ljava/lang/Object;
.source "ConsecutiveTapsGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;
    }
.end annotation


# instance fields
.field private final mConsecutiveTapTimeout:I

.field private final mConsecutiveTapTouchSlopSquare:I

.field private mConsecutiveTapsCounter:I

.field private final mListener:Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;

.field private mPreviousTapEvent:Landroid/view/MotionEvent;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    iput-object p1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mListener:Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;

    iput-object p2, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v0

    mul-int v1, v0, v0

    iput v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapTouchSlopSquare:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapTimeout:I

    return-void
.end method

.method private isConsecutiveTap(Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-double v2, v0

    iget-object v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v0, v4

    float-to-double v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iget-object v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    mul-double v8, v2, v2

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    iget v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapTouchSlopSquare:I

    int-to-double v10, v0

    cmpg-double v0, v8, v10

    if-gtz v0, :cond_1

    iget v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapTimeout:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-gez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    aget v5, v2, v1

    aget v6, v2, v3

    iget-object v7, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v2, v1

    iget-object v8, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->isConsecutiveTap(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    :goto_0
    iget-object v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mListener:Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;

    iget v3, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    invoke-interface {v1, v3}, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector$OnConsecutiveTapsListener;->onConsecutiveTaps(I)V

    goto :goto_1

    :cond_1
    iput v3, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    :goto_1
    iget-object v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mPreviousTapEvent:Landroid/view/MotionEvent;

    :cond_3
    return-void
.end method

.method public resetCounter()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/gesture/ConsecutiveTapsGestureDetector;->mConsecutiveTapsCounter:I

    return-void
.end method
